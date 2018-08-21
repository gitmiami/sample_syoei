<%@ page contentType="text/html; charset=UTF-8" %>
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
<title>書籍情報更新／削除</title>
</head>
<body>
<form method="POST" action="p2_update.jsp">
<input type="submit" value="更新／削除" />
<table border="1">
<tr>
	<th>削除</th><th>ISBNコード</th><th>書名</th>
	<th>価格</th><th>出版社</th><th>刊行日</th>
</tr>
<c:forEach var="row" items="${rs.rows}" varStatus="status">
	<tr>
		<td><input type="checkbox" name="delete${status.count}" value="1" /></td>
		<td>${row.isbn}
			<input type="hidden" name="isbn${status.count}"
				value="${row.isbn}" /></td>
		<td>
			<input type="text" name="title${status.count}" size="25"
				value="${fn:escapeXml(row.title)}" /></td>
		<td>
			<input type="text" name="price${status.count}" size="5"
				value="${row.price}" />円</td>
		<td>
			<select name="publish${status.count}">
				<c:set var="pubs" value="翔泳社,秀和システム,日経BP,技術評論社" />
				<c:forEach var="pub" items="${pubs}">
					<option value="${pub}"
						<c:if test="${pub==row.publish}">selected</c:if>>
						${pub}</option>
				</c:forEach>
			</select></td>
		<td>
			<input type="text" name="published${status.count}" size="12"
				value="<fmt:formatDate value="${row.published}"
					pattern="yyyy-MM-dd" />" /></td>
	</tr>
</c:forEach>
</table>
<input type="hidden" name="count" value="${rs.rowCount}" />
</form>
</body>
</html>
