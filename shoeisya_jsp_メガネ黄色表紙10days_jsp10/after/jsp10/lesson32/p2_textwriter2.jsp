<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="win" uri="http://www.wings.msn.to/WingsTagLibs-1.0" %>
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>タグライブラリでテキストファイルに書き込み</title>
</head>
<body>
<win:TextWriter path="/WEB-INF/data/custom.txt">
	<c:set var="names" value="no,name,sex,tel,address" />
	<c:forEach var="name" items="${names}">
		<c:set var="result">${result}	${param[name]}</c:set>
	</c:forEach>
	${result}
</win:TextWriter>
書き込みに成功しました。
</body>
</html>
