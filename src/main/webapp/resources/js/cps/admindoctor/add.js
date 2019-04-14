/**
 * 
 */
$(function(){
	var addDoctorInfoUrl='/enterpriseportal/doctorinfo/adddoctorinfo';
	$('#subButton').click(function(){
		var photoFile = $('#photoFile')[0].files[0];
		var loginName=$('#loginName').val();
		var userName=$('#userName').val();
		var phoneNumber=$('#phoneNumber').val();
		var idCard=$('#idCard').val();
		var workArea=$('#workArea').val();
		var depName = $('.select-department').find('option').not(
				function() {
					return !this.selected;
				}).text();
		if(photoFile==null){
			alert('请上传头像');
			return;
		}
		if(loginName==''||userName==''||phoneNumber==''||idCard==''||workArea==''){
			alert('请输入完整');
			return;
		}
		if(loginName.length>15||loginName.length<3){
			alert('登陆名应该在3到15位');
			return;
		}
		if(!(/^1[34578]\d{9}$/.test(phoneNumber))){ 
            alert("手机号码有误，请重填");  
            return false; 
        }
		var formData=new FormData();
		formData.append('loginName',loginName);
		formData.append('userName',userName);
		formData.append('phoneNumber',phoneNumber);
		formData.append('idCard',idCard);
		formData.append('workArea',workArea);
		formData.append('photoFile',photoFile);
		formData.append('depName',depName);
		$.ajax({
			url : addDoctorInfoUrl,
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false,
			cache : false,
			success : function(data) {
				alert('添加成功');
				self.location='/enterpriseportal/doctorinfo/showadddoctorinfo';
			}
		});
	});
})