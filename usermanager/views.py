# _*_coding:utf-8_*_
from django.shortcuts import render
from django.http import HttpResponse
from django.views.decorators.csrf import ensure_csrf_cookie
from usermanager import models
from django.core import serializers
from django.db import connection
import json
import time
import hashlib
import random

@ensure_csrf_cookie
# 登录
def login(request):
    cursor = connection.cursor()
    if request.method == "POST":
        phone = request.POST.get("phone")
        password = request.POST.get("password")
        
        m = hashlib.md5()
        b = password.encode(encoding='utf-8')
        m.update(b)
        str_md5 = m.hexdigest()
        # cursor.execute("select * from s_member where phone=%s",[phone])
        # rows = cursor.fetchone()
        # print(rows)
        '''for row in rows:
            print(row)
        '''
        user_list = models.SMember.objects.filter(phone=phone,password=str_md5)
        # print(user_list[0].phone,user_list[0].realname,user_list[0].jwt)
        # list = serializers.serialize("json",user_list)
        if len(user_list) == 0:
            ret = {"code": 2, 'msg': '账号或密码错误'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        if user_list[0].status == 0:
            ret = {"code": 2, 'msg': '该账号已被封号，请联系管理员'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        
        now = time.time()
        ip = request.META['REMOTE_ADDR']
        sql = 'insert into s_login_log(id,nickname,phone,ip,createtime) values(%s,%s,%s,%s,%s)'
        cursor.execute(sql,[user_list[0].keyid,user_list[0].nickname,user_list[0].phone,ip,now])
        
        num = user_list[0].login_num + 1
        models.SMember.objects.filter(phone=phone).update(login_num=num)
        
        request.session['user_id'] = user_list[0].keyid
        request.session['user_type'] = user_list[0].type
        request.session['active_code'] = user_list[0].active_code
        
        ret = {"code": 1, 'msg': "登录成功"}
        return HttpResponse(json.dumps(ret), content_type="application/json")
    return render(request,'login.html')
# 忘记密码
def forgetPwd(request):
    cursor = connection.cursor()
    if request.method == "POST":
        phone = request.POST.get("phone")
        password = request.POST.get("password")
        yzm = request.POST.get("yzm")
        
        cursor.execute("select * from s_member where phone=%s",[phone])
        rows = cursor.fetchone()

        if rows is None:
            ret = {"code": 2, 'msg': '账号不存在'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        if yzm != '1234':
            ret = {"code": 2, 'msg': '验证码错误'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        
        m = hashlib.md5()
        b = password.encode(encoding='utf-8')
        m.update(b)
        str_md5 = m.hexdigest()
        models.SMember.objects.filter(phone=phone).update(password=str_md5)
        
        ret = {"code": 1, 'msg': "密码找回成功"}
        return HttpResponse(json.dumps(ret), content_type="application/json")
    return render(request,'forgetPwd.html')
# 注册
def reg(request):
    cursor = connection.cursor()
    if request.method == "POST":
        phone = request.POST.get("phone")
        password = request.POST.get("password")
        yzm = request.POST.get("yzm")
        recommend = request.POST.get("recommend")
        realname = request.POST.get("realname")
        
        cursor.execute("select * from s_member where phone=%s",[phone])
        rows = cursor.fetchone()

        if rows:
            ret = {"code": 2, 'msg': '手机号已经被注册了'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        if yzm != '1234':
            ret = {"code": 2, 'msg': '验证码错误'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        
        pid = 0
        pid2 = 0
        pid3 = 0
        pid4 = 0
        pid5 = 0
        pid6 = 0
        pid7 = 0
        pid8 = 0
        superior = ''
        if recommend != '':
            # cursor.execute("select * from s_member where invite=%s",[recommend])
            # father = cursor.fetchone()
            # print(father)
            
            father = models.SMember.objects.filter(invite=recommend)
            
            if father is None:
                ret = {"code": 2, 'msg': '注册推荐码错误'}
                return HttpResponse(json.dumps(ret), content_type="application/json")
            pid = father[0].keyid
            pid2 = father[0].pid
            pid3 = father[0].pid2
            pid4 = father[0].pid3
            pid5 = father[0].pid4
            pid6 = father[0].pid5
            pid7 = father[0].pid6
            pid8 = father[0].pid7
            superior = father[0].phone
            tnum = father[0].tj_num + 1
        m = hashlib.md5()
        b = password.encode(encoding='utf-8')
        m.update(b)
        str_md5 = m.hexdigest()
        now = time.time()
        ip = request.META['REMOTE_ADDR']
        invite = random.randint(10000, 99999)
        sql = 'insert into s_member(invite,phone,nickname,realname,password,pid,pid2,pid3,pid4,pid5,pid6,pid7,pid8,superior,createtime,active_code) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
        cursor.execute(sql,[invite,phone,realname,realname,str_md5,pid,pid2,pid3,pid4,pid5,pid6,pid7,pid8,superior,now,0])
        if pid > 0 :
            models.SMember.objects.filter(keyid=pid).update(tj_num=tnum)
            new = models.SMember.objects.filter(phone=phone)
            dotdstr(1,pid,new[0].keyid)
        ret = {"code": 1, 'msg': "注册成功"}
        return HttpResponse(json.dumps(ret), content_type="application/json")
    return render(request,'reg.html')
# 退出登录
def logout(request):
    request.session.delete("user_id")
    request.session.delete("user_type")
    request.session.delete("active_code")
    ret = {"code": 1, 'msg': "退出登录成功"}
    return HttpResponse(json.dumps(ret), content_type="application/json")
# 首页
def index(request):
    uid = request.session['user_id']
    user = models.SMember.objects.filter(keyid=uid)
    ulist = {}
    ulist['realname'] = user[0].realname
    ulist['level'] = user[0].level
    return render(request,'index.html',{'info': ulist})
# 使用激活码激活
def use_active(request):
    cursor = connection.cursor()
    uid = request.session['user_id']
    if request.method == "POST":
        active_code = request.POST.get("active_code")
        
        user = models.SMember.objects.filter(keyid=uid)
        active = models.SActiveCode.objects.filter(active_code=active_code)
        if user is None:
            ret = {"code": 2, 'msg': '用户不存在'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        if user[0].active_code != '0':
            ret = {"code": 2, 'msg': '该用户已激活'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        if len(active) == 0:
            ret = {"code": 2, 'msg': '激活码输入错误'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        if active[0].is_use == 1:
            ret = {"code": 2, 'msg': '该激活码已使用'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        now = time.time()
        models.SMember.objects.filter(keyid=uid).update(active_code=active_code)
        models.SActiveCode.objects.filter(active_code=active_code).update(uid=uid,phone=user[0].phone,is_use=1,use_time=now)
        
        request.session['active_code'] = active_code
        
        ret = {"code": 1, 'msg': "激活成功"}
        return HttpResponse(json.dumps(ret), content_type="application/json")
# 会员升级申请
def user_level(request):
    cursor = connection.cursor()
    uid = request.session['user_id']
    if request.method == "POST":
        user = models.SMember.objects.filter(keyid=uid)
        if len(user) == 0:
            ret = {"code": 3, 'msg': '账号异常，请重新登录'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        if user[0].level >= 9:
            ret = {"code": 2, 'msg': '您当前已达最高等级'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        res = level_info(uid)
        if res <= 0:
            ret = {"code": 2, 'msg': '您暂未满足升级条件'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        nlevel = user[0].level + 1;
        list = models.SLevelApply.objects.filter(uid=uid,level=nlevel)
        if len(list) > 0 :
            ret = {"code": 2, 'msg': '您已申请过当前等级升级，请勿重复申请'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        
        now = time.time()
        sql = 'insert into s_level_apply(uid,phone,level,status,createtime) values(%s,%s,%s,%s,%s)'
        cursor.execute(sql,[uid,user[0].phone,nlevel,0,now])
        
        ret = {"code": 1, 'msg': "申请成功"}
        return HttpResponse(json.dumps(ret), content_type="application/json")
#我的信息
def member_info(request):
    uid = request.session['user_id']
    user = models.SMember.objects.filter(keyid=uid)
    ulist = {}
    ulist['realname'] = user[0].realname
    ulist['level'] = user[0].level
    ulist['phone'] = user[0].phone
    ulist['wx_name'] = user[0].wx_name
    ulist['zfb'] = user[0].zfb
    ulist['qq'] = user[0].qq
    return render(request,'member_info.html',{'info': ulist})
#完善信息
def member_edit(request):
    uid = request.session['user_id']
    if request.method == "POST":
        realname = request.POST.get("realname")
        wx_name = request.POST.get("wx_name")
        zfb = request.POST.get("zfb")
        qq = request.POST.get("qq")
        models.SMember.objects.filter(keyid=uid).update(realname=realname,wx_name=wx_name,zfb=zfb,qq=qq)
        ret = {"code": 1, 'msg': "设置成功"}
        return HttpResponse(json.dumps(ret), content_type="application/json")
    user = models.SMember.objects.filter(keyid=uid)
    ulist = {}
    ulist['realname'] = user[0].realname
    ulist['wx_name'] = user[0].wx_name
    ulist['zfb'] = user[0].zfb
    ulist['qq'] = user[0].qq
    return render(request,'member_edit.html',{'info': ulist})
#修改密码
def change_pass(request):
    uid = request.session['user_id']
    if request.method == "POST":
        pwd = request.POST.get("pwd")
        newpwd = request.POST.get("newpwd")
        user = models.SMember.objects.filter(keyid=uid)
        if len(user) == 0:
            ret = {"code": 3, 'msg': '账号异常，请重新登录'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        m = hashlib.md5()
        b = pwd.encode(encoding='utf-8')
        m.update(b)
        pwd_md5 = m.hexdigest()
        
        n = hashlib.md5()
        c = newpwd.encode(encoding='utf-8')
        n.update(c)
        newpwd_md5 = n.hexdigest()
        if user[0].password != pwd_md5:
            ret = {"code": 2, 'msg': '原密码错误'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        models.SMember.objects.filter(keyid=uid).update(password=newpwd_md5)
        request.session.delete("user_id")
        request.session.delete("user_type")
        request.session.delete("active_code")
        ret = {"code": 1, 'msg': "修改成功"}
        return HttpResponse(json.dumps(ret), content_type="application/json")
    return render(request,'change_pass.html')
#总部管理--设置会员等级
def level_config(request):
    if request.method == "POST":
        zt1 = request.POST.get("zt1")
        td1 = request.POST.get("td1")
        zt2 = request.POST.get("zt2")
        td2 = request.POST.get("td2")
        zt3 = request.POST.get("zt3")
        td3 = request.POST.get("td3")
        zt4 = request.POST.get("zt4")
        td4 = request.POST.get("td4")
        zt5 = request.POST.get("zt5")
        td5 = request.POST.get("td5")
        zt6 = request.POST.get("zt6")
        td6 = request.POST.get("td6")
        zt7 = request.POST.get("zt7")
        td7 = request.POST.get("td7")
        zt8 = request.POST.get("zt8")
        td8 = request.POST.get("td8")
        zt9 = request.POST.get("zt9")
        td9 = request.POST.get("td9")
        
        models.SGameConfig.objects.filter(keyid=1).update(zt1=zt1,td1=td1,zt2=zt2,td2=td2,zt3=zt3,td3=td3,zt4=zt4,td4=td4,zt5=zt5,td5=td5,zt6=zt6,td6=td6,zt7=zt7,td7=td7,zt8=zt8,td8=td8,zt9=zt9,td9=td9)
        ret = {"code": 1, 'msg': "设置成功"}
        return HttpResponse(json.dumps(ret), content_type="application/json")
    config = models.SGameConfig.objects.filter(keyid=1)
    return render(request,'level_config.html',{'config': config[0]})
#总部管理--运营中心列表
def yy_list(request):
    list = models.SMember.objects.filter(type=1)
    return render(request,'yy_list.html',{'list': list})
#封号/解封
def member_state(request):
    if request.method == "POST":
        mid = request.POST.get("mid")
        user = models.SMember.objects.filter(keyid=mid)
        if user[0].status == 1:
            models.SMember.objects.filter(keyid=mid).update(status=0)
            ret = {"code": 1, 'msg': '操作成功','data': 0}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        else :
            models.SMember.objects.filter(keyid=mid).update(status=1)
            ret = {"code": 1, 'msg': "操作成功",'data': 1}
            return HttpResponse(json.dumps(ret), content_type="application/json")
#查看会员信息
def view_user_info(request,mid):
    list = {}
    user = models.SMember.objects.filter(keyid=mid)
    pid = user[0].pid
    if pid > 0:
        father = models.SMember.objects.filter(keyid=pid)
        if len(father) > 0:
            list['sjname'] = father[0].realname
    list['keyid'] = user[0].keyid
    list['realname'] = user[0].realname
    list['phone'] = user[0].phone
    list['wx_name'] = user[0].wx_name
    list['zfb'] = user[0].zfb
    list['qq'] = user[0].qq
    list['level'] = user[0].level
    return render(request,'view_user_info.html',{'list': list})
#修改会员等级
def edit_level(request):
    if request.method == "POST":
        mid = request.POST.get("mid")
        level = request.POST.get("level")
        user = models.SMember.objects.filter(keyid=mid)
        if len(user) == 0:
            ret = {"code": 2, 'msg': '该用户不存在'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        models.SMember.objects.filter(keyid=mid).update(level=level)
        ret = {"code": 1, 'msg': "操作成功"}
        return HttpResponse(json.dumps(ret), content_type="application/json")
#总部管理--会员列表
def user_list(request):
    list = models.SMember.objects.filter(type=0)
    return render(request,'user_list.html',{'list': list})
#生成激活码
def active(request):
    cursor = connection.cursor()
    if request.method == "POST":
        num = int(request.POST.get("num"))
        for i in range(0,num):
            code = random.randint(100000,999999);
            sql = 'insert into s_active_code(active_code,is_use) values(%s,%s)'
            cursor.execute(sql,[code,0])
        ret = {"code": 1, 'msg': "激活码生成成功"}
        return HttpResponse(json.dumps(ret), content_type="application/json")
    return render(request,'active.html')
#总部管理--激活码管理
def active_list(request):
    list = models.SActiveCode.objects.all()
    for date in list:
        if date.use_time != None:
            timeArray = time.localtime(date.use_time)
            otherStyleTime = time.strftime("%Y-%m-%d %H:%M:%S", timeArray)
            date.use_time = otherStyleTime
        else:
            date.use_time = ''
        if date.phone is None:
            date.phone = ''
    return render(request,'active_list.html',{'list': list})
#总部管理--添加运营中心
def yy_add(request):
    cursor = connection.cursor()
    if request.method == "POST":
        realname = request.POST.get("realname")
        pwd = request.POST.get("pwd")
        phone = request.POST.get("phone")
        
        cursor.execute("select * from s_member where phone=%s",[phone])
        rows = cursor.fetchone()

        if rows:
            ret = {"code": 2, 'msg': '手机号已经被注册了'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        
        m = hashlib.md5()
        b = pwd.encode(encoding='utf-8')
        m.update(b)
        str_md5 = m.hexdigest()
        now = time.time()
        invite = random.randint(10000, 99999)
        
        sql = 'insert into s_member(invite,phone,nickname,realname,password,type,createtime) values(%s,%s,%s,%s,%s,%s,%s)'
        cursor.execute(sql,[invite,phone,realname,realname,str_md5,1,now])
        
        ret = {"code": 1, 'msg': "添加成功"}
        return HttpResponse(json.dumps(ret), content_type="application/json")
    return render(request,'yy_add.html')
#运营中心--会员列表
def yy_user_list(request):
    uid = request.session['user_id']
    td_str = team_id(uid)
    list = models.SMember.objects.filter(keyid__in=td_str)
    return render(request,'yy_user_list.html',{'list': list})
#运营中心--会员等级申请列表
def apply_list(request):
    uid = request.session['user_id']
    td_str = team_id(uid)
    list = models.SLevelApply.objects.filter(uid__in=td_str,status=0)
    return render(request,'apply_list.html',{'list': list})
#会员审核  1--同意  2--拒绝
def apply_operate(request):
    if request.method == "POST":
        mid = request.POST.get("mid")
        type = int(request.POST.get("type"))
        
        info = models.SLevelApply.objects.filter(id=mid)
        
        if info[0].status != 0:
            ret = {"code": 2, 'msg': '该申请已处理'}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        if type == 1:
            models.SLevelApply.objects.filter(id=mid).update(status=1)
            models.SMember.objects.filter(keyid=info[0].uid).update(level=info[0].level)
            ret = {"code": 1, 'msg': "操作成功"}
            return HttpResponse(json.dumps(ret), content_type="application/json")
        else:
            models.SLevelApply.objects.filter(id=mid).update(status=2)
            ret = {"code": 1, 'msg': "操作成功"}
            return HttpResponse(json.dumps(ret), content_type="application/json")
#上级推荐人信息
def fmember_info(request):
    uid = request.session['user_id']
    user = models.SMember.objects.filter(keyid=uid)
    fuser = models.SMember.objects.filter(keyid=user[0].pid)
    ulist = {}
    ulist['realname'] = fuser[0].realname
    ulist['level'] = fuser[0].level
    ulist['phone'] = fuser[0].phone
    ulist['wx_name'] = fuser[0].wx_name
    ulist['zfb'] = fuser[0].zfb
    ulist['qq'] = fuser[0].qq
    return render(request,'fmember_info.html',{'info': ulist})
#我的团队
def team_info(request):
    cursor = connection.cursor()
    uid = request.session['user_id']
    user = models.SMember.objects.filter(keyid=uid)
    info = {}
    info['td_num'] = user[0].td_num
    info['tj_num'] = user[0].tj_num
    cursor.execute("select count(*) as count from s_member where pid2=%s",[user[0].keyid])
    rows = cursor.fetchone()
    
    cursor.execute("select count(*) as count from s_member where pid3=%s",[user[0].keyid])
    rows3 = cursor.fetchone()
    
    info['tj_num2'] = rows[0]
    info['tj_num3'] = rows3[0]
    list = models.SMember.objects.filter(pid=user[0].keyid)
    list2 = models.SMember.objects.filter(pid2=user[0].keyid)
    list3 = models.SMember.objects.filter(pid3=user[0].keyid)
    return render(request,'team_info.html',{'info':info,'list':list,'list2':list2,'list3':list3})
#判断会员是否达到升级条件
def level_info(uid):
    user = models.SMember.objects.filter(keyid=uid)
    config = models.SGameConfig.objects.filter(keyid=1)
    tj_num = user[0].tj_num
    td_num = user[0].td_num
    if td_num >= config[0].td9 and  tj_num >= config[0].zt9 :
        level = 9
    elif td_num >= config[0].td8 and  tj_num >= config[0].zt8 :
        level = 8
    elif td_num >= config[0].td7 and  tj_num >= config[0].zt7 :
        level = 7
    elif td_num >= config[0].td6 and  tj_num >= config[0].zt6 :
        level = 6
    elif td_num >= config[0].td5 and  tj_num >= config[0].zt5 :
        level = 5
    elif td_num >= config[0].td4 and  tj_num >= config[0].zt4 :
        level = 4
    elif td_num >= config[0].td3 and  tj_num >= config[0].zt3 :
        level = 3
    elif td_num >= config[0].td2 and  tj_num >= config[0].zt2 :
        level = 2
    elif td_num >= config[0].td1 and  tj_num >= config[0].zt1 :
        level = 1
    else :
        level = 0
    return level;
# 团队关系
def dotdstr(num,f_uid,nowid):
    father = models.SMember.objects.filter(keyid=f_uid)
    if father[0].td_str == 'null':
        td_str = str(nowid)+'_'+str(num)
    else:
        td_str = father[0].td_str+","+str(nowid)+'_'+str(num)
    td_num = father[0].td_num + 1
    models.SMember.objects.filter(keyid=f_uid).update(td_str=td_str,td_num=td_num)
    if father[0].pid > 0:
        num = num + 1
        dotdstr(num,father[0].pud,nowid)
# 获取团队id
def team_id(uid):
    user = models.SMember.objects.filter(keyid=uid)
    str = user[0].td_str
    id = ''
    str_arr = str.split(',')
    arr = {}
    for k,v in enumerate(str_arr):
        aa = v.split('_')
        arr[k] = aa
    data = {}
    for key,val in enumerate(arr):
        data[key] = arr[val][0]
    res = tuple(data.values())
    return list(res)