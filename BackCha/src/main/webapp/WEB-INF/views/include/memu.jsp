<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- path value = ${pageContext.request.contextPath}
     header.jsp에서 코어태그로 변수 path 선언-->
	<a href="${path}">Home</a>
	<a href="${path }/upload/uploadForm">업로드 테스트</a>
	
	<hr>

</body>
</html>