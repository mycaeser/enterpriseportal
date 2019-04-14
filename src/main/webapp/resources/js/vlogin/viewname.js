/**
 * 
 */
$(function(){
	var getUserSessionNameUrl='/enterpriseportal/local/getsessionname';
	$.ajaxSetup({async: false});
	var userNameSession='';
	var userPriority=0;
	$.getJSON(getUserSessionNameUrl,function(item,data){
		if(item!=null){
			userNameSession=item.userNameString;
			userPriority=item.userPriority;
		}
	});
	if(userNameSession!=''&&userPriority!=0){
		var viewHTML='';
		var viewHTML1='';
		var viewHTML2='';
		if(userPriority==1){
			viewHTML='用户：'+userNameSession;
			$('#doc-vld-name').val(userNameSession);
		}else if(userPriority==2){
			viewHTML='医生：'+userNameSession;
			viewHTML1='<a target="_blank" href="/enterpriseportal/vlogin/chatback">咨询回复</a>';
			viewHTML2='<a target="_blank" href="/enterpriseportal/vlogin/confirmcurepagebydoctor">就诊确认</a>';
			$('#achatView').html(viewHTML1);
			$('#regView').html(viewHTML2);
		}
		viewHTML='<span style="color:white;">'+viewHTML+'</span>&nbsp;&nbsp;<a id="logot01" href="javascript:;">注销</a>';
		$('#loginView').html(viewHTML);
	}
	$('#logot01').click(function(){
		var formData = new FormData();
		$.ajax({
			url : '/enterpriseportal/local/logout2',
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false,
			cache : false,
			success : function(data) {
				//self.location='/enterpriseportal/frontend/index';
			}
		});
		
        $('#regView').html('<a href="/enterpriseportal/projectstt/index?a=1&b=1">在线咨询</a>');
        $('#achatView').html('<a href="/enterpriseportal/projectstt/hr">预约挂号</a>');
        $('#loginView').html('<a href="/enterpriseportal/vlogin/login" >注册/登陆 </a>');
	})
})
