<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>アンケート結果</title>
</head>
<body>
<c:if test="${param['interest'] == 1}">
	よかったぁ！
</c:if>
<c:if test="${param['interest'] != 1}">
	えぇ、なんでぇ？？？
</c:if>
</body>
</html>
