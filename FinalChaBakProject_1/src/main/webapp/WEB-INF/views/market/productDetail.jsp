<%-- <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>용품상세정보</title>
<%@ include file="../../include/header.jsp" %>
</head>

<body>
<%@ include file="../../include/navigator.jsp" %>
<div class="container">
	<form id="productDetailForm" name="productDetailForm" method="post">	
		<div class="row">
 			<div class="col-lg-9">
					<div class="card mt-4">
						<img src="  ">
						<div class="card-body">
							<h3 class="card-title" id="mar_name">
								<c:out value='${result.mar_name}' />
							</h3>
							<h4 id="mar_price">
								<c:out value='${result.mar_price}' />
							</h4>
							<p class="card-text" id="mar_content"">
								<c:out value='${result.mar_content}' />
							</p>
							<span class="text-warning">★ ★ ★ ★ ★ </span> 5.0
							&nbsp;&nbsp;&nbsp;
							<!-- <a class="btn btn-success" href="#" onClick="fn_payment()">구매확정</a> -->
							<a class="btn btn-success" href="#" onClick="fn_cart()">장바구니</a>
						</div>
					</div>
					<!-- 상품리뷰는 일단 그냥뺐음 -->
				</div>
			</div>
		</form>

					
<script>
//목록
function fn_cart(){
    
	var form = document.getElementById("productDetailForm");
    var url = "<c:url value='/cartList.do'/>";
    url = url + "?mar_num=" + mar_num;
    form.action = url;    
    form.submit(); 
    
}
 

 

</script>
</div>
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<%@include file="../../include/header.jsp"%>
 
</head>
<body>
<%@ include file="../../include/navigator.jsp" %>
    <h2>상품 정보</h2>
    <table>
        <tr>
            <!-- 이미지를 불러오기위한 url 작성 -->
            <td><img src="${path}/images/${dto.mar_Img}" width="300px"
                height="300px"></td>
            <td align="center">
                <table>
                    <tr>
                        <td>상품명</td>
                        <td>${dto.mar_name }</td>
                    </tr>
 
                    <tr>
                        <td>가격</td>
                        <td>${dto.mar_price }</td>
                    </tr>
 
                    <tr>
                        <td>&nbsp;</td>
                        <td>${dto.mar_content }</td>
                    </tr>
 
                    <tr>
                        <td colspan="2">
						<form name="form1" method="post"
                            action="${path }/market/cartList.do">
                                <input type="hidden" name="mar_num"
                                    value="${dto.mar_num }">
                                <!-- 상품코드를 히든타입으로 넘김 -->
                                <select name="amount">
                                    <c:forEach begin="1" end="10" var="i">
                                        <option value="${i}">${i}</option>
                                        <!-- 장바구니에  10개 까지 담을수 있다.-->
                                    </c:forEach>
                                </select>&nbsp;개 <input type="submit" value="장바구니에 담기">
						</form> <a href="${path}/list.do">상품목록</a>
                        </td>
                    </tr>
                </table>
    </table>
</body>
</html>




