<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<c:catch var="err">
	<sql:setDataSource var="db" dataSource="jdbc/Jsp10" />
	<sql:update dataSource="${db}">
		INSERT INTO books(isbn, title, price, publish, published) VALUES(? ,? ,? ,? ,?)
		<sql:param value="${param['isbn']}" />
		<sql:param value="${param['title']}" />
		<sql:param value="${param['price']}" />
		<sql:param value="${param['publish']}" />
		<sql:param value="${param['published']}" />
	</sql:update>
	<c:redirect url="p1_new.jsp" />
</c:catch>
<c:if test="${!empty err}">${err}</c:if>
