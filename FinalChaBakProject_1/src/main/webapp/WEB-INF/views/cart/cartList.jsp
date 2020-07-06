<%@ page language="java" 
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<%@ include file="../../include/header.jsp" %>
<!-- Custom styles for this template -->
<link rel="stylesheet" href="<c:url value='resources/startbootstrap/css/full-width-pics.css'/>">
<title>장바구니목록</title>
</head>
<body>
<%@ include file="../../include/navigator.jsp" %>

<form id="cartForm" name="cartForm" method="post">
<p>나의 장바구니</p>
<button>모든상품삭제</button>
<button>선택상품삭제</button><br>
	<table class="table table-striped table-bordered table-hover" border=1>
		<tr>
			<td>&nbsp;&nbsp;</td>
			<td>제품사진</td>
			<td>제품명</td>
			<td>상품가격</td>
			<td>수량</td>
			<td>구매액</td>
		</tr>
		<c:forEach var="cart" items="${list }" varStatus="status">
		<tr>
			<td><input type="checkbox" name="chkbox"></td>
			<td><img src="Else1.jpg" /></td>
			<td><c:out value="${cart.mar_name }"/></td>
			<td><c:out value="${cart.mar_price }"/></td>
			<td><c:out value="${cart.cart_count }"/></td>
			<td><c:out value="${cart.mar_price * cart.cart_count}"/></td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<hr>
<h3>총 구매액</h3>
<hr>
<p>현재 나의 포인트 : p</p>
<button class="button"><a href="#" onClick="fn_order()">주문하기</a></button>
<input class="button" type="button" value="이전페이지"   onClick="history.go(-1)">
<button class="button"><a href="#" onClick="fn_main()">메인 페이지로 가기</a></button><br>
</form>
<script>
//주문
function fn_order(cart_num) { 
	var chkbox = document.getElementsByName('chkbox'); 
	var chk = false; 
	var form = document.getElementById("cartForm");
	
	for(var i=0 ; i<chkbox.length ; i++) 
	{ 
		if(chkbox[i].checked) { 
			chk = true; 
			
			alert(form + " 주문?");
			url = "<c:url value='/order.do'/>";
			url = url + "?cart_num=" + cart_num;
			form.action = url;
		    form.submit();
			} 
		else { 
			chk = false; 
		} 
	} 
}


function fn_main(){
    
    var form = document.getElementById("cartForm");
    
    form.action = "<c:url value='/main.do'/>";
    form.submit();
    
}
</script>
</body>
</html>