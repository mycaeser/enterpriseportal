/**
 * 
 */
$(function(){
	$('.exit').click(function(){
		$.ajax({ 
	        type: 'get', 
	       url: '/enterpriseportal/local/logout', 
	       cache:false, 
	       async:false, 
	        dataType: ($.browser.msie) ? 'test' : 'xml', 
	         success: function(){
	        } 
	});
		self.location='/enterpriseportal/vlogin/login';
//		$.getJSON('/enterpriseportal/local/logout');
//		
//		window.setTimeout(function(){self.location='/enterpriseportal/vlogin/login';}, 800);
		
	})
})