"""manager URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/dev/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from usermanager import views as user_views

urlpatterns = [
    path('login/',user_views.login),
    path('index/',user_views.index),
    path('forgetPwd/',user_views.forgetPwd),
    path('reg/',user_views.reg),
    path('logout/',user_views.logout,name='logout'),
    path('use_active/',user_views.use_active,name='use_active'),
    path('user_level/',user_views.user_level,name='user_level'),
    path('member_info/',user_views.member_info),
    path('member_edit/',user_views.member_edit),
    path('change_pass/',user_views.change_pass),
    path('level_config/',user_views.level_config),
    path('yy_list/',user_views.yy_list),
    path('member_state/',user_views.member_state,name='member_state'),
    path('edit_level/',user_views.edit_level,name='edit_level'),
    path('view_user_info/(^?P<mid>[0-9]+)',user_views.view_user_info,name='view_user_info'),
    path('user_list/',user_views.user_list),
    path('active/',user_views.active),
    path('active_list/',user_views.active_list),
    path('yy_add/',user_views.yy_add),
    path('yy_user_list/',user_views.yy_user_list),
    path('apply_list/',user_views.apply_list),
    path('apply_operate/',user_views.apply_operate,name='apply_operate'),
    path('fmember_info/',user_views.fmember_info),
    path('team_info/',user_views.team_info),
    #path('admin/', admin.site.urls),
]
