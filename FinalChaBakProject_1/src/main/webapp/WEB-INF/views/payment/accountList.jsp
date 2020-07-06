<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주문(결제)내역</title>
<%@ include file="../../include/header.jsp" %>

</head>
<body>
<%@ include file="../../include/navigator.jsp" %>

<table border='1' class="table table-striped table-bordered table-hover">
	<tr>
		<td>주문내역</td>
		<td>주문번호</td>
		<td>주문일시</td>
		<td>삭제</td>
	</tr>
	<tr>
		<td><a href="product.do" name="product">A-텐트</a>
		<td><a href="product.do" name="productNum">1</a></td>
		<td><a href="product.do" name="productDate">2020-06-09</td>
		<td><button class="btn btn-secondary" name="deleteProduct">삭제</button></td>
	</tr>
</table>
</body>
</html>