/**
 * 
 */
$(function(){
	var fixedUrl='/enterpriseportal/frontend';
	var getAddressUrlot=fixedUrl+'/getaddressot';
	var getAddressByIdUrl=fixedUrl+'/getaddress?addid=';
	var otObj={};
	var otHtml='';
	$.getJSON(getAddressUrlot,function(data){
		otObj=data.addList;
		otObj.map(function(item,data){
			otHtml+='<div class="title">'+item.addName+'</div>地址:'+item.addContent+'('+item.addPhoneOwner+'：'+item.addPhoneNumber+')';
		});
		$('#cp-itemstt').html(otHtml);
	});
	$.getJSON(getAddressByIdUrl+1,function(data){
		otObj=data.add;
		$('#pcpy-email').html(otObj.addEmail);
	})
	$.getJSON(getAddressByIdUrl+2,function(data){
		otObj=data.add;
		$('.parent-cpy1').html(otObj.addContent);
		$('#cpy1-phone').html(otObj.addPhoneNumber);
	})
	$.getJSON(getAddressByIdUrl+3,function(data){
		otObj=data.add;
		$('.parent-cpy2').html(otObj.addContent);
		$('#cpy2-phone').html(otObj.addPhoneNumber);
	})
})