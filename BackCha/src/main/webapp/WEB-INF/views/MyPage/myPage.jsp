<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마이페이지 메인화면</title>
<%@ include file="../../include/header.jsp" %>


</head>
<body>
<%@ include file="../../include/navigator.jsp" %>

<section class="content-section" id="portfolio">
    <div class="container">
      <div class="content-section-heading text-center">
        <h3 class="text-secondary mb-0">MYPAGE</h3>
        <h2 class="mb-5">★  Welcome to ChaPack World ★</h2>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-6">
          <a class="portfolio-item" href="myInfo.do">
            <span class="caption">
              <span class="caption-content">
                <h2>Introduction</h2>
                <p class="mb-0">내 정보</p>
              </span>
            </span>
            <img class="img-fluid" alt="" src="bootstrap/img/portfolio1.jpg">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="myReview.do">
            <span class="caption">
              <span class="caption-content">
                <h2>Review</h2>
                <p class="mb-0">작성후기</p>
              </span>
            </span>
            <img class="img-fluid" alt="" src="bootstrap/img/portfolio2.jpg">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="myCart.do">
            <span class="caption">
              <span class="caption-content">
                <h2>Cart</h2>
                <p class="mb-0">장바구니</p>
              </span>
            </span>
            <img class="img-fluid" alt="" src="bootstrap/img/portfolio3.jpg">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="portfolio-item" href="myAccount">
            <span class="caption">
              <span class="caption-content">
                <h2>Order</h2>
                <p class="mb-0">주문내역 </p>
              </span>
            </span>
            <img class="img-fluid" alt="" src="C:\ProjectPicture\portfolio4.jpg">
          </a>
        </div>
      </div>
    </div>
  </section>
</body>
</html>