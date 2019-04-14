/**
 * 
 */
$(function(){
	$('#btn-login').click(function(){
		var loginAdminUrl='/enterpriseportal/vlogin/addaccount';
		var userName=$('#userName').val();
		var password=$('#password').val();
		var realname=$('#realname').val();
		var idcard=$('#idcard').val();
		var phone=$('#phone').val();
		if(userName==''||password==''||realname==''||idcard==''||phone==''){
			alert('请输入完整信息');
			return;
		}
		if(userName.length>15||userName.length<3){
			alert('用户名长度应该在3到15');
			return;
		}
		if(password.length>15||password.length<6){
			alert('密码长度应该在6到15');
			return;
		}
		var reg = /^[1-9]{1}[0-9]{14}$|^[1-9]{1}[0-9]{16}([0-9]|[xX])$/;
        if(!reg.test(idcard)){
        	alert('身份证格式不对');
			return;
        }
        if(!(/^1[34578]\d{9}$/.test(phone))){ 
            alert("手机号码有误，请重填");  
            return false; 
        } 
		var formData=new FormData();
		formData.append('userName',userName);
		formData.append('password',password);
		formData.append('realname',realname);
		formData.append('idcard',idcard);
		formData.append('phone',phone);
		$.ajax({
			url : loginAdminUrl,
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false,
			cache : false,
			success : function(data) {
				alert('注册成功');
				self.location='/enterpriseportal/cps/admin';
			}
		});
	})
})