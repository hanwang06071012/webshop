#-*-coding: UTF-8-*-
from django import forms

#######################用户注册######################################
class RegisterInfo(forms.Form):
	userName=forms.CharField(max_length=30)				#用户名
	userMail=forms.EmailField()							#用户注册邮箱
	fristPwd=forms.CharField(max_length=50)				#第一次输入密码
	secondPwd=forms.CharField(max_length=50)			#第二次输入密码

#######################用户登陆######################################
class LogInfo(forms.Form):
	logMail = forms.EmailField()						#登陆帐号
	logPwd  = forms.CharField()							#登陆密码

#######################查询商品表单###################################
class Formcommoditysearch(forms.Form):
	commodityencoding=forms.CharField(max_length=30)	#商品查询编码

#######################商品增加表单###################################
class Formcommodityadd(forms.Form):
	commodityencoding= forms.CharField(max_length=30)	#商品编码
	shoppagetitle    = forms.CharField(max_length=50)	#页面名称
	shoptitle        = forms.CharField(max_length=50) 	#商品名称
	shoptitledetail  = forms.CharField(max_length=300)	#商品简介
	price            = forms.CharField(max_length=20)	#商品价格
	pricep           = forms.CharField(max_length=20)	#商品单价		
	priceph          = forms.CharField(max_length=20)	#商品单量
	height           = forms.CharField(max_length=20)	#商品重量
	shipintime       = forms.CharField(max_length=50) 	#卖家承诺
	inventorynum     = forms.CharField(max_length=20)	#库存数量

###################################################################商品信息的全单####################################################################
class Formfoodinfo(forms.Form):
	commodityencoding= forms.CharField(max_length=30)	#商品编码
	shoppagetitle    = forms.CharField(max_length=50)	#页面名称
	shoptitle        = forms.CharField(max_length=50) 	#商品名称
	shoptitledetail  = forms.CharField(max_length=300)	#商品简介
	price            = forms.CharField(max_length=20)	#商品价格
	pricep           = forms.CharField(max_length=20)	#商品单价		
	priceph          = forms.CharField(max_length=20)	#商品单量
	height           = forms.CharField(max_length=20)	#商品重量
	commentnum       = forms.CharField(max_length=20)	#总评
	scuoftranum      = forms.CharField(max_length=20)	#成功交易量
	shipintime       = forms.CharField(max_length=50) 	#卖家承诺
	inventorynum     = forms.CharField(max_length=20)	#库存数量
	deposit          = forms.CharField(max_length=20)	#消费金
	desscores        = forms.CharField(max_length=20)	#描述评分
	sevscores        = forms.CharField(max_length=20)	#服务评分
	logisticsscores  = forms.CharField(max_length=20)	#物流评分
	costscores       = forms.CharField(max_length=20)	#性价比评分
	width445px       = forms.CharField(max_length=20)	#首张商品图展示宽度
###########################详情页提交表单###########################
class Formdetailinfo(forms.Form):
	shoppagetitle    = forms.CharField(max_length=50)	#页面名称
	shoptitle        = forms.CharField(max_length=50) 	#商品名称
	shoptitledetail  = forms.CharField(max_length=300)	#商品简介
	price            = forms.CharField(max_length=20)	#商品价格
	pricep           = forms.CharField(max_length=20)	#商品单价		
	priceph          = forms.CharField(max_length=20)	#商品单量
	height           = forms.CharField(max_length=20)	#商品重量
	commentnum       = forms.CharField(max_length=20)	#总评
	scuoftranum      = forms.CharField(max_length=20)	#成功交易量
	shipintime       = forms.CharField(max_length=50) 	#卖家承诺
	inventorynum     = forms.CharField(max_length=20)	#库存数量
	deposit          = forms.CharField(max_length=20)	#消费金
	desscores        = forms.CharField(max_length=20)	#描述评分
	sevscores        = forms.CharField(max_length=20)	#服务评分
	logisticsscores  = forms.CharField(max_length=20)	#物流评分
	costscores       = forms.CharField(max_length=20)	#性价比评分
	width445px       = forms.CharField(max_length=20)	#首张商品图展示宽度


##################购物菜单##########################################################
class Formslinfo(forms.Form):
	addrname	= forms.CharField(max_length=200)	#收件人地址
	setname		= forms.CharField(max_length=30)	#收件人姓名
	zipcode		= forms.CharField(max_length=6) 	#收件人邮政编码
	phoneno		= forms.CharField(max_length=30)	#收件人手机号
	wordstoboss	= forms.CharField(max_length=200)	#客户留言
	deliveway	= forms.CharField(max_length=30)	#运送方式
	addpricestr	= forms.CharField(max_length=300)	#购买清单附加混合信息
##################用户查询表单######################################################
class Formusersearch(forms.Form):
    usermail=forms.EmailField()
##################增加注册用户表单######################################################
class Formuseradd(forms.Form):
   usermail		= forms.EmailField()				#用户注册邮箱
   username		= forms.CharField(max_length=30)	#用户名
   firstpwd		= forms.CharField(max_length=50)	#首次输入密码
   secondpwd	= forms.CharField(max_length=50)	#再次输入密码
##################用户名修改模块#####################################################
class Formusernamechange(forms.Form):
   usermail	= forms.EmailField()					#用户注册邮箱
   username	= forms.CharField(max_length=30)		#用户名

##################用户名充值模块#####################################################
class Formusermoneny(forms.Form):
   usermail		= forms.EmailField()				#用户注册邮箱
   usermoneny	= forms.CharField(max_length=12)	#用户账户佘额
##################订单查询模块#####################################################
class Formshoplistsearch(forms.Form):
   shoplistencoding= forms.CharField(max_length=30)	#用户注册邮箱

##################订单修改########################################################
class Formshoplistchange(forms.Form):
   shoplistno	= forms.CharField(max_length=30)
   setname		= forms.CharField(max_length=30)
   addrname		= forms.CharField(max_length=200)
   zipcode		= forms.CharField(max_length=6)
   phoneno		= forms.CharField(max_length=30)
#################冻结与解冻订单#####################################################
class Formshoplistfreezethaw(forms.Form):
	shoplistno	= forms.CharField(max_length=30)







