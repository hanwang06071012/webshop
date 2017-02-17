from django.shortcuts import render_to_response
from django.http import HttpResponse
from WebShop.forms import RegisterInfo
from foodshop.models import userpwd


def registerinfo(request):	
	if request.method == 'GET':
		#return HttpResponse('we can get post!')
		form = RegisterInfo(request.GET)
		if form.is_valid():
			cd = form.cleaned_data
			try:			
				if(userpwd.objects.get(usermail=cd['userMail']).userpwd):
					return render_to_response('userexit.html')
					#return HttpResponse('good well!')
				else:
					pass
			except:
				if (cd['fristPwd'] != cd['secondPwd']):
					return HttpResponse('the second  input password is not the same as the frist input password,please input it angin!')
				uf=userpwd(username=cd['userName'],userpwd=cd['secondPwd'],usermail=cd['userMail'],userstatus=0,usermoneny=0,usercerditstatus=5,)
				uf.save()
				return HttpResponse('register scuess!')
	
	return HttpResponse('the form info is wrong, please try it again:%s' % form.errors);
