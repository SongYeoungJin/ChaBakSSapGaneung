<%@ page language="java" 
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include/header.jsp</title>

<!-- path 변수 선언, request객체가 가진 쿼리 문자열 반환된 값 저장-->
<c:set var="path" value="${pageContext.request.contextPath}" />
 
<!--자바스크립트 라이브러리인 jquery는 소스로 등록해놔야 사용 가능 -->
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
 
<!-- link : 외부 문서와 연결해주는 태그, 주로 css파일이나 폰트 관련 코드 연결해줌 -->
<!-- <link rel="stylesheet" href="${path}/include/style.css" />-->

</head>
<body>

</body>
</html>