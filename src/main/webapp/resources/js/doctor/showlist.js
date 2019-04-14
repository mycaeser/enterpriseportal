/**
 * 
 */
$(function(){
	var getDoctorListUrl='/enterpriseportal/doctorinfo/getdoctorinfolist';
	var viewHTML='';
	$.getJSON(getDoctorListUrl,function(item,data){
		var doctorObj=item.doctorInfoList;
		doctorObj.map(function(item,data){
			var id=item.aac801;
			var name=item.aac803;
			var loginName=item.aac802;
			var phone=item.aac804;
			var idCard=item.aac805;
			var photoUrl=item.aac806;
			var workArea=item.aac807;
			viewHTML=viewHTML+'<tr class="text-c"><td>'+id+
	        '</td><td class="text-l">'+loginName+
	        '</td><td>'+name+
	        '</td><td>'+phone+
	        '</td><td>'+idCard+
	        '</td><td><a href="/enterpriseportal/doctorinfo/showdetaildoctorinfo?id='+id+'&name='+name+'&phone='+phone+'&idCard='+idCard+'&photoUrl='+photoUrl+'&workArea='+workArea+'&loginName='+loginName+'">查看</a>';
		});
		$('#tableContent').html(viewHTML);
	})
})