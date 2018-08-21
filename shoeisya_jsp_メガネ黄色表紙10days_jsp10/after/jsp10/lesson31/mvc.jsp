<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn"	uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>簡易スケジュール帳</title>
</head>
<body>
<table border="1">
<tr>
	<th>日付</th><th>時刻</th><th>予定名</th><th>備考</th><th>編集</th>
</tr>
<c:forEach var="info" items="${requestScope['list']}">
	<fmt:parseDate var="scheduleDate" value="${info.scheduleDate}"
		pattern="yyyy-MM-dd" />
	<fmt:parseDate var="scheduleTime" value="${info.scheduleTime}"
		pattern="HH:mm:ss" />
	<tr>
		<td><fmt:formatDate value="${scheduleDate}"
			pattern="yyyy年MM月dd日" /></td>
		<td><fmt:formatDate value="${scheduleTime}"
			pattern="HH時mm分" /></td>
		<td>${fn:escapeXml(info.title)}</td>
		<td>${fn:escapeXml(info.memo)}</td>
		<td>
			<a href="edit.jsp?id=${info.id}">編集</a>
		</td>
	</tr>
</c:forEach>
</table>
</body>
</html>
