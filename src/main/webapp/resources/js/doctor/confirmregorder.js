/**
 * 
 */
$(function(){
	var getRegListUrl='/enterpriseportal/vlogin/getregistList';
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
		$.getJSON(getRegListUrl,function(item,data){
			var regObj=item.registList;
			var viewHTML1='<table class="table table-border table-bordered table-hover table-bg table-sort"><thead><tr class="text-c"><th width="20">ID</th><th width="100">姓名</th><th width="50">科室</th><th width="20">医生</th><th width="20">时间</th><th width="20">操作</th></tr></thead><tbody id="tableContent">';
			var viewHTML2='';
			regObj.map(function(item,data){
				var id=item.aac501;
				var doctor=item.aac506;
				var userName=item.aac502;
				if(userNameSession==doctor){
					var id=item.aac501;
					var dep=item.aac504;
					var opdate=item.aac503;
					var flagInt=item.aac505;
					var statusString='<a style="color:blue;" onclick="return confirm(\'请确认\');" href="/enterpriseportal/vlogin/confirmregistbyid?id='+id+'">确认就诊</a>';
					if(flagInt==1){
						statusString='已就诊';
					}
					viewHTML2=viewHTML2+'<tr class="text-c"><td>'+id+
			        '</td><td class="text-l">'+userName+
			        '</td><td>'+dep+
			        '</td><td>'+doctor+
			        '</td><td>'+opdate+
			        '</td><td>'+statusString;
				}
				
			});
			viewHTML1=viewHTML1+viewHTML2+'</tbody></table>';
			$('#cureStatus').html(viewHTML1);
		});
	}
	
	
})