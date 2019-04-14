/**
 * 
 */
$(function(){
	var updateDoctorInfoByTargetUrl='/enterpriseportal/doctorinfo/updatedoctorinfobytarget';
	var id=getQueryString('id');
	var name=getQueryString('name');
	var phone=getQueryString('phone');
	var idCard=getQueryString('idCard');
	var photoUrl=getQueryString('photoUrl');
	var workArea=getQueryString('workArea');
	var loginName=getQueryString('loginName');
	$('#photoImg').html('<img src="/'+photoUrl+'">');
	$('#userName').val(name);
	$('#phoneNumber').val(phone);
	$('#idCard').val(idCard);
	$('#workArea').val(workArea);
	$('#loginName').val(loginName);
	$('#subButton').click(function(){
		var loginName=$('#loginName').val();
		var userName=$('#userName').val();
		var phoneNumber=$('#phoneNumber').val();
		var idCard=$('#idCard').val();
		var workArea=$('#workArea').val();
		var formData=new FormData();
		formData.append('loginName',loginName);
		formData.append('userName',userName);
		formData.append('phoneNumber',phoneNumber);
		formData.append('idCard',idCard);
		formData.append('workArea',workArea);
		formData.append('id',id);
		$.ajax({
			url : updateDoctorInfoByTargetUrl,
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false,
			cache : false,
			success : function(data) {
				alert('修改成功');
				self.location='/enterpriseportal/doctorinfo/showmoddoctorinfo';
			}
		});
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