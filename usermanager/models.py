# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class SActiveCode(models.Model):
    active_code = models.CharField(max_length=255, blank=True, null=True)
    uid = models.IntegerField(blank=True, null=True)
    is_use = models.IntegerField(blank=True, null=True)
    phone = models.CharField(max_length=255, blank=True, null=True)
    use_time = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 's_active_code'


class SAdmin(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=32)
    encrypt = models.CharField(max_length=6)
    lastloginip = models.CharField(max_length=255, blank=True, null=True)
    lastlogintime = models.PositiveIntegerField()
    email = models.CharField(max_length=40)
    mobile = models.CharField(max_length=11)
    realname = models.CharField(max_length=50)
    openid = models.CharField(max_length=255)
    status = models.IntegerField()
    updatetime = models.IntegerField()

    class Meta:
        managed = True
        db_table = 's_admin'


class SAdminGroup(models.Model):
    name = models.CharField(max_length=50)
    description = models.TextField(blank=True, null=True)
    rules = models.CharField(max_length=500)
    listorder = models.PositiveSmallIntegerField()
    updatetime = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 's_admin_group'


class SAdminGroupAccess(models.Model):
    uid = models.PositiveIntegerField()
    group_id = models.PositiveIntegerField()

    class Meta:
        managed = True
        db_table = 's_admin_group_access'
        unique_together = (('uid', 'group_id'),)


class SAdminLog(models.Model):
    m = models.CharField(max_length=15)
    c = models.CharField(max_length=20)
    a = models.CharField(max_length=20)
    querystring = models.CharField(max_length=255)
    userid = models.PositiveIntegerField()
    username = models.CharField(max_length=20)
    ip = models.CharField(max_length=255)
    time = models.IntegerField()

    class Meta:
        managed = True
        db_table = 's_admin_log'


class SGameConfig(models.Model):
    keyid = models.AutoField(primary_key=True)
    zt1 = models.IntegerField(blank=True, null=True)
    td1 = models.IntegerField(blank=True, null=True)
    zt2 = models.IntegerField(blank=True, null=True)
    td2 = models.IntegerField(blank=True, null=True)
    zt3 = models.IntegerField(blank=True, null=True)
    td3 = models.IntegerField(blank=True, null=True)
    zt4 = models.IntegerField(blank=True, null=True)
    td4 = models.IntegerField(blank=True, null=True)
    zt5 = models.IntegerField(blank=True, null=True)
    td5 = models.IntegerField(blank=True, null=True)
    zt6 = models.IntegerField(blank=True, null=True)
    td6 = models.IntegerField(blank=True, null=True)
    zt7 = models.IntegerField(blank=True, null=True)
    td7 = models.IntegerField(blank=True, null=True)
    zt8 = models.IntegerField(blank=True, null=True)
    td8 = models.IntegerField(blank=True, null=True)
    zt9 = models.IntegerField(blank=True, null=True)
    td9 = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 's_game_config'


class SLevelApply(models.Model):
    uid = models.IntegerField(blank=True, null=True)
    phone = models.CharField(max_length=255, blank=True, null=True)
    level = models.IntegerField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    createtime = models.CharField(max_length=255, blank=True, null=True)
    pstatus = models.IntegerField(blank=True, null=True)
    pid = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 's_level_apply'


class SLoginLog(models.Model):
    keyid = models.AutoField(primary_key=True)
    id = models.CharField(max_length=255, blank=True, null=True)
    nickname = models.CharField(max_length=255, blank=True, null=True)
    phone = models.CharField(max_length=255, blank=True, null=True)
    ip = models.CharField(max_length=255, blank=True, null=True)
    createtime = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 's_login_log'


class SMember(models.Model):
    keyid = models.AutoField(primary_key=True)
    invite = models.CharField(max_length=255, blank=True, null=True)
    phone = models.CharField(max_length=255, blank=True, null=True)
    nickname = models.CharField(max_length=255, blank=True, null=True)
    realname = models.CharField(max_length=255, blank=True, null=True)
    password = models.CharField(max_length=255, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    superior = models.CharField(max_length=255, blank=True, null=True)
    td_str = models.TextField(blank=True, null=True)
    td_num = models.IntegerField(blank=True, null=True)
    tj_num = models.IntegerField(blank=True, null=True)
    pid = models.IntegerField(blank=True, null=True)
    pid2 = models.IntegerField(blank=True, null=True)
    pid3 = models.IntegerField(blank=True, null=True)
    pid4 = models.IntegerField(blank=True, null=True)
    pid5 = models.IntegerField(blank=True, null=True)
    pid6 = models.IntegerField(blank=True, null=True)
    pid7 = models.IntegerField(blank=True, null=True)
    pid8 = models.IntegerField(blank=True, null=True)
    jwt = models.CharField(max_length=255, blank=True, null=True)
    login_num = models.IntegerField(blank=True, null=True)
    level = models.IntegerField(blank=True, null=True)
    type = models.IntegerField(blank=True, null=True)
    createtime = models.IntegerField(blank=True, null=True)
    lastlogin = models.IntegerField(blank=True, null=True)
    jihuo_num = models.IntegerField(blank=True, null=True)
    active_code = models.CharField(max_length=255, blank=True, null=True)
    wx_name = models.CharField(max_length=255, blank=True, null=True)
    zfb = models.CharField(max_length=255, blank=True, null=True)
    qq = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 's_member'


class STest(models.Model):
    content = models.TextField(blank=True, null=True)
    type = models.CharField(max_length=100, blank=True, null=True)
    day = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 's_test'


class SYzm(models.Model):
    keyid = models.AutoField(primary_key=True)
    phone = models.CharField(max_length=255, blank=True, null=True)
    code = models.CharField(max_length=255, blank=True, null=True)
    createtime = models.IntegerField(blank=True, null=True)
    day = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 's_yzm'
