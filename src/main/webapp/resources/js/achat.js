/**
 * 
 */
$(function(){
	var getAchatListUrl='/enterpriseportal/achat/getachat';
	var addChatUrl='/enterpriseportal/achat/addachat';
	var getDoctorsUrl='/enterpriseportal/doctorinfo/getdoctorinfolist';
	var docObj={};
	$.ajaxSetup({async:false});
	$.getJSON(getDoctorsUrl,function(item,data){
		docObj=item.doctorInfoList;
		var viewHTML='';
		docObj.map(function(item,data){
			if(item.aac808==1){
				viewHTML=viewHTML+'<option value="'+item.aac801+'">'+item.aac803+'</option>';
			}
		});
		$('.select-doctors').html(viewHTML);
	});
	$.getJSON(getAchatListUrl,function(item,data){
		var chatObj=item.achatList;
		var viewHTML='';
		chatObj.map(function(item,data){
			viewHTML+='<li><span>'+
			item.aac603+'</span><i>'+item.aac604+'</i></li>';
		});
		$('.cm-new-list-ul').html(viewHTML);
	})
	$('#btn-login').click(function(){
		var subMessage=$('#subMessage').val();
		if(subMessage==''){
			alert('请输入信息');
			return;
		}
		var doctorName1 = $('.select-doctors').find('option').not(
				function() {
					return !this.selected;
				}).text();
		subMessage='咨询医生：【'+doctorName1+'】'+subMessage;
		var formData=new FormData();
		formData.append('subMessage',subMessage);
		$.ajax({
			url : addChatUrl,
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false,
			cache : false,
			success : function(data) {
				alert('提问成功');
				self.location='/enterpriseportal/projectstt/index?a=1&b=1';
			}
		});
	})
	
})