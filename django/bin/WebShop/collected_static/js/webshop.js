
//##############################主图小图改变###############################################################################################
//小图改变主图通用函数
function mainimg_change(obj){
	document.getElementById('mainimg').src=obj.src;
}
//小图一改变主图
function mainimg1_change(){
	document.getElementById('mainimg').src=document.getElementById('mainimg1').src;
}
	
//小图二改变主图
function mainimg2_change(){
	document.getElementById('mainimg').src=document.getElementById('mainimg2').src;
}

//小图三改变主图	
function mainimg3_change(){
	document.getElementById('mainimg').src=document.getElementById('mainimg3').src;
}

//小图四改变主图
function mainimg4_change(){
	document.getElementById('mainimg').src=document.getElementById('mainimg4').src;
}

//小图五改变主图
function mainimg5_change(){
	document.getElementById('mainimg').src=document.getElementById('mainimg5').src;
}
	
//小图六改变主图
function mainimg6_change(){
		document.getElementById('mainimg').src=document.getElementById('mainimg6').src;
	}
//#######################鼠标移动到小主图上小主图自己身改变#####################################################################################
//#######################小主图自身改变通用函数###########################################
//鼠标在上面移动时的变化 
function moveimg_change(obj){
	obj.style.borderColor="#F00";
	obj.style.borderWidth="5px";
	document.getElementById('mainimg').src=obj.src;
}
//鼠标离开时的动作
function outimg_change(obj){
	obj.style.borderColor="#FF9"
	obj.style.borderWidth="1px";
}

//#######################小主图一自身改变###########################################
//鼠标在上面移动时的变化 
function moveimg1_change(){
	document.getElementById("mainimg1").style.borderColor="#F00";
	document.getElementById("mainimg1").style.borderWidth="5px";
}
//鼠标离开时的动作
function outimg1_change(){
	document.getElementById("mainimg1").style.borderColor="#FF9"
	document.getElementById("mainimg1").style.borderWidth="1px";
}

//#######################小主图二自身改变###########################################
//鼠标在上面移动时的变化
function moveimg2_change(){
	document.getElementById("mainimg2").style.borderColor="#F00";
	document.getElementById("mainimg2").style.borderWidth="5px";
}
//鼠标离开时的动作
function outimg2_change(){
	document.getElementById("mainimg2").style.borderColor="#FF9"
	document.getElementById("mainimg2").style.borderWidth="1px";
}
//#######################小主图三身改变#############################################
//鼠标在上面移动时的变化
function moveimg3_change(){
	document.getElementById("mainimg3").style.borderColor="#F00";
	document.getElementById("mainimg3").style.borderWidth="5px";
}
//鼠标离开时的动作
function outimg3_change(){
	document.getElementById("mainimg3").style.borderColor="#FF9"
	document.getElementById("mainimg3").style.borderWidth="1px";
}
//#######################小主图四身改变##############################################
//鼠标在上面移动时的变化
function moveimg4_change(){
	document.getElementById("mainimg4").style.borderColor="#F00";
	document.getElementById("mainimg4").style.borderWidth="5px";
}
//鼠标离开时的动作
function outimg4_change(){
	document.getElementById("mainimg4").style.borderColor="#FF9"
	document.getElementById("mainimg4").style.borderWidth="1px";
}
//#######################小主图五身改变##############################################
//鼠标在上面移动时的变化
function moveimg5_change(){
	document.getElementById("mainimg5").style.borderColor="#F00";
	document.getElementById("mainimg5").style.borderWidth="5px";
}
//鼠标离开时的动作
function outimg5_change(){
	document.getElementById("mainimg5").style.borderColor="#FF9"
	document.getElementById("mainimg5").style.borderWidth="1px";
}
//#######################小主图六身改变###############################################
//鼠标在上面移动时的变化
function moveimg6_change(){
	document.getElementById("mainimg6").style.borderColor="#F00";
	document.getElementById("mainimg6").style.borderWidth="5px";
}
//鼠标离开时的动作
function outimg6_change(){
	document.getElementById("mainimg6").style.borderColor="#FF9"
	document.getElementById("mainimg6").style.borderWidth="1px";
}
/*===========================增加商品数量===================================================*/
function commodityadd(){
	document.getElementById("buynum").value++;	
}
/*===========================减少商品数量====================================================*/
function commodityreduce(){
	if(document.getElementById("buynum").value>0){
		document.getElementById("buynum").value--;
	}	
	else{
		window.alert("已经是零，不可以再减少了！")
	}
}

