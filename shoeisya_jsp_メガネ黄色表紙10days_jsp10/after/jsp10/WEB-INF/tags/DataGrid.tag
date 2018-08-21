<%@ tag body-content="empty" pageEncoding="UTF-8" %>
<%@ attribute name="dataSource" required="true" %>
<%@ attribute name="sql" required="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="db" dataSource="${dataSource}" />
<sql:query var="rs" dataSource="${db}">${sql}</sql:query>
<table border="1">
	<tr>
		<c:forEach var="col" items="${rs.columnNames}">
			<th>${col}</th>
		</c:forEach>
	</tr>
	<c:forEach var="row" items="${rs.rows}">
		<tr>
			<c:forEach var="col" items="${rs.columnNames}">
				<td>${row[col]}</td>
			</c:forEach>
		</tr>
	</c:forEach>
</table>
