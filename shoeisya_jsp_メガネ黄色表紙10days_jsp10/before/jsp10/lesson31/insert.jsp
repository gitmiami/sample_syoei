<%@ page contentType="text/html;charset=UTF-8" %>
【ここに入力】
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>簡易スケジュール帳</title>
</head>
<body>
<form method="POST" action="InsertServlet">
<div>
	<label>予定名：<br />
		<input type="text" name="title" size="50" maxlength="255" />
	</label>
</div>
<div>
	<label>日付：<br />
【ここに入力】
	</label>
</div>
<div>
	<label>開始時間：<br />
【ここに入力】
	</label>
</div>
<div>
	<label>備考：<br />
		<td><input type="text" name="memo" size="70" maxlength="255" />
	</label>
</div>
<div>
	<input type="submit" value="登録" />
</div>
</form>
</body>
</html>