/*===========================今日特价专区的漂动=========================================*/
function resetad(){
//	alert(document.body.scrollTop);
//	x=(document.body.scrollTop+350).toString();
//	alert(x+'px');
	document.getElementById("adposition").style.top = (document.documentElement.scrollTop+350)+'px';
//	document.getElementById("adposition").style.top =  (x+'px');
	document.getElementById("adposition").style.left = document.body.scrollLeft;
}

/*===========================右侧购物车与客户服务专区的漂动===============================*/
function resetbuycar(){
	document.getElementById("buycar").style.top = (document.documentElement.scrollTop+350)+'px';
	document.getElementById("buycar").style.right = document.documentElement.scrollLeft;
}
/*===========================添加购物列表==============================================*/
function pushshoplist(){
	
	var paratr=document.createElement('tr');

	var paratd1= document.createElement('td');
	comname=document.title.replace('详情页','');
	var paradat1=document.createTextNode(comname);
	paratd1.appendChild(paradat1);
/*	
	var paratd3= document.createElement('td');
	var paradat3=document.createTextNode('6');
	paratd3.appendChild(paradat3)
*/	
	var paratd2= document.createElement("td");
	comnum=document.getElementById('buynum').value;
	var paradat2=document.createTextNode(comnum);
	paratd2.appendChild(paradat2);

	
	element=document.getElementById('shoplist');
	element.appendChild(paratr);
	element.appendChild(paratd1);
	element.appendChild(paratd2);
//	element.appendChild(paratd3);
	
}
/*===========================立即购物列表==============================================*/
function pushpaylist(){
	
	
	var para= document.createElement("option");
	para.selected='selected';
	comnameimit=document.getElementById('mainimg1').name;
	comnumimit=document.getElementById('buynum').value;
	comnameandnumimit=(comnameimit + 'r' + comnumimit);
	var paradat=document.createTextNode(comnameandnumimit);
	para.appendChild(paradat);

	
	element=document.getElementById('buyimit');
	element.appendChild(para);

}
/*===========================添加购物清单列表=======================================*/
var slt= 0;
$("document").ready(function(){
	$("#btnshoplist").click(function(){
		commodityencoding=document.getElementById('mainimg1').name;
		shoplistnum=document.getElementById('buynum').value;
		slt += (Number (shoplistnum))
		appendstr='<option selected>'+commodityencoding+'r'+shoplistnum+'</option>';
		$("#formshoplist").append(appendstr);
		//document.getElementById('shoplisttotalnumid').innerHTML=slt;
		$('#shoplisttotalnumid').html(slt);
	});
});

