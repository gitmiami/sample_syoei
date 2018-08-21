<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="win" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>データベース検索</title>
</head>
<body>
<win:DataGrid dataSource="jdbc/Jsp10" sql="SELECT * FROM books" />
</body>
</html>
