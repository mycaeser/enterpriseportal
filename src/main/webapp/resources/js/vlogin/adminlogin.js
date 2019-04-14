/**
 * 
 */
$(function(){
	$('#btn-login').click(function(){
		var loginAdminUrl='/enterpriseportal/local/logincheck';
		var userName=$('#userName').val();
		var password=$('#password').val();
		var priorityInt = $('input[name="priority"]:checked').val();
		var verifyCodeActual = $('#j_captcha').val();
        if (!verifyCodeActual) {
            alert('请输入验证码！');
            return;
        }
		if(userName==''||password==''){
			alert('请输入完整信息');
			return;
		}
		var formData=new FormData();
		formData.append('userName',userName);
		formData.append('password',password);
		formData.append('priority',priorityInt);
		formData.append('verifyCodeActual',verifyCodeActual);
		$.ajax({
			url : loginAdminUrl,
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false,
			cache : false,
			success : function(data) {
				if(data.success==false){
					alert(data.errMsg);
				}else{
					if(data.user=='administrator'){
						self.location='/enterpriseportal/cps/admin';
					}else{
						if(data.user1==null){
							alert('账户不存在');
						}else{
							self.location='/enterpriseportal/frontend/index';
						}
						
					}
				}
				
					
			}
		});
	})
})