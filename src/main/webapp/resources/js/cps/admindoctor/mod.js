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
			var dayoff=item.aac808;
			var dayoffStatus='';
			var dayViewHTML='';
			if(dayoff==1){
				dayoffStatus='在岗';
				dayViewHTML='<a href="/enterpriseportal/doctorinfo/updatedoctordayoffbyid?doctorId='+id+'&dayoff=0">请假</a>'
			}else if(dayoff==0){
				dayoffStatus='已休假';
				dayViewHTML='<a href="/enterpriseportal/doctorinfo/updatedoctordayoffbyid?doctorId='+id+'&dayoff=1">恢复上班</a>'
			}
			viewHTML=viewHTML+'<tr class="text-c"><td>'+id+
	        '</td><td class="text-l">'+loginName+
	        '</td><td>'+name+
	        '</td><td>'+phone+
	        '</td><td>'+idCard+
	        '</td><td>'+dayoffStatus+
	        '</td><td><a href="/enterpriseportal/doctorinfo/showdetaildoctorinfo?id='+id+'&name='+name+'&phone='+phone+'&idCard='+idCard+'&photoUrl='+photoUrl+'&workArea='+workArea+'&loginName='+loginName+'">查看</a>&nbsp;&nbsp;&nbsp;<a href="/enterpriseportal/doctorinfo/showmoddoctorinfodetail?id='+id+'&name='+name+'&phone='+phone+'&idCard='+idCard+'&photoUrl='+photoUrl+'&workArea='+workArea+'&loginName='+loginName+'">修改</a>&nbsp;&nbsp;&nbsp;<a  onclick="return confirm(\'请确认删除\');" href="/enterpriseportal/doctorinfo/deletedoctorinfo?id='+id+'">删除</a>&nbsp:&nbsp;'+dayViewHTML+'</td></tr>';
		});
		$('#tableContent').html(viewHTML);
	})
})