/**
 * 
 */
$(function(){
	///enterpriseportal/cps/viewparta?a=1
	var addNewArticleUrl='/enterpriseportal/cps/addcompanybyid';
	var deleteArticleUrl='/enterpriseportal/cps/deletecompanybyid';
	var ma=getQueryString('a');
	if(ma!=null){
		$('.btn-return').click(function(){//给返回按钮加上ID
			self.location='/enterpriseportal/cps/viewparta?a='+ma;
		});
		$('.cabtn').click(function(){//给确认按钮加上事件
			var partId=ma;
			var inputTitle=$('#cl-title').val();
			var inputDate=$('#cl-date').val();
			var inputParta=$('#content1').val();
			var inputPartb=$('#content2').val();
			var inputPartc=$('#content3').val();
			var clImg1 = $('#cl-imgf1')[0].files[0];
			var clImg2 = $('#cl-imgf2')[0].files[0];
			var clImg3 = $('#cl-imgf3')[0].files[0];
			if(inputTitle==null||inputDate==null||clImg1==null||clImg2==null||clImg3==null){
				//标题、图片如果有未填写的
				alert('请输入指定内容再提交！');
			}else{
				var formData = new FormData();
				formData.append('partid',partId);
				formData.append('inputTitle',inputTitle);
				formData.append('inputDate', inputDate);
				formData.append('inputParta', inputParta);
				formData.append('inputPartb', inputPartb);
				formData.append('inputPartc', inputPartc);
				formData.append('clImg1',clImg1);
				formData.append('clImg2',clImg2);
				formData.append('clImg3',clImg3);
				$.ajax({
					url : addNewArticleUrl,
					type : 'POST',
					data : formData,
					contentType : false,
					processData : false,
					cache : false,
					success : function(data) {
							alert('修改成功');
							self.location='/enterpriseportal/cps/viewparta?a='+partId;
					}
				});
			}
		});
		
	}
	
})