/*===========================添加购物结算清单列表=======================================*/
$("document").ready(function(){
		comcode=$("#comcode").text();
		//alert(comcode);
		paylistnum=$("#comnum").text();
		//alert(paylistnum);
		shoplistcode=$('#shoplistcode').text();
		//alert(shoplistcode);
		appendstr='<option selected>'+shoplistcode+'r'+comcode+'r'+paylistnum+'</option>';
		//alert(appendstr);
		$("#formpaylist").append(appendstr);
});
/*===========================选择运送方式=============================================*/
expressdeliveprice=0;
codcom=0;
nucom=0;
$("document").ready(function(){
	$("#deway").change(function(){
		expressdeliveway=document.getElementById('deway').value;
		//alert(expressdeliveway);
		$('#labdeway').html(expressdeliveway);
		//totalcount();
	});
	codcom=document.getElementById('codecom').innerHTML;
	//alert(codcom);
	nucom=document.getElementById('numcom').innerHTML;
	//alert(nucom);
	expressdeliveway=document.getElementById('deway').value;
	//alert(expressdeliveway);
	if ('普通快递6元'==expressdeliveway){
		expressdeliveprice='6';
		//alert(expressdeliveway);
		//alert(expressdeliveprice);
	}
	else if ('顺丰快递22元'==expressdeliveway){
		expressdeliveprice='22';
		//alert(expressdeliveway);
		//alert(expressdeliveprice);
	}
	else{
		expressdeliveprice='42';
		//alert(expressdeliveway);
		//alert(expressdeliveprice);
	}
/*	shipinsurancevalue=document.getElementById('shipinsurance').value;
	alert(shipinsurancevalue);
	if('0.2'== shipinsurancevalue){
		shipinsurancevalue='0.2';
		alert('i have checked!');
	}
	else{
		shipinsurancevalue='0';
		alert('i have not checked!');
	}*/
/*	if(true == document.getElementById('shipinsurance').checked){
		shipinsurancevalue='0.2';
	}
	else{
		shipinsurancevalue='0';
	}*/
/*	alert(shipinsurancevalue);
	$('couponuse').change(function(){
		if(true == document.getElementById('couponuse').checked){
			$('#coupon').show();
		}
		else{
			$('#coupon').hide();
		}
	});	
*/	fushipinsurance();
	totalcount();	
	$("#deway").change(function(){
		if ('普通快递6元'==expressdeliveway){
			expressdeliveprice='6';
			//alert(expressdeliveway);
			//alert(expressdeliveprice);
		}
		else if ('顺丰快递22元'==expressdeliveway){
			expressdeliveprice='22';
			//alert(expressdeliveway);
			//alert(expressdeliveprice);
		}
		else{
			expressdeliveprice='42';
			//alert(expressdeliveway);
			//alert(expressdeliveprice);
		}
		totalcount();
		addformstr();
		//alert('收到总价');
	});
});
/*===================显示或隐藏对话框===========================================*/
function couponshowandhidden(){
		if(true == document.getElementById('couponuse').checked){
			$('#coupon').show();
		}
		else{
			$('#coupon').hide();
		}
}
/*===================是否选择运费险=============================================*/	shipinsurancevalue=0;
function fushipinsurance(){
	if(true == document.getElementById('shipinsurance').checked){
		shipinsurancevalue='0.2';
	}
	else{
		shipinsurancevalue='0';
	}
	totalcount();
	//alert(shipinsurancevalue);
	addformstr();
}
/*===================计算店铺合计==============================================*/
pricecoupon=0;
function totalcount(){
	pricetocom=document.getElementById('pricecomto').innerHTML;
	//alert(pricetocom);
	expconprice=(Number(pricetocom)+ Number(expressdeliveprice)+ Number(shipinsurancevalue));
	//alert(expconprice);
	expconpricestr=('￥'+expconprice.toString());
	//alert(expconpricestr);
	//alert(typeof expconpricestr);
	document.getElementById('conexpprice').innerHTML=expconpricestr;
	pricecouponstr=document.getElementById('couponprice').innerHTML;
	//alert(pricecouponstr);
	pricecoupon= (Number (pricecouponstr.replace('￥','')));
	//alert(typeof pricecoupon);
	//alert(pricecoupon);	
	//alert(expconprice);
	pricepay=(expconprice - pricecoupon);
	//alert(pricepay);
	pricepaystr=('￥'+ pricepay.toString());
	document.getElementById('payprice').innerHTML=pricepaystr;
	addformstr();
}

/*=======================同步收货信息到右下角====================================*/
function syncinfo(){
	//alert('come in');
	nameaddr=document.getElementById('addrnameid').value;
	//alert(nameaddr);
	document.getElementById('nameaddrid').innerHTML=nameaddr;
	
	nameset=document.getElementById('setnameid').value;
	//alert(nameset);
	document.getElementById('namesetid').innerHTML=nameset;

	nophone=document.getElementById('phonenoid').value;
	//alert(nophone);
	document.getElementById('nophoneid').innerHTML=nophone;
	//addformstr();
}

/*=======================拼接填充增加最后数据=====================================*/
function addformstr(){
/*	alert(codcom);
	alert(nucom);
	alert(expressdeliveprice);
	alert(shipinsurancevalue);
	alert(pricecoupon);
*/
	shoplistencode=document.getElementById('shoplistencode').innerHTML;
	straddprice=(shoplistencode+'r'+codcom + 'r' + nucom + 'r' + expressdeliveprice + 'r' + shipinsurancevalue + 'r' + pricecoupon);
	//alert(straddprice);
	$('#priceaddstr').empty();
	$('#priceaddstr').append('<option>' + straddprice + '</option>');
	//alert('ok4');
/*	var para = document.createElement('option');
	alert('ok1');
	var paradat= document.createTextNode(straddprice);
	para.appendChild(paradat);
	alert('ok');

	element = document.getElementById('priceaddstr');
	alert('ok2');
	//element.appendChild(para);
	element.appendChild(para);
	alert('ok3');
*/
}







