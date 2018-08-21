<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="names" value="松岡, 薄井, 本多, 川村, 日尾" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>みんなにこんにちは！</title>
</head>
<body>
<c:forEach var="name" items="${names}">
	<p>こんにちは、${name}さん！</p>
</c:forEach>
</body>
</html>
