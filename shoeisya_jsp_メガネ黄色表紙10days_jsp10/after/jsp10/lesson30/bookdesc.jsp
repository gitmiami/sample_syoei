<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<sql:setDataSource var="db" dataSource="jdbc/Jsp10" />
<sql:query var="rs" dataSource="${db}">
	SELECT * FROM books WHERE isbn=?
	<sql:param value="${param['isbn']}" />
</sql:query>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>書籍情報詳細</title>
</head>
<body>
<c:forEach var="row" items="${rs.rows}">
	<table border="1">
	<tr>
	<th style="text-align:right;">ISBNコード：</th>
	<td>${row.isbn}</td>
	</tr>
	<tr>
	<th style="text-align:right;">書名：</th>
	<td>${fn:escapeXml(row.title)}</td>
	</tr>
	<tr>
	<th style="text-align:right;">価格：</th>
	<td><fmt:formatNumber value="${row.price}"
		type="CURRENCY" currencySymbol="￥" groupingUsed="true"
		maxFractionDigits="0"/></td>
	</tr>
	<tr>
	<th style="text-align:right;">出版社：</th>
	<td>${row.publish}</td>
	</tr>
	<tr>
	<th style="text-align:right;">刊行日</th>
	<td><fmt:formatDate value="${row.published}"
			type="DATE" dateStyle="LONG" /></td>
	</tr>
	</table>
</c:forEach>
</body>
</html>
