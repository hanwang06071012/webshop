#-*- coding: utf-8 -*-
from django.db import models

# Create your models here.
#######################用户信息#############################################################
class userpwd(models.Model):
    username= models.CharField(max_length=30)
    userpwd = models.CharField(max_length=50)
    usermail= models.CharField(max_length=50)
    userstatus= models.CharField(max_length=4)
    usermoneny= models.CharField(max_length=12)
    usercreditstatus=models.CharField(max_length=4)
#######################商品信息列表##########################################################
class Foodinfo(models.Model):
	commodityencoding= models.CharField(max_length=30)	#商品编码
	shoppagetitle    = models.CharField(max_length=50)	#页面名称
	shoptitle        = models.CharField(max_length=50) 	#商品名称
	shoptitledetail  = models.CharField(max_length=300)	#商品简介
	price            = models.CharField(max_length=20)	#商品价格
	pricep           = models.CharField(max_length=20)	#商品单价		
	priceph          = models.CharField(max_length=20)	#商品单量
	height           = models.CharField(max_length=20)	#商品重量
	commentnum       = models.CharField(max_length=20)	#总评
	scuoftranum      = models.CharField(max_length=20)	#成功交易量
	shipintime       = models.CharField(max_length=50) 	#卖家承诺
	inventorynum     = models.CharField(max_length=20)	#库存数量
	deposit          = models.CharField(max_length=20)	#消费金
	desscores        = models.CharField(max_length=20)	#描述评分
	sevscores        = models.CharField(max_length=20)	#服务评分
	logisticsscores  = models.CharField(max_length=20)	#物流评分
	costscores       = models.CharField(max_length=20)	#性价比评分
	width445px       = models.CharField(max_length=20)	#首张商品图展示宽度

##################购物菜单数据库##########################################################
class Shoplistinfo(models.Model):
	shoplistno			= models.CharField(max_length=30)	#订单编号
	addrname			= models.CharField(max_length=200)	#收件人地址
	setname				= models.CharField(max_length=30)	#收件人姓名
	zipcode				= models.CharField(max_length=6) 	#收件人邮政编码
	phoneno				= models.CharField(max_length=30)	#收件人手机号
	wordstoboss			= models.CharField(max_length=200)	#客户留言
	deliveway			= models.CharField(max_length=30)	#运送方式
	comcodeandnum		= models.CharField(max_length=300)	#购买商品编码和数量
	expressdeliveprice	= models.CharField(max_length=10)	#邮费
	shipinsurancevalue	= models.CharField(max_length=10)	#保险费
	couponprice			= models.CharField(max_length=10)	#优惠券值
	shoplistprice		= models.CharField(max_length=50)	#订单总价
	status				= models.CharField(max_length=4)	#订单状态    





















