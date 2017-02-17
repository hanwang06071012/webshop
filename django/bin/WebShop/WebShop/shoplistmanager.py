#-*- coding:utf-8-*-
########################################################################################
#作者:韩望 
#修改者:
#日期:2016-04-07
#版本:version 1.0
#备注:订单管理函数，主要解决订单的查，改，删
########################################################################################

from django.http  import HttpResponse
from django.shortcuts import render_to_response
from foodshop.models import Shoplistinfo
from WebShop.forms import Formshoplistsearch,Formshoplistchange,Formshoplistfreezethaw
from foodshop.models import Foodinfo
########################订单查询函数###############################################
def shoplistsearch(request):
	if request.method == 'GET':
		shoplistform=Formshoplistsearch(request.GET)
		if shoplistform.is_valid():
			formshoplist=shoplistform.cleaned_data
			try:
				shoplistobj=Shoplistinfo.objects.get(shoplistno=formshoplist['shoplistencoding'])
				shoplistno=shoplistobj.shoplistno
				addrname=shoplistobj.addrname
				setname=shoplistobj.setname
				zipcode=shoplistobj.zipcode
				phoneno=shoplistobj.phoneno
				wordstoboss=shoplistobj.wordstoboss
				deliveway=shoplistobj.deliveway
				comcode,comnum=shoplistobj.comcodeandnum.split('r')
				comname=Foodinfo.objects.get(commodityencoding=comcode).shoptitle
				comprice=Foodinfo.objects.get(commodityencoding=comcode).price
				expressdeliveprice=shoplistobj.expressdeliveprice
				shipinsurancevalue=shoplistobj.shipinsurancevalue
				couponprice=shoplistobj.couponprice
				shoplistprice=shoplistobj.shoplistprice
				return render_to_response('shoplistsearch.html',locals())
			except:
				return HttpResponse('查无此订单！')
		else:
			return HttpResponse(shoplistform.errors)
	else:
		return HttpResponse('查无此订单号！')

##############################订单修改函数###############################################
def shoplistchange(request):
	if request.method == 'GET':
		shoplistformchange=Formshoplistchange(request.GET)
		if shoplistformchange.is_valid():
			formshoplistchange=shoplistformchange.cleaned_data
			try:
				shoplistobj=Shoplistinfo.objects.get(shoplistno=formshoplistchange['shoplistno'])
				shoplistobj.setname=formshoplistchange['setname']
				shoplistobj.addrname=formshoplistchange['addrname']
				shoplistobj.zipcode=formshoplistchange['zipcode']
				shoplistobj.phoneno=formshoplistchange['phoneno']
				shoplistobj.save()
				return HttpResponse('恭喜订单修改成功！')
			except:
				return HttpResponse('对不起，没有查询到您的订单！')
		else:
			return HttpResponse(shoplistformchange.errors)			
	else:
		return HttpResponse('请正确填写数据！')

##############################冻结订单#################################################
def shoplistfreeze(request):
	if request.method == 'GET':
		shoplistformfreezethaw=Formshoplistfreezethaw(request.GET)
		if shoplistformfreezethaw.is_valid():
			formshoplistfreezethaw=shoplistformfreezethaw.cleaned_data
			try:
				shoplistobj=Shoplistinfo.objects.get(shoplistno=formshoplistfreezethaw['shoplistno'])
				if (shoplistobj.status == '0'):
					return HttpResponse('此订单已经冻结，不需要再次冻结!')
				else:			
					shoplistobj.status='0'
					shoplistobj.save()
					#return HttpResponse(shoplistobj.status)
					return HttpResponse('此订单已被冻结')
			except:
				return HttpResponse('没有查询到此编号的订单!')
		else:
			return HttpResponse(fromshoplistfreezethaw.errors)
	else:
		return HttpResponse('请正确填写订单编号！')
		

##############################解冻订单#################################################
def shoplistthaw(request):
	if request.method == 'GET':
		shoplistformfreezethaw=Formshoplistfreezethaw(request.GET)
		if shoplistformfreezethaw.is_valid():
			formshoplistfreezethaw=shoplistformfreezethaw.cleaned_data
			try:
				shoplistobj=Shoplistinfo.objects.get(shoplistno=formshoplistfreezethaw['shoplistno'])
				if (shoplistobj.status != '0'):
					return HttpResponse('此订单处在活动状态，不需要再次解冻!')
				else:
					shoplistobj.status='1'
					shoplistobj.save()
					#return HttpResponse(shoplistobj.status)
					return HttpResponse('此订单已解冻')
			except:
				return HttpResponse('没有查询到此编号的订单!')
		else:
			return HttpResponse(fromshoplistfreezethaw.errors)
	else:
		return HttpResponse('请正确填写订单编号！')
		
		

















