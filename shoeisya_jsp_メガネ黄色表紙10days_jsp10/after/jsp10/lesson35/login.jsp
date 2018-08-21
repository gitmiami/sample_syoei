<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>フォーム認証</title>
</head>
<body>
<form method="POST" action="j_security_check">
<div>
	<label>ユーザー名：<br />
		<input type="text" name="j_username" size="15" />
	</label>
</div>
<div>
	<label>パスワード：<br />
		<input type="password" name="j_password" size="15" />
	</label>
</div>
<div>
	<input type="submit" value="ログイン" />
</div>
</form>
</body>
</html>
