<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR">
<title>ChaBak물품리스트(조명)</title>
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

    <div class="row">

      <div class="col-lg-3">

        <h3 class="my-4"></h3></br>
        <div class="list-group">
          <a class="list-group-item" href="productList1">캠핑</a>
          <a class="list-group-item" href="productList2">조명</a>
          <a class="list-group-item" href="productList3">기타</a>
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

        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="product.do">
              	<img class="card-img-top" alt="" src="resources/Picture/Else1.JPG" /></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="product.do">A1 매트리스</a>
                </h4>
                <h5>17900won</h5>
                <p class="card-text">A1 매트리스</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">★ ★ ★ ★ ★ </small>
              </div>
            </div>
          </div>
        

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="product.do"><img class="card-img-top" alt="" src="resources/Picture/Else2.JPG" ></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="product.do">B1 매트리스</a>
                </h4>
                <h5>29900won</h5>
                <p class="card-text">B1 매트리스</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">★ ★ ★ ★ ★ </small>
              </div>
            </div>
          </div>


          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="product.do"><img class="card-img-top" alt="" src="resources/Picture/Else3.JPG"></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="product.do">버그크리너</a>
                </h4>
                <h5>22900won</h5>
                <p class="card-text">벌레퇴치를 원한다면!</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">★ ★ ★ ★ ★ </small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="product.do"><img class="card-img-top" alt="" src="resources/Picture/Light1.JPG" /></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="product.do">G1 조명</a>
                </h4>
                <h5>7900won</h5>
                <p class="card-text">G1 조명</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">★ ★ ★ ★ ★ </small>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="product.do"><img class="card-img-top" alt="" src="resources/Picture/Light2.JPG" /></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="product.do">G2 조명</a>
                </h4>
                <h5>13900won</h5>
                <p class="card-text">G2 조명</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">★ ★ ★ ★ ★ </small>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="product.do"><img class="card-img-top" alt="" src="resources/Picture/Light5.JPG" /></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="product.do">R3 조명</a>
                </h4>
                <h5>18900won</h5>
                <p class="card-text">R3 조명</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">★ ★ ★ ★ ★ </small>
              </div>
            </div>
          </div>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright © Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  
</body>
</html>