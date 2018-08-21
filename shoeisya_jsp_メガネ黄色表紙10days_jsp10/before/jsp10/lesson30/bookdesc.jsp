<%@ page contentType="text/html; charset=UTF-8" %>
【ここに入力】
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>書籍情報詳細</title>
</head>
<body>
【ここに入力】
	<table border="1">
	<tr>
	<th style="text-align:right;">ISBNコード：</th>
	<td>${row.isbn}</td>
	</tr>
	<tr>
	<th style="text-align:right;">書名：</th>
【ここに入力】
	</tr>
	<tr>
	<th style="text-align:right;">価格：</th>
【ここに入力】
	</tr>
	<tr>
	<th style="text-align:right;">出版社：</th>
	<td>${row.publish}</td>
	</tr>
	<tr>
	<th style="text-align:right;">刊行日</th>
【ここに入力】
	</tr>
	</table>
</c:forEach>
</body>
</html>
