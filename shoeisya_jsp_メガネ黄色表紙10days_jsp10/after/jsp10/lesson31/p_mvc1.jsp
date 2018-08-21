<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
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
<c:forEach var="info" items="${requestScope['list']}">
	<tr>
		<td><a href="P_MvcServlet2?isbn=${info.isbn}">${info.isbn}</a></td>
		<td>${fn:escapeXml(info.title)}</td>
		<td><fmt:formatNumber value="${info.price}" pattern="#,###円" /></td>
		<td>${fn:escapeXml(info.publish)}</td>
		<td><fmt:formatDate value="${info.published}"
			 pattern="yyyy年MM月dd日" /></td>
	</tr>
</c:forEach>
</table>
</body>
</html>
