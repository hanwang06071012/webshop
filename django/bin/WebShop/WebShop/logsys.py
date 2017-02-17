# -*- coding:UTF-8 -*-
from django.http import HttpResponse
from django.shortcuts import render_to_response
from WebShop.forms  import LogInfo
from foodshop.models import userpwd

################################普通用户登陆#########################################################################
def logsys(request):
	if request.method == 'GET':
		#return HttpResponse(request.GET)	
		form=LogInfo(request.GET)
		#return HttpResponse(form['logMail'])	
		if form.is_valid():
			#return HttpResponse('the data is valid!')
			lgd=form.cleaned_data
			#return HttpResponse(lgd.items())			
			#return HttpResponse(lgd['logPwd'])
			#han = userpwd.objects.get(usermail=lgd['logMail']).userpwd
			#return HttpResponse(han)
			try:
				if (userpwd.objects.get(usermail=lgd['logMail']).userpwd == lgd['logPwd']):
					return render_to_response('loginscuess.html')
					#return HttpResponse("welcom to foodshop!")
					#return HttpResponse(userpwd.objects.get(usermail=lgd['logMail']).userpwd == lgd['logPwd'])  
				else:
					return HttpResponse('the user mail and login password is not complite,try it again!')
			except:
				return HttpResponse('the usermail and login password is not comlite,try it again!')
	return HttpResponse('the login mail or login password is wrong,please try it again: %s' % form.errors)

