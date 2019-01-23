/**
 * 
 */
$(function(){
	$('.exit').click(function(){
		$.getJSON('/enterpriseportal/local/logout');
		
		window.setTimeout(function(){self.location='/enterpriseportal/vlogin/login';}, 800);
		
	})
})