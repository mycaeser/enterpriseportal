/**
 * 
 */
$(function(){
	var getHrInfoUrl='/enterpriseportal/projectstt/gethrinfo?typeid=2';
	var outHtml1='<table class="imagetable" border="1"><tr><th>编号</th><th>标题</th><th>日期</th><th>操作</th></tr>';
	var outHtml2='';
	var outHtml3=' </table>';
	$.getJSON(getHrInfoUrl,function(data){
		var newsObj=data.newsList;
		newsObj.map(function(item,data){
			outHtml2+='<tr><td>'+item.aac101+'</td><td>'+item.aac102+'</td><td>'+item.aac112+'</td><td><a onclick="return confirm(\'请确认删除\');" href="/enterpriseportal/addprojectsarticle/delpjtone?tohr=2&id='+item.aac101+'&img1='+item.aac109+'&img2='+item.aac110+'&img3='+item.aac111+'" >删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a " >编辑</a></td></tr>';
		});//
		$('.ue-clear').html('<div class="blue"><div id="slatenav"><ul><li><a href="/enterpriseportal/cps/addhrarticleview" >新增文章</a></li></ul></div></div>'+outHtml1+outHtml2+outHtml3);
	});
})