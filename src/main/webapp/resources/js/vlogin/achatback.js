/**
 * 
 */
$(function(){
	var getAchatListUrl='/enterpriseportal/achat/getachat';
	var addAchatUrl='/enterpriseportal/achat/addachatback';
	var getSessionNameUrl='/enterpriseportal/local/getsessionname';
	$.ajaxSetup({async: false});
	var tmpHTML='';
	var userNameFromSession='';
	$.getJSON(getSessionNameUrl,function(item,data){
		userNameFromSession=item.userNameString;
	});
	$.getJSON(getAchatListUrl,function(item,data){
		var achatObj=item.achatList;
		var viewHTML='';
		var count=0;
		
		achatObj.map(function(item,data){
			var id=item.aac601;
			var name=item.aac602;
			var questionString=item.aac603;
			var dataString=item.aac604;
			var flag=item.aac605;
			var flagStatusString=flag>0?'已回复':'未回复';
			if(flag==0){
				var startN=questionString.indexOf('【');
				var endN=questionString.indexOf('】');
				var newQuestionString=questionString.substring(startN+1,endN);
				console.log('name='+newQuestionString+'name2='+userNameFromSession);
				if(newQuestionString==userNameFromSession){
					tmpHTML=tmpHTML+'<option value="'+id+
					'">'+name+':'+questionString+'</option>';
				}
				
			}
			viewHTML=viewHTML+'<tr class="text-c"><td>'+id+
            '</td><td class="text-l">'+name+
            '</td><td>'+questionString+
            '</td><td>'+dataString+
            '</td><td>'+flagStatusString+
            '</td></tr>';
		});
		$('#tableContent').html(viewHTML);
		$('#template1').html(tmpHTML);
	});
	$('#subButton').click(function(){
		var quesId=$('#template1').find('option').not(
					function() {
						return !this.selected;
					}).val();
		var quesContent=$('#backcontent').val();
		if(quesContent==''){
			alert('请输入内容');
			return;
		}
		var formData = new FormData();
		formData.append('quesId', quesId);
		formData.append('quesContent', quesContent);
		// 发送请求
		$.ajax({
			url : addAchatUrl,
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false,
			cache : false,
			success : function(data) {
				alert('回复成功！');
				self.location='/enterpriseportal/vlogin/chatback';
			}
		});
	})
})