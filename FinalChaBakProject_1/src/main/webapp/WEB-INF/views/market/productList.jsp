<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ChaBak물품리스트(캠핑)</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

<%@ include file="../../include/header.jsp" %>
  
</head>
<body>
  <%@ include file="../../include/navigator.jsp" %>
  <!-- Page Content -->
  <div class="container">
  <form id="productForm" name="productForm" method="post">
			<div class="row">
				<div class="col-lg-3">
					<h3 class="my-4"></h3>
					</br>
					<div class="list-group">
						<a class="list-group-item" href="productList">캠핑</a>
					</div>
				</div>
				<!-- /.col-lg-3 -->
				<div class="col-lg-9">

					<div class="carousel slide my-4 pointer-event"
						id="carouselExampleIndicators" data-ride="carousel">
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item">
								<img class="d-block img-fluid"
									src="resources/Picture/ChaBakPlace2.jpg">
							</div>
						</div>
					</div>
					<div class="row">
						<c:forEach var="result" items="${list }" varStatus="status">
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="card h-100">
									<a href="#" onClick='fn_view()'> 
										<img style="width: 200px; height: auto;"<c:out value='${result.mar_Img}'/>" /></a>
										<div class="card-body">
											<h4 class="card-title">
												<a href="#"><c:out
														value="${result.mar_name }" /></a>
											</h4>
											<h5>
												<fmt:formatNumber value="${result.mar_price}"
													pattern="###,###,###" />
											</h5>
											<p class="card-text">
												<c:out value="${result.mar_content }" />
											</p>
										</div>
										<div class="card-footer">
											<small class="text-muted">★ ★ ★ ★ ★ </small>
										</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- /.row -->
		</form>
  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright © Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
  <script>
//글조회
function fn_view(mar_num){
    
    var form = document.getElementById("productForm");
    var url = "<c:url value='/productDetail.do'/>";
    url = url + "?mar_num=" + mar_num;
    form.action = url;    
    form.submit(); 
}
  </script>
</body>
</html>