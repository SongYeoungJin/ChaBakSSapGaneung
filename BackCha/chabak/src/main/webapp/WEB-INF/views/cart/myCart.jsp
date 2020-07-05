<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<%@ include file="../../include/header.jsp" %>
  <!-- Custom styles for this template -->
  <link rel="stylesheet"
  href="<c:url value='resources/startbootstrap/css/full-width-pics.css'/>">
  
<title>장바구니 페이지</title>
  
</head>
<body>
<%@ include file="../../include/navigator.jsp" %>
  
<p>나의 장바구니</p>
<button>모든상품삭제</button><button>선택상품삭제</button><br>
	<table class="table table-striped table-bordered table-hover" border=1>
		<tr>
			<td>&nbsp;&nbsp;</td>
			<td>제품사진</td>
			<td>제품명</td>
			<td>상품가격</td>
			<td>수량</td>
			<td>구매액</td>
		</tr>
		<tr>
			<td><input type="checkbox"></td>
			<td><img src="Else1.jpg" /></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<br>
	<hr>
<h3>총 구매액</h3>
<hr>
<p>현재 나의 포인트 : p</p>
<button class="button"><a href="account">주문하기</a></button>
<input class="button" type="button" value="이전페이지"   onClick="history.go(-1)">
<button class="button"><a href="main.do">메인 페이지로 가기</a></button><br>


 
</body>
</html>