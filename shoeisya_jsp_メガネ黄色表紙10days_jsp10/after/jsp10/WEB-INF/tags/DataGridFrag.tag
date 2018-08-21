<%@ tag body-content="empty" pageEncoding="UTF-8" %>
<%@ attribute name="dataSource" required="true" %>
<%@ attribute name="sql" required="true" %>
<%@ attribute name="header" required="false" fragment="true" %>
<%@ attribute name="body" required="false" fragment="true" %>
<%@ attribute name="footer" required="false" fragment="true" %>
<%@ variable name-given="isbn" %>
<%@ variable name-given="title" %>
<%@ variable name-given="price" %>
<%@ variable name-given="publish" %>
<%@ variable name-given="published" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="db" dataSource="${dataSource}" />
<sql:query var="rs" dataSource="${db}">${sql}</sql:query>
<jsp:invoke fragment="header" />
<c:forEach var="row" items="${rs.rows}">
	<c:set var="isbn" value="${row.isbn}" />
	<c:set var="title" value="${row.title}" />
	<c:set var="price" value="${row.price}" />
	<c:set var="publish" value="${row.publish}" />
	<c:set var="published" value="${row.published}" />
	<jsp:invoke fragment="body" />
</c:forEach>
<jsp:invoke fragment="footer" />
