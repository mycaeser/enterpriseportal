/**
 * 
 */
$(function(){
	var id=getQueryString('id');
	var name=getQueryString('name');
	var phone=getQueryString('phone');
	var idCard=getQueryString('idCard');
	var photoUrl=getQueryString('photoUrl');
	var workArea=getQueryString('workArea');
	$('#photoImg').html('<img src="/'+photoUrl+'">');
	$('#userName').val(name);
	$('#phoneNumber').val(phone);
	$('#idCard').val(idCard);
	$('#workArea').val(workArea);
	$('#subButton').click(function(){
		self.location='/enterpriseportal/doctorinfo/showmoddoctorinfo';
	})
})

function getQueryString(name) {
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
		var r = window.location.search.substr(1).match(reg);
		if (r != null) {
			return decodeURIComponent(r[2]);
		}
		return '';
	}