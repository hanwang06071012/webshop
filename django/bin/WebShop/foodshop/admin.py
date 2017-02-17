from django.contrib import admin
from foodshop.models import userpwd,Foodinfo,Shoplistinfo

class userpwdadmin(admin.ModelAdmin):
	list_display = ('username','usermail','userpwd','usermoneny','usercreditstatus','userstatus')
	list_filter = ('username','usermail','userstatus','usercreditstatus',)
	search_fields = ('username','usermail','userstatus','usercreditstatus',)
	fields=('usermail','username','userpwd','usercreditstatus','userstatus')

admin.site.register(userpwd,userpwdadmin)
admin.site.register(Foodinfo)
admin.site.register(Shoplistinfo)
