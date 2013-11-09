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
<label>キーワード：
<input type="text" name="keywd" size="15" /></label>
<input type="button" value="検索" id="btnsend" />
<hr />
<div id="json"></div>
<!--
<hr />
<ul id="result"></ul>
 -->
</form>
<script>
	$(function(){
		$('#btnsend').click(function(){
			//alert('test');
			$('#result').html('通信中...');
			$.ajax({
				url:'../json/test2.json',
				type:'GET',
				dataType:'json',
				data:$('form').serializeArray(),
				timeout:5000,
				success:function(data){
					$.each(data,function(key,val){
						//alert(key + val);
						$.each(val,function(i,ary){
							alert(key + ':' + ary.color + ':' + ary.name);

						});

					});

					//$('#json').load('../json/test.json');
/*
					$('#result').empty();
					for(var i=0; i<data.colors.length;i++){
						$('#result').append(
							$('<li></li>').append(
								$('<a></a>')
									.attr('href',data.colors[i].color)
									.html(data.colors[i].name)
							)
						);
					}
*/
				},
				error:function(){
					$('#result').html('サーバエラーが発生しました。');
				}
			});
		});
	});
</script>
</body>
</html>