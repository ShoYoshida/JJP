<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/JJP/js/jquery-1.9.1.js"></script>
</head>
<body>
<form>
<input type="button" value="出力" id="btnsend" />
<hr />
<ul id="result"></ul>
</form>
<script>
	$(function(){
		$('#btnsend').click(function(){
			$('#result').load('../json/test.json');
		});
	});
</script>
</body>
</html>