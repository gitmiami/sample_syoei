<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="win" tagdir="/WEB-INF/tags" %>
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
		<select name="date_year">
			<win:CreateOption start="2015" end="2020" /></select>年
		<select name="date_month">
			<win:CreateOption start="1" end="12" /></select>月
		<select name="date_day">
			<win:CreateOption start="1" end="31" /></select>日
	</label>
</div>
<div>
	<label>開始時間：<br />
		<select name="time_hour">
			<win:CreateOption start="0" end="23" /></select>時
		<select name="time_minute">
			<win:CreateOption start="0" end="59" /></select>分
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
