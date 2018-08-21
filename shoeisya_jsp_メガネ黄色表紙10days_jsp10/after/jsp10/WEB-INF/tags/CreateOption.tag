<%@ tag body-content="empty" pageEncoding="UTF-8" %>
<%@ attribute name="start" required="true" %>
<%@ attribute name="end" required="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="i" begin="${start}" end="${end}">
	<option value="${i}">${i}</option>
</c:forEach>
