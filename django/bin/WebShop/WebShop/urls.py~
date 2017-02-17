#-*- coding: UTF-8 -*-
from django.conf.urls import patterns, include, url
from WebShop.view import hello, webshop,register,login,hellobk,basedetailpage,adminlogin
from WebShop.testdb import testdb,foodinfoadd
from WebShop.regAndlog import registerinfo
from WebShop.logsys import logsys
from WebShop.food import zsxmbdetailpage,commodityinfomanager,commoditysearch,commodityadd,commodityalter,commoditydel
from WebShop.food import xycdetailpage
import WebShop.food,WebShop.usermanager,WebShop.shoplistmanager
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'WebShop.views.home', name='home'),
    # url(r'^WebShop/', include('WebShop.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    ('^hello/$',hello),
    ('^hellobk/$',hellobk),
    ('^default/$',webshop),
    ('^testdb/$',testdb),
    ('^register/$',register),
    ('^login/$',login),
	('^adminlogin/$',adminlogin),
    ('^registerinfo/$',registerinfo),
    ('^loginsystem/$',logsys),
    ('^basedetailpage/$',basedetailpage),
    #('^zsxmbdetailpage/$',zsxmbdetailpage),
    ('^commodityinfomanager/$',commodityinfomanager),############商品管理
    ('^commoditysearch/$',commoditysearch),######################查询商品
    ('^commodityadd/$',commodityadd),############################增加商品
    ('^commodityalter/$',commodityalter),
    ('^commoditydel/$',commoditydel),
    #('^xycdetailpage/$',xycdetailpage),
	#('^btnlbdetailpage/$',WebShop.food.btnlbdetailpage),
	#('^dgjytdetailpage/$',WebShop.food.dgjytdetailpage),
	#('^htgtdetailpage/$',WebShop.food.htgtdetailpage),
	#('^kxgdetailpage/$',WebShop.food.kxgdetailpage),
	#('^labdmdetailpage/$',WebShop.food.labdmdetailpage),
	#('^mdqgyzdetailpage/$',WebShop.food.mdqgyzdetailpage),
	#('^mxglzjzdxmdetailpage/$',WebShop.food.mxglzjzdxmdetailpage),
	#('^sbwbjgdetailpage/$',WebShop.food.sbwbjgdetailpage),
	#('^sbwblmgdetailpage/$',WebShop.food.sbwblmgdetailpage),
	#('^sbwzhgsgdetailpage/$',WebShop.food.sbwzhgsgdetailpage),
	#('^tw99sgzhwtdetailpage/$',WebShop.food.tw99sgzhwtdetailpage),
	#('^xwybggdetailpage/$',WebShop.food.xwybggdetailpage),
	#('^zjycsxxwzdetailpage/$',WebShop.food.zjycsxxwzdetailpage),
	#('^zjynsmdetailpage/$',WebShop.food.zjynsmdetailpage),
	('^(?P<commoditydetailpagepara>(.*)detailpage)/$',WebShop.food.commoditydetailpage),##通用商品详情页视图函数
	('^comfrist/$',WebShop.food.comfrist),
	('^comall/$',WebShop.food.comall),
	('^comcomein/$',WebShop.food.comcomein),
	('^comdown/$',WebShop.food.comdown),
	('^comjapan/$',WebShop.food.comjapan),
	('^comcri/$',WebShop.food.comcri),
	('^comamrican/$',WebShop.food.comamrican),
	('^comaus/$',WebShop.food.comaus),
	('^comsouais/$',WebShop.food.comsouais),
	('^hat/$',WebShop.food.hat),
	('^testes/$',WebShop.food.testes),
	('^testws/$',WebShop.food.testws),
	('^testcenter/$',WebShop.food.testcenter),
	('^testwn/$',WebShop.food.testwn),
	('^testen/$',WebShop.food.testen),
	('^compationdes/$',WebShop.food.compationdes),
	('^cendes/$',WebShop.food.cendes),
	('^buytotal/$',WebShop.food.buytotal),
	('^payall/$',WebShop.food.payall),
	('^payover/$',WebShop.food.payover),
	('^usersearch/$',WebShop.usermanager.usersearch),
	('^useradd/$',WebShop.usermanager.useradd),
	('^usernamechange/$',WebShop.usermanager.usernamechange),
	('^usermonenychange/$',WebShop.usermanager.usermonenychange),
	('^freezeuser/$',WebShop.usermanager.freezeuser),
	('^thawuser/$',WebShop.usermanager.thawuser),
	('^inituserpwd/$',WebShop.usermanager.inituserpwd),
	('^shoplistsearch/$',WebShop.shoplistmanager.shoplistsearch),
	('^shoplistchange/$',WebShop.shoplistmanager.shoplistchange),
	('^shoplistfreeze/$',WebShop.shoplistmanager.shoplistfreeze),
	('^shoplistthaw/$',WebShop.shoplistmanager.shoplistthaw),
)
