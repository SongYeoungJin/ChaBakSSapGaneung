<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content=Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file = "../../include/header.jsp" %>
<script>
/*
$(function(){   
    $("#btnAdd").click(function(){
        location.href = "${path}/shop/product/write.do";
    });
});
*/
</script>
</head>
<body>
<%@ include file="../../include/navigator.jsp" %>

<h2>상품목록</h2>
<table border = "1" width = "500px">
    <tr>
        <th>상품ID</th>
        <th>상품사진</th>
        <th>상품명</th>
        <th>가격</th>
    </tr>
<c:forEach var="result" items="${list }"> 
    <tr align = "center">
    <td>${result.mar_num }</td>
    <td><img src="${path }/images/${result.mar_Img}"
    width="100" height = "100"></td>
    <td><a href ="${path }/market/productDetail/${result.mar_num }">${result.mar_name }</a></td>
    <td>
    <fmt:formatNumber value="${result.mar_price}" pattern="#,###" /> </td>
    </tr>
    
</c:forEach>
</table>
</body>
</html>
