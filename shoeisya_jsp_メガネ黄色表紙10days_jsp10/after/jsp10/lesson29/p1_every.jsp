<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="msgs" value="おはようございます, こんにちは, こんばんは" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>「JSP」にご挨拶</title>
</head>
<body>
<c:forEach var="msg" items="${msgs}">
	<p>${msg}、「JSP」！</p>
</c:forEach>
</body>
</html>
