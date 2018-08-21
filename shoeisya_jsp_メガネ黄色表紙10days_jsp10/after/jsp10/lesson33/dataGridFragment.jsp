<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="win" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>データベース検索</title>
</head>
<body>
<win:DataGridFrag dataSource="jdbc/Jsp10" sql="SELECT * FROM books">
	<jsp:attribute name="header">
		<table border="1">
			<tr>
				<th>ISBNコード</th><th>書名</th><th>価格</th>
				<th>出版社</th><th>刊行日</th>
			</tr>
	</jsp:attribute>
	<jsp:attribute name="body">
		<tr>
			<td>${isbn}</td>
			<td>${fn:escapeXml(title)}</td>
			<td><fmt:formatNumber value="${price}" pattern="#,###円" /></td>
			<td>${fn:escapeXml(publish)}</td>
			<td><fmt:formatDate value="${published}" pattern="yyyy年MM月dd日" /></td>
		</tr>
	</jsp:attribute>
	<jsp:attribute name="footer">
		</table>
	</jsp:attribute>
</win:DataGridFrag>
</body>
</html>
