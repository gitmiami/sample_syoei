<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>アンケート結果</title>
</head>
<body>
<c:choose>
	<c:when test="${param['interest'] == 1}">よかったぁ！</c:when>
	<c:otherwise>えぇ、なんでぇ？？？</c:otherwise>
</c:choose>
</body>
</html>
