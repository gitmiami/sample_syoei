<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>&lt;c:forEach&gt;要素</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="i" begin="1" end="5">
	<h${i}>こんにちは、JSP！</h${i}>
</c:forEach>
</body>
</html>
