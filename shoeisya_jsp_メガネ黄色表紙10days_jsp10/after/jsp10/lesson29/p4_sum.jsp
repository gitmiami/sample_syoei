<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>1～100の間の奇数を合計する</title>
</head>
<body>
<c:forEach var="i" begin="1" end="100">
	<c:if test="${i % 2 != 0}">
		<c:set var="result" value="${result + i}" />
	</c:if>
</c:forEach>
合計値：${result}
</body>
</html>