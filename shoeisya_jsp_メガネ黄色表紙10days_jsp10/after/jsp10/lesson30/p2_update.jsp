<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<c:catch var="err">
	<sql:setDataSource var="db" dataSource="jdbc/Jsp10" />
	<sql:transaction dataSource="${db}">
		<c:forEach var="i" begin="1" end="${param['count']}">
			<c:set var="delete">delete${i}</c:set>
			<c:set var="isbn">isbn${i}</c:set>
			<c:set var="title">title${i}</c:set>
			<c:set var="price">price${i}</c:set>
			<c:set var="publish">publish${i}</c:set>
			<c:set var="published">published${i}</c:set>
			<c:choose>
				<c:when test="${param[delete] == 1}">
					<sql:update>
						DELETE FROM books WHERE isbn=?
						<sql:param value="${param[isbn]}" />
					</sql:update>
				</c:when>
				<c:otherwise>
					<sql:update>
						UPDATE books SET title=?, price=?, publish=?, published=? WHERE isbn=?
						<sql:param value="${param[title]}" />
						<sql:param value="${param[price]}" />
						<sql:param value="${param[publish]}" />
						<sql:param value="${param[published]}" />
						<sql:param value="${param[isbn]}" />
					</sql:update>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</sql:transaction>
	<c:redirect url="p2_edit.jsp" />
</c:catch>
<c:if test="${!empty err}">${err}</c:if>
