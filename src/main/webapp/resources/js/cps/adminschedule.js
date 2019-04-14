/**
 * 
 */
$(function(){
	$.ajaxSetup({async: false});
	var getScheduletListUrl='/enterpriseportal/schedule/getschedulelist';
	var getUserNameUrl='/enterpriseportal/newstt/getnews?typeid=1';
	var updateScheduleUrl='/enterpriseportal/schedule/updateschedulelist';
	var viewHTML4=new Array();
	$.getJSON(getScheduletListUrl,function(item,data){
		var createdTime=new Date(); 
		var y=createdTime.getFullYear(),m=createdTime.getMonth()+1,d=createdTime.getDate();
		var scheduleObj=item.scheduleList;
		var viewHTML1='';
		var viewHTML2='';
		var viewHTML3='';
		var count=1;
		
		scheduleObj.map(function(item,data){
			var date = new Date();
			var month = date.getMonth()+1;
			var year = date.getYear();
			var d = new Date(year,month,0);    
			var days = d.getDate();
			//console.log(days);
			viewHTML1=viewHTML1+'<td>'+item.aac702+'</td>';
			viewHTML2=viewHTML2+'<th>'+m+'-'+count+'</th>';
			if(count%7==0){
				viewHTML3=viewHTML3+'<tr>'+viewHTML2+'</tr><tr>'+viewHTML1+'</tr>';
				viewHTML1='';
				viewHTML2='';
			}
			if(count>28){
				if(count==days){
					viewHTML3=viewHTML3+'<tr>'+viewHTML2+'</tr><tr>'+viewHTML1+'</tr>';
					
				}
			}
			if(count<=days){
				viewHTML4[count-1]=m+'-'+count;
			}
			
			count++;
		});
		//console.log(viewHTML4);
		$('#tableSchedule').html(viewHTML3);
	});
	var opHtml='';
	var opHtml1='';
	for(var i=0;i<viewHTML4.length;i++){
		opHtml=opHtml+'<option value='+(i+1)+'>'+viewHTML4[i]+'</option>';
	}
	$.getJSON(getUserNameUrl,function(item,data){
		var userObj=item.projectsList;
		userObj.map(function(item,data){
			opHtml1=opHtml1+'<option>'+item.aab102+'</option>';
		});
	})
	$('#selectName').html(opHtml1);
	$('#selectDate').html(opHtml);
	$('#addSubmit').click(function(){
		var selectName=$('#nowWorker').text();
		var selectDate=$('#selectDate').find('option').not(function() {
			return !this.selected;
		}).val();
		var formData = new FormData();
		formData.append('selectName',selectName);
		formData.append('selectDate',selectDate);
		//发送请求
		$.ajax({
			url : updateScheduleUrl,
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false,
			cache : false,
			success : function(data) {
				alert('修改成功！');
				self.location='/enterpriseportal/schedule/index';
			}
		});
	});
	$('#addSubmit2').click(function(){
		var selectName=$('#selectName').find('option').not(function() {
			return !this.selected;
		}).text();
		var formerP=$('#nowWorker').text();
		var partS=formerP.split(',');
		for(var i=0;i<partS.length;i++){
			if(partS[i]==selectName){
				alert('添加过了');
				return;
			}
		}
		var finalString=formerP+','+selectName;
		if(formerP==''){
			finalString=selectName;
		}
		$('#nowWorker').html(finalString);
	})
})