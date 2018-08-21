<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<sql:setDataSource var="db" dataSource="jdbc/Jsp10" />
<sql:query var="rs" dataSource="${db}">
	SELECT * FROM books ORDER BY published DESC</sql:query>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>書籍情報一覧</title>
</head>
<body>
<table border="1">
<tr>
	<th>ISBNコード</th><th>書名</th><th>価格</th>
	<th>出版社</th><th>刊行日</th>
</tr>
<c:forEach var="row" items="${rs.rows}">
	<tr>
		<td><a href="bookdesc.jsp?isbn=${row.isbn}">
			${row.isbn}</a></td>
		<td>${fn:escapeXml(row.title)}</td>
		<td><fmt:formatNumber value="${row.price}"
			type="CURRENCY" currencySymbol="￥" groupingUsed="true"
			maxFractionDigits="0"/></td>
		<td>${row.publish}</td>
		<td><fmt:formatDate value="${row.published}"
			type="DATE" dateStyle="LONG" /></td>
	</tr>
</c:forEach>
</table>
</body>
</html>
