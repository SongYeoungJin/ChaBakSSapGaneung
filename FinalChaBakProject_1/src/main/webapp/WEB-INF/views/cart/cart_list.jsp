<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../include/header.jsp"%>
<script src="http://code.jquery.com/jquery-3.3.1.js">
    //include된 header파일에 jquery 소스 등록돼있음
    //<script src="http://code.jquery.com/jquery-3.3.1.js">
    $(function() {
        /* 상품 목록 버튼 */
        $("#btnList").click(function() {
            location.href = "${path}/market/productList.do";
        });
 
        $("#btnDelete").click(function() {
            if (confirm("장바구니를 비우시겠습니까?")) {
                location.href = "${path}/cart/deleteAll.do";
            }
        });
 
    });
</script>
</head>
</head>
<body>
	<h2>장바구니</h2>
	<c:choose>
		<c:when test="${map.count == 0}"> 
			장바구니가 비었습니다.
		</c:when>
		<c:otherwise>
			<!-- 장바구니가 비어있지 않으면 상품목록 리스트 출력 -->
			<form id="form1" name="form1" method="post"
				action="${path}/cart/update.do"></form>
			<table border="1" width="400px">
				<tr>
					<th>상품명</th>
					<th>단가</th>
					<th>수량</th>
					<th>금액</th>
					<th>&nbsp;</th>
				</tr>
				<!-- list.do로 url매핑된 메서드가 실행될때 mav에 담아 포워딩한 map 오브젝트 -->
				<c:foreach var="row" items="${map.list }">
					<tr align="center">
						<td>${row.mar_name}</td>
						<td><fmt:formatNuber value="${row.price}" pattern="#,###,###" />
						</td>
						<td>
							<!-- 세자리수마다 콤마가 찍히도록 수량 정보를 받고, 
             카트에 담을 때 생성되었던 카트 아이디를 hidden을 사용해 폼데이터로 함께 넘겨준다. --> 
             			<input type="number" name="amount" style="width: 30px;"
							value="<fmt:formatNumber value="${row.amount}" pattern="#,###,###"/>">
							<input type="hidden" name="cart_num" value="${row.cart_num}">
						</td>
						<td><fmt:formatNumber value="${row.money}" pattern="#,###,###" /></td>
						<td><a href="${path}/cart/delete.do?cart_id=${row.cart_num}">[삭제]</a>
						</td>
					</tr>
				</c:foreach>
			</table>
		</c:otherwise>
	</c:choose>
	<button type="button" id="btnList">상품목록</button>
</body>
</html>
