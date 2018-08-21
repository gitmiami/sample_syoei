<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>書籍情報詳細</title>
</head>
<body>
<table border="1">
<tr>
<th>ISBNコード</th>
<td>${requestScope['info'].isbn}</td>
</tr>
<tr>
<th>書名</th>
<td>${fn:escapeXml(requestScope['info'].title)}</td>
</tr>
<tr>
<th>価格</th>
<td><fmt:formatNumber value="${requestScope['info'].price}"
	 pattern="#,###円" /></td>
</tr>
<tr>
<th>出版社</th>
<td>${fn:escapeXml(requestScope['info'].publish)}</td>
</tr>
<tr>
<th>刊行日</th>
<td><fmt:formatDate value="${requestScope['info'].published}"
	pattern="yyyy年MM月dd日" /></td>
</tr>
</table>
</body>
</html>
