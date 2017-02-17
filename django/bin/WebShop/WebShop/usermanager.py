#-*- coding:utf-8-*-
########################################################################################
#作者:韩望 
#修改者:
#日期:2016-04-05
#版本:version 1.0
#备注:用户管理函数，主要解决用户的增，删，查，改
########################################################################################

from django.http  import HttpResponse
from django.shortcuts import render_to_response
from foodshop.models import userpwd
from WebShop.forms import Formusersearch,Formuseradd,Formusernamechange,Formusermoneny

##########################用户查询模块####################################################
def usersearch(request):
	try:	
		if request.method=='GET':
			mailuser = Formusersearch(request.GET)
			if mailuser.is_valid():
				usermail=mailuser.cleaned_data
				userobj=userpwd.objects.get(usermail=usermail['usermail'])
				username=userobj.username
				usermail=userobj.usermail
				userstatus=userobj.userstatus
				usermoneny=userobj.usermoneny
				usercreditstatus=userobj.usercreditstatus
				return render_to_response('userinfotable.html',locals())
			else:
				return HttpResponse(mailuser.errors)
		else:
			HttpResponse('不好意思，请输入注册邮箱！')
	except:
		return HttpResponse('对不起，此邮箱末注册！')			

###########################增加用户模块###################################################
def useradd(request):
	if request.method == 'GET':
		useraddform=Formuseradd(request.GET)
		#return HttpResponse(useraddform.is_valid())
		if useraddform.is_valid():
			formuseradd=useraddform.cleaned_data
			#return HttpResponse(formuseradd['usermail'])
			if (formuseradd['firstpwd']==formuseradd['secondpwd']):
				try:
					#return HttpResponse('test01!')
					if (userpwd.objects.get(usermail=formuseradd['usermail']).userpwd):
						return render_to_response('userexit.html')
					else:
						pass
				except:
					useraddobj=userpwd(	username=formuseradd['username'],
										userpwd=formuseradd['firstpwd'],
										usermail=formuseradd['usermail'],
										userstatus=0,
										usermoneny=0,
										usercreditstatus=5,
									  )
					useraddobj.save()
					return HttpResponse('用户添加成功！')
			else:
					return HttpResponse('两次输入密码不一致，请重新输入密码！')
	return HttpResponse('对不起，请正确填写用户注册表！')

############################用户名修改模块##################################################
def usernamechange(request):
	if request.method == 'GET':
		formnameuserchange=Formusernamechange(request.GET)
		if formnameuserchange.is_valid():
			formusernamechange=formnameuserchange.cleaned_data
			try:
				usernamechangeobj=userpwd.objects.get(usermail=formusernamechange['usermail'])
				#return HttpResponse(formusernamechange['username'])
				usernamechangeobj.username=formusernamechange['username']
				usernamechangeobj.save()
				return HttpResponse('恭喜用户名修改成功！')
			except:
				return HttpResponse('对不起，您所输入的邮箱还没有注册，请核对邮箱输入！')
		else:
			return HttpResponse(formnameuserchange.errors)
	else:
		return HttpResponse('请正确输入数据')

############################用户名充值模块##################################################
def usermonenychange(request):
	if request.method == 'GET':
		#return HttpResponse('usermonenychange hanwang')
		formmonenyuser=Formusermoneny(request.GET)
		if formmonenyuser.is_valid():
			formusermoneny=formmonenyuser.cleaned_data
			try:
				usermonenyobj=userpwd.objects.get(usermail=formusermoneny['usermail'])
				#return HttpResponse(formusernamechange['username'])
				originalmoneny=usermonenyobj.usermoneny;
				exitmoneny=formusermoneny['usermoneny']
				totalmoneny=(float(originalmoneny) + float(exitmoneny))
				usermonenyobj.usermoneny=totalmoneny
				usermonenyobj.save()
				return HttpResponse('恭喜您充值成功！')
			except:
				return HttpResponse('对不起，您所输入的邮箱还没有注册，请核对邮箱输入！')
		else:
			return HttpResponse(formmonenyuser.errors)
	else:
		return HttpResponse('请正确输入数据')

###########################初始化用户密码#######################################################
def inituserpwd(request):
	if request.method == 'GET':
		initpwduser=Formusersearch(request.GET)
		if initpwduser.is_valid():
			inituserpwd=initpwduser.cleaned_data
			try:
				inituserpwdobj=userpwd.objects.get(usermail=inituserpwd['usermail'])
				inituserpwdobj.userpwd='123456'
				inituserpwdobj.save()
				return HttpResponse('用户密码已被初始化为123456')
			except:
				return HttpResponse('该邮箱还没有注册过，无法初始化密码！')
		else:
			return HttpResponse(inituserpwdobj.errors)
	else:
		return HttpResponse('请正确输入注册邮箱！')

###########################冻结用户#######################################################
def freezeuser(request):
	if request.method == 'GET':
		userfreeze=Formusersearch(request.GET)
		if userfreeze.is_valid():
			freezeuser=userfreeze.cleaned_data
			try:
				freezeuserobj=userpwd.objects.get(usermail=freezeuser['usermail'])
				if (freezeuserobj.usercreditstatus == '0'):
					return HttpResponse('该用户已处在冻结状态，没有必要再次冻结！')
				else:
					freezeuserobj.usercreditstatus=0
					freezeuserobj.save()
					return HttpResponse('用户已被冻结！')
			except:
				return HttpResponse('该邮箱还没有注册过，无法冻结！')
		else:
			return HttpResponse(userfreeze.errors)
	else:
		return HttpResponse('请正确输入注册邮箱！')

###########################解冻用户#######################################################
def thawuser(request):
	if request.method == 'GET':
		userthaw=Formusersearch(request.GET)
		if userthaw.is_valid():
			thawuser=userthaw.cleaned_data
			try:
				freezeuserobj=userpwd.objects.get(usermail=thawuser['usermail'])
				if (freezeuserobj.usercreditstatus != '0'):
					return HttpResponse('该用户处在活动状态，没有必要解冻！')
				else:
					freezeuserobj.usercreditstatus=5
					freezeuserobj.save()
					return HttpResponse('用户已解冻！')
			except:
				return HttpResponse('该邮箱还没有注册过，无法解冻！')
		else:
			return HttpResponse(userthaw.errors)
	else:
		return HttpResponse('请正确输入注册邮箱！')


































