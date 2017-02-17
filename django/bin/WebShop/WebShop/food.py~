#-*- coding: UTF-8 -*-

from django.http import HttpResponse
from django.shortcuts import render_to_response
from foodshop.models  import Foodinfo,Shoplistinfo,userpwd
from WebShop.forms import Formfoodinfo,Formcommoditysearch,Formcommodityadd,Formdetailinfo,Formslinfo,LogInfo
import time

###############################################################紫薯小面包详情页返回函数################################################
def zsxmbdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060001')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('zsxmbdetailpage.html',locals())
		except:
			return HttpResponse('紫薯小面包不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('紫薯小面的详情页打不开了，稍后再试下，亲！')		

################################################################商品信息管理页函数###################################################
def commodityinfomanager(request):
	try:	
		if request.method=='GET':
			#return HttpResponse('come in ')
			loginfo=LogInfo(request.GET)
			#return HttpResponse(loginfo.is_valid())
			if loginfo.is_valid():
				#return HttpResponse('come in!')
				infolog=loginfo.cleaned_data
				#return HttpResponse(infolog['logMail'] + 'r' + infolog['logPwd'])
				#return HttpResponse(userpwd.objects.get(usermail=infolog['logMail']).userpwd + 'r' + infolog['logPwd'])
				if(userpwd.objects.get(usermail=infolog['logMail']).userpwd == infolog['logPwd']):
					#return HttpResponse('come to it')
					return render_to_response('commodityinfomanager.html',locals())
				else:
					return render_to_response('adminloginfail.html',locals())
			else:
				return render_to_response('adminloginfail.html',locals())
		else:
			return render_to_response('adminloginfail.html',locals())
	except:	
		return render_to_response('adminloginfail.html',locals())

######################查询商品##########################################################
def commoditysearch(request):
	#return HttpResponse('come in it ,good!')	
	if request.method == 'GET':
		formsearch = Formcommoditysearch(request.GET)
		#return HttpResponse(formsearch.is_valid())
		#return HttpResponse(request.GET['commodityencoding'])
		if formsearch.is_valid():
			try:
				#return HttpResponse('good,come in !')
				searchform = formsearch.cleaned_data
				foodinfoobject = Foodinfo.objects.get(commodityencoding = searchform['commodityencoding'])
				commodityencoding= foodinfoobject.commodityencoding
				shoppagetitle    = foodinfoobject.shoppagetitle
				shoptitle        = foodinfoobject.shoptitle
				shoptitledetail  = foodinfoobject.shoptitledetail
				price            = foodinfoobject.price
				pricep           = foodinfoobject.pricep
				priceph          = foodinfoobject.priceph
				height           = foodinfoobject.height
				commentnum       = foodinfoobject.commentnum
				scuoftranum      = foodinfoobject.scuoftranum
				shipintime       = foodinfoobject.shipintime
				inventorynum     = foodinfoobject.inventorynum
				deposit          = foodinfoobject.deposit
				desscores        = foodinfoobject.desscores
				sevscores        = foodinfoobject.sevscores
				logisticsscores  = foodinfoobject.logisticsscores
				costscores       = foodinfoobject.costscores
				return render_to_response('commoditysearch.html',locals())
			except:
				return HttpResponse('您查询的商品不存在，请确认商品编码正确性！')
		else:
			return HttpResponse(formsearch['commodityencoding'].errors)
	else:
		return HttpResponse('没有正确的传递参数！')

########################增加商品##################################################### 
def commodityadd(request):
	if request.method == 'GET':
		#return HttpResponse('come in !')		
		formadd = Formcommodityadd(request.GET)
#		return HttpResponse(formadd.is_valid())
		if formadd.is_valid():
#			return HttpResponse('come in this!')
			formaddcleaned = formadd.cleaned_data
#			return HttpResponse(formaddcleaned['inventorynum'])
			try:
				commodityexit = Foodinfo.objects.get(commodityencoding=request.GET['commodityencoding'])#检查些商品编码在库中是否已存在
				return HttpResponse('这个商品编码已经存在，不能再次添加新的商品，请核准商品编码！')			
			except:
				commodityaddform = Foodinfo(
								commodityencoding= formaddcleaned['commodityencoding'],	#商品编码
								shoppagetitle    = formaddcleaned['shoppagetitle'],	#页面名称
								shoptitle        = formaddcleaned['shoptitle'],		#商品名称
								shoptitledetail  = formaddcleaned['shoptitledetail'],	#商品简介
								price            = formaddcleaned['price'],		#商品价格
								pricep           = formaddcleaned['pricep'],		#商品单价		
								priceph          = formaddcleaned['priceph'],		#商品单量
								height           = formaddcleaned['height'],		#商品重量
								commentnum       = '0',					#总评
								scuoftranum      = '0',					#成功交易量
								shipintime       = formaddcleaned['shipintime'],	#卖家承诺
								inventorynum     = formaddcleaned['inventorynum'],	#库存数量
								deposit          = '10000',				#消费金
								desscores        = '5.0',				#描述评分
								sevscores        = '5.0',				#服务评分
								logisticsscores  = '5.0',				#物流评分
								costscores       = '5.0',				#性价比评分
								width445px       = '445'				#首张商品图展示宽度
								
							   )
				commodityaddform.save()
				return HttpResponse('商品增加成功！')
		else:
			return HttpResponse('商品填写数据有误，请重新填写！')
	else:
		return HttpResponse('请正确填写食品增加登记表！')


##########################################修改商品##########################################
def commodityalter(request):
	if request.method == 'GET':
		try:
			formalter = Foodinfo.objects.get(commodityencoding=request.GET['commodityencoding'])#查询相关数据
			
			if request.GET['shoppagetitle']:#修改页面名称
				formalter.shoppagetitle=request.GET['shoppagetitle']
			else:
				pass

			if request.GET['shoptitle']:#修改商品名称
				formalter.shoptitle=request.GET['shoptitle']
			else:
				pass

			if request.GET['shoptitledetail']:#修改商品简介
				formalter.shoptitledetail=request.GET['shoptitledetail']
			else:
				pass

			if request.GET['price']:#修改商品价格
				formalter.price=request.GET['price']
			else:
				pass
			
			if request.GET['pricep']:#商品单价
				formalter.pricep=request.GET['pricep']
			else:
				pass

			if request.GET['priceph']:#商品单量
				formalter.priceph=request.GET['priceph']
			else:
				pass
			
			if request.GET['height']:#商品重量
				formalter.height=request.GET['height']
			else:
				pass
			
			if request.GET['shipintime']:#卖家承诺
				formalter.shipintime=request.GET['shipintime']
			else:
				pass
			formalter.save()
			return HttpResponse('商品修改成功！')
		except:
			return HttpResponse('必須填写正确的商品编码才可以更改商品！')
	else:
		return HttpResponse('请正确填写商品编码，这是唯一修改标志码！')

############################删除商品#################################################
def commoditydel(request):
	if request.method == 'GET':
		try:
			formalter = Foodinfo.objects.get(commodityencoding=request.GET['commodityencoding'])#查询相关数据
			formalter.delete();
			return HttpResponse('恭喜您已经成功删除此商品！')
		except:
			return HttpResponse('不好意思，库里没有这种商品，删除失败！')

	else:
		return HttpResponse('商品编码填写失败或者库里没有这种商品，删除失败！')


###############################################################紫薯小面包详情页返回函数################################################
def xycdetailpage(request):
	if request.method == 'GET':
		
		try:
			xycobject = Foodinfo.objects.get(commodityencoding='80060002')#查询数据对象
			shoppagetitle	= xycobject.shoppagetitle 	#页面名称
			shoptitle	= xycobject.shoptitle		#商品名称
			shoptitledetail	= xycobject.shoptitledetail	#商品简介
			price 		= xycobject.price		#商品价格
			pricep 		= xycobject.pricep		#商品单价		
			priceph 	= xycobject.priceph		#单量
			height 		= xycobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= xycobject.shipintime	#卖家承诺
			inventorynum	= xycobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('xycdetailpage.html',locals())
		except:
			return HttpResponse('鳕鱼肠不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('鳕鱼肠的详情页打不开了，稍后再试下，亲！')


###############################################################台湾北田能量棒详情页返回函数################################################
def btnlbdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060003')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('btnlbdetailpage.html',locals())
		except:
			return HttpResponse('北田能量棒不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('北田能量棒详情页打不开了，稍后再试下，亲！')		



###############################################################德国嘉云糖详情页返回函数################################################
def dgjytdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060004')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('dgjytdetailpage.html',locals())
		except:
			return HttpResponse('德国嘉云糖不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('德国嘉云糖详情页打不开了，稍后再试下，亲！')		


##############################################################黄桃罐头详情页返回函数################################################
def htgtdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060005')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('htgtdetailpage.html',locals())
		except:
			return HttpResponse('黄桃罐头不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('黄桃罐头详情页打不开了，稍后再试下，亲！')		


##############################################################开心果详情页返回函数################################################
def kxgdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060006')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('kxgdetailpage.html',locals())
		except:
			return HttpResponse('开心果不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('开心果详情页打不开了，稍后再试下，亲！')	

##############################################################临安巴旦木详情页返回函数################################################
def labdmdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060007')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('labdmdetailpage.html',locals())
		except:
			return HttpResponse('临安巴旦木不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('临安巴旦木详情页打不开了，稍后再试下，亲！')	

#############################################################脉动去骨鸭掌详情页返回函数################################################
def mdqgyzdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060008')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('mdqgyzdetailpage.html',locals())
		except:
			return HttpResponse('去骨鸭掌不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('去骨鸭掌详情页打不开了，稍后再试下，亲！')	


#############################################################墨西哥辣子鸡汁点心面详情页返回函数################################################
def mxglzjzdxmdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060009')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('mxglzjzdxmdetailpage.html',locals())
		except:
			return HttpResponse('墨西哥辣子鸡汁点心面不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('墨西哥辣子鸡汁点心面详情页打不开了，稍后再试下，亲！')	

#############################################################沙巴哇芭蕉干详情页返回函数################################################
def sbwbjgdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060010')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('sbwbjgdetailpage.html',locals())
		except:
			return HttpResponse('沙巴哇芭蕉干不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('沙巴哇芭蕉干详情页打不开了，稍后再试下，亲！')	

#############################################################沙巴哇菠萝蜜干详情页返回函数################################################
def sbwblmgdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060011')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('sbwblmgdetailpage.html',locals())
		except:
			return HttpResponse('沙巴哇菠萝蜜干不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('沙巴哇菠萝蜜干详情页打不开了，稍后再试下，亲！')	


#############################################################沙巴哇综合果蔬干详情页返回函数################################################
def sbwzhgsgdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060012')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('sbwzhgsgdetailpage.html',locals())
		except:
			return HttpResponse('沙巴哇综合果蔬干不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('沙巴哇综合果蔬干详情页打不开了，稍后再试下，亲！')	


#############################################################台湾99水果综合味糖详情页返回函数################################################
def tw99sgzhwtdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060013')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('tw99sgzhwtdetailpage.html',locals())
		except:
			return HttpResponse('台湾99水果综合味糖不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('台湾99水果综合味糖详情页打不开了，稍后再试下，亲！')	

#############################################################奶香碧根果详情页返回函数################################################
def xwybggdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060014')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('xwybggdetailpage.html',locals())
		except:
			return HttpResponse('奶香碧根果不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('奶香碧根果详情页打不开了，稍后再试下，亲！')	


#############################################################张君休闲串烧丸子详情页返回函数################################################
def zjycsxxwzdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060015')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('zjycsxxwzdetailpage.html',locals())
		except:
			return HttpResponse('休闲串烧丸子不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('休闲串烧丸子详情页打不开了，稍后再试下，亲！')	


#############################################################张君休捏碎面详情页返回函数################################################
def zjynsmdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060016')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('zjynsmdetailpage.html',locals())
		except:
			return HttpResponse('捏碎面不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('捏碎面详情页打不开了，稍后再试下，亲！')	



#############################################################张君休五香海苔丸子详情页返回函数################################################
def zjywxhtwzdetailpage(request):
	if request.method == 'GET':
		
		try:
			zsxmbobject = Foodinfo.objects.get(commodityencoding='80060017')#查询数据对象
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 7500				#消费金
			desscores 	= 4.3				#描述评分
			sevscores 	= 4.6				#服务评分
			logisticsscores = 4.7				#物流评分
			costscores 	= 4.5				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response('zjywxhtwzdetailpage.html',locals())
		except:
			return HttpResponse('张君五香海苔丸子不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('张君五香海苔丸子详情页打不开了，稍后再试下，亲！')	

############################新品首发################################################
def comfrist(request):
	return render_to_response('comfrist.html')
############################所有商品################################################
def comall(request):
	return render_to_response('comall.html')
############################进口精选################################################
def comcomein(request):
	return render_to_response('comcomein.html')
############################镇店之宝################################################
def comdown(request):
	return render_to_response('comdown.html')
############################日本尖货################################################
def comjapan(request):
	return render_to_response('comjapan.html')
############################韩国风情################################################
def comcri(request):
	return render_to_response('comcri.html')
############################欧美精品################################################
def comamrican(request):
	return render_to_response('comamrican.html')
############################澳洲天然################################################
def comaus(request):
	return render_to_response('comaus.html')
############################澳洲天然################################################
def comsouais(request):
	return render_to_response('comsouais.html')
############################港澳台################################################
def hat(request):
	return render_to_response('hat.html')
############################东南风味################################################
def testes(request):
	return render_to_response('testes.html')
############################西南风味################################################
def testws(request):
	return render_to_response('testws.html')
############################中原风味################################################
def testcenter(request):
	return render_to_response('testcenter.html')
############################西北风味################################################
def testwn(request):
	return render_to_response('testwn.html')
############################东北风味################################################
def testen(request):
	return render_to_response('testen.html')
############################公司简介################################################
def compationdes(request):
	return render_to_response('compationdes.html')
############################公司资质################################################
def cendes(request):
	return render_to_response('cendes.html')


############################购物汇总################################################
def buytotal(request):
	try:	
		if request.method =='GET':
			comcodnum = request.GET['shoplist']
			#return HttpResponse(comcodnum)
			commodityencoding,commoditynum=comcodnum.split('r')
			comobj=Foodinfo.objects.get(commodityencoding=commodityencoding)
			#return HttpResponse(comobj.shoptitle)
			comcode=commodityencoding
			comname=comobj.shoptitle
			comprice=comobj.price
			comnum=commoditynum
			shoplistcode= (str(time.time()).replace('.',''))
			comtotprice= float(comprice) * float(commoditynum)
			return render_to_response('buytotal.html',locals())
		else:
			return render_to_response('buytotal.html')
	except:
		return HttpResponse("购物车异常，请重新选择！");

############################结算模块################################################
def payall(request):
	try:
		if request.method == 'GET':
			comcodnum = request.GET['paylist']
			shoplistcode,commodityencoding,commoditynum=comcodnum.split('r')
			comobj=Foodinfo.objects.get(commodityencoding=commodityencoding)
			comcode=commodityencoding
			comname=comobj.shoptitle
			comprice=comobj.price
			comnum=commoditynum
			shoplistencode=shoplistcode;
			comtotprice= float(comprice) * float(commoditynum)
			return render_to_response('payall.html',locals())
		else:
			return render_to_response('payall.html')
	except:
			return HttpResponse('不好意思，没有正确的传送订单，请重新提交订单！')

############################结算完毕################################################
def payover(request):
#	return HttpResponse('come in ');
	try:	
		if request.method =='GET':
			#return HttpResponse(request.GET['addrname']+request.GET['setname']+request.GET['zipcode']+request.GET['phoneno']+request.GET['phoneno']
			#		+request.GET['wordstoboss']+request.GET['deliveway']+request.GET['addpricestr'])
			formmidslinfo=Formslinfo(request.GET)
			#return HttpResponse('come in')
			#return HttpResponse(formmidslinfo.is_valid())
			if formmidslinfo.is_valid():
				#return HttpResponse('come in')
				forminfoshoplist=formmidslinfo.cleaned_data
				#return HttpResponse(forminfoshoplist['addrname'])
				shoplistnostr,comencodingstr,comnumstr,expressdelivepricestr,shipinsurancevaluestr,couponpricestr=forminfoshoplist['addpricestr'].split('r')
				comcodeandnumstr=(comencodingstr+'r'+comnumstr)
				#return HttpResponse(comcodeandnum)
				compricestr=Foodinfo.objects.get(commodityencoding=comencodingstr).price
				#return HttpResponse(couponpricestr)
				shoplistprice=str(float(compricestr) * float(comnumstr) + float(expressdelivepricestr) + float(shipinsurancevaluestr) - float(couponpricestr))
#				return HttpResponse(shoplistprice)
#				return HttpResponse(forminfoshoplist['deliveway'])
				infolistshop= Shoplistinfo(
											shoplistno			= shoplistnostr,					#订单编号
											addrname			= forminfoshoplist['addrname'],		#收件人地址
											setname				= forminfoshoplist['setname'],		#收件人姓名
											zipcode				= forminfoshoplist['zipcode'], 		#收件人邮政编码
											phoneno				= forminfoshoplist['phoneno'],		#收件人手机号
											wordstoboss			= forminfoshoplist['wordstoboss'],	#客户留言
											deliveway			= forminfoshoplist['deliveway'],	#运送方式
											comcodeandnum		= comcodeandnumstr,					#购买商品编码和数量
											expressdeliveprice	= expressdelivepricestr,			#邮费
											shipinsurancevalue	= shipinsurancevaluestr,			#保险费
											couponprice			= couponpricestr,					#优惠券值
											shoplistprice		= shoplistprice,					#订单总价
											status				= '1',								#订单状态
										  )
				infolistshop.save()
				return HttpResponse('恭喜您，购物成功，请耐心等待收货吧！')
			else:
				return HttpResponse(formmidslinfo.errors)
		else:
			return HttpResponse('恭喜付款成功，请耐心等待收货！')
	except:
			return HttpResponse('不好意思，订单异常!')


#############################################################通用商品详情视图函数################################################
def commoditydetailpage(request,commoditydetailpagepara):
	if request.method == 'GET':
		try:
			commoditydetailpagename=commoditydetailpagepara+'.html'
			zsxmbobject = Foodinfo.objects.get(shoppagetitle=commoditydetailpagepara)#查询数据对象
			commodityencoding=zsxmbobject.commodityencoding #商品编号			
			shoppagetitle	= zsxmbobject.shoppagetitle 	#页面名称
			shoptitle	= zsxmbobject.shoptitle		#商品名称
			shoptitledetail	= zsxmbobject.shoptitledetail	#商品简介
			price 		= zsxmbobject.price		#商品价格
			pricep 		= zsxmbobject.pricep		#商品单价		
			priceph 	= zsxmbobject.priceph		#单量
			height 		= zsxmbobject.height		#商品重量
			commentnum 	= 895				#总评
			scuoftranum 	= 567				#成功交易量
			shipintime	= zsxmbobject.shipintime	#卖家承诺
			inventorynum	= zsxmbobject.inventorynum	#库存数量
			deposit 	= 9999				#消费金
			desscores 	= 5.0				#描述评分
			sevscores 	= 5.0				#服务评分
			logisticsscores = 5.0				#物流评分
			costscores 	= 4.9				#性价比评分
			width445px	= 445				#首张商品图展示宽度
			return render_to_response(commoditydetailpagename,locals())
		except:
			return HttpResponse('您的食品已经不存了，已经被外星人吃掉了！')
	else:
		return HttpResponse('对不起，食品的详情页打不开了，稍后再试下，亲！')	









