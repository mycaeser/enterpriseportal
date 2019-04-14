/**
 * 
 */
$(function(){
	var addRegistUrl='/enterpriseportal/vlogin/addregist';
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
	$("#selectDep").change(function () {
		var viewHTML1='';
		var typeName = $(this).children('option:selected').text();
		docObj.map(function(item,data){
			if(typeName==item.aac809){
				viewHTML1=viewHTML1+'<option value="'+item.aac801+'">'+item.aac803+'</option>';
			}
		});
		$('.select-doctors').html(viewHTML1);
    });
	$('#docSubmit').click(function(){
		var mdate=$('.getdate').val();
		var name=$('#doc-vld-name').val();
		var phone=$('#doc-vld-tel').val();
		console.log('date='+mdate);
		var depa = $('.select-department').find('option').not(
				function() {
					return !this.selected;
				}).val();
		var depaT = $('.select-department').find('option').not(
				function() {
					return !this.selected;
				}).text();
		
		var doctorName = $('.select-doctors').find('option').not(
				function() {
					return !this.selected;
				}).text();
		if(mdate=''||name==''||phone==''||depa==''){
			alert('请输入完整');
			return;
		}
		var formData = new FormData();
		formData.append('mdate',mdate);
		formData.append('name',name);
		formData.append('phone',phone);
		formData.append('depa',depa);
		formData.append('depaT',depaT);
		formData.append('doctorName',doctorName);
		$.ajax({
			url : addRegistUrl,
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false,
			cache : false,
			success : function(data) {
					alert('挂号成功');
					self.location='/enterpriseportal/projectstt/hr';
			}
		});
	})
})