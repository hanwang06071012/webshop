# -*- coding: utf-8 -*-

from django.shortcuts import render_to_response

def hello(request):
	wang='lilijie'
	xyc='xyc1'
	hw='no one is ok,erver one is good!'
	return render_to_response('hello.html',locals())
def webshop(request):
	return render_to_response('default.html')
def register(request):
	return render_to_response('register.html')
def login(request):
	return render_to_response('login.html')
def hellobk(request):
	return render_to_response('hellobk.html',{'han':'baiwei','hw':'duhaibai is a goog boy!'})
def basedetailpage(request):
	shoppagetitle='xueyuchang page'
	return render_to_response('basedetailpage.html',locals())
def adminlogin(request):
	return render_to_response('adminlogin.html')
