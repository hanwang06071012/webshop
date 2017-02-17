#-*- coding: utf-8 -*-
from django.http import HttpResponse
from foodshop.models import userpwd,Foodinfo

#create db test script 

def testdb(request):
	#add data
	test1=userpwd(	username='hanwang77',		#用户名	
			userpwd='12377',		#密码
			usermail='hanwang77@126.com'	#用户注册邮箱
		     )
	test1.save()
	return HttpResponse('<p>add  secusess!</p>')

	#get databases' data
	#test3=''
	#test2=userpwd.objects.filter(id=1)
	#for var in test2:
		#test3 += var.username + '  '+ var.userpwd

	#chang data
	#test1=userpwd.objects.get(id=3)
	#test1.username='liuqiang'
	#test1.save()

	#delete data
	#test1=userpwd.objects.get(id=4)
	#test1.delete()
	#return HttpResponse('<p>delete  secusess!</p>')

def foodinfoadd(request):
	adddata=Foodinfo(	shoppagetitle='紫薯小面包详情页',	#页面名称
				#shoppagetitle='紫薯小面包',	#页面名称
				shoptitle    ="好吃的紫薯小面包",	#商品名称
				#shoptitle    ="zi shu mbao",	#商品名称
				shoptitledetail="好吃的零食大礼包，一包里面有很多，三十几样食品，只要你喜欢，送人还是比较高大上的，有礼盒的，包装精美，质量上等是送女孩的礼，可以随时加一点送你心爱的人，欢迎选购，全国包邮，偏远地区除外，详情见商品，谢谢",	#商品简介
				#shoptitledetail="hao chi de zi shu xiao mian bao ,jin hang jia huang de ,shi song ren jia ping ,zhi shang de xuan ze,bao zhuang jing mei,shou ren haung yin",	#商品简介
				price        ="30",		#商品价格
				pricep       = '25.56',		#商品单价		
				priceph      = '500',		#单量
				height       = '3560',		#商品重量
				commentnum   = '895',		#总评
				scuoftranum  = '567',		#成功交易量
				shipintime   ="卖家承诺27小时内发货", #卖家承诺
				#shipintime   ="traved 24 hour", #卖家承诺
				inventorynum ='7365',		#库存数量
				deposit      = '7500',		#消费金
				desscores    = '4.3',		#描述评分
				sevscores    = '4.6',		#服务评分
				logisticsscores = '4.7',	#物流评分
				costscores  = '4.5',		#性价比评分
				width445px   = '445',		#首张商品图展示宽度
			)
	adddata.save()
	return HttpResponse('<p> add data for foodinfo secusess!</p>')
