<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR">
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

        <h3 class="my-4"></h3></br>
        <div class="list-group">
          <a class="list-group-item" href="productList">캠핑</a>
        </div>
      </div>
      <!-- /.col-lg-3 -->
      <div class="col-lg-9">

        <div class="carousel slide my-4 pointer-event" id="carouselExampleIndicators" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0"></li>
            <li class="active" data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item">
              <img class="d-block img-fluid" alt="First slide" src="resources/Picture/ChaBakPlace1.jpg">
            </div>
            <div class="carousel-item active">
              <img class="d-block img-fluid" alt="Second slide" src="resources/Picture/ChaBakPlace2.jpg">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" alt="Third slide" src="resources/Picture/ChaBakPlace3.JPG">
            </div>
          </div>
          <a class="carousel-control-prev" role="button" href="#carouselExampleIndicators" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" role="button" href="#carouselExampleIndicators" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        
        <c:forEach var="result" items="${list }" varStatus="status">
        <div class="row">
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#" onClick='fn_view()'>
              <img style="width: 200px; height: auto;" src="data:image/jpeg;base64,<c:out value='${result.mar_Img}'/>"/>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#" onClick='fn_view()'><c:out value="${result.mar_name }"/></a>
                </h4>
                <h5><fmt:formatNumber value="${result.mar_price}" pattern="###,###,###"/></h5>
                <p class="card-text"><c:out value="${result.mar_content }"/></p>
              </div>
              <div class="card-footer">
                <small class="text-muted">★ ★ ★ ★ ★ </small>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
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