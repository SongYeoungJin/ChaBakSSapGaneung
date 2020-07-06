<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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
    var url = "<c:url value='/cart.do'/>";
    url = url + "?mar_num=" + mar_num;
    form.action = url;    
    form.submit(); 
    
}
 

 

</script>
</div>
</body>
</html>
