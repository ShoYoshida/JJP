<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/JJP/js/jquery-1.9.1.js"></script>

<style>
table{
	border-color: #000000;
	border-spacing: 0px;
	border:1px solid;
}
</style>
</head>
<body>
index
<div id="test">
	<table id="tab">
	</table>

</div>
<script>
$(function(){
	$.ajax({
		type:'GET',
		url:'../json/test.json',
		dataType:'json',
		success:function(data){
           //alert(data.name);
           var are = data.colors;
           $.each(are,function(i,val){
        	   //alert(val.color);
               $('#tab').append(
                   	$('<tr></tr>')
	                   	.append(
	                   			$('<td></td>').text(
	                   					val.color
	                   			)
	                   	)
	                   	.append(
	                   			$('<td></td>').text(
	                   					val.name
	                   			)
	                   	)
                );
           });
		},
		error:function(){
			alert('Error!');
		}
	});
});
</script>
</body>
</html>