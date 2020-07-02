<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp"%>
<%@ include file="../../include/navigator.jsp"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ChaBak</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="fh5co-loader"></div>

	<div id="page">
		<aside id="fh5co-hero" class="js-fullheight">
			<div class="flexslider js-fullheight">
				<ul class="slides">
					<li style="background-image: url(resources/startbootstrap/img/1.jpg);">
						<div class="overlay-gradient"></div>
						<div class="container">
							<div
								class="col-md-6 col-md-offset-3 col-md-pull-3 js-fullheight slider-text">
								<div class="slider-text-inner">
									<div class="desc">
										<!-- <span class="price">$800</span> -->
										<h2>Welcome everyone to VanLife</h2>
										<p>저희 홈페이지에 오신걸 환영합니다.</p>
										<p>저희 홈페이지에서는 다양한 차박장소 와 차박용품을 소개하고 있습니다.</p>
										<p>저희만의 특별한 캠핑용품도 판매하고 있으니 구경하고 가세요.</p>
										<p>
											<a href="productList"
												class="btn btn-primary btn-outline btn-lg">Purchase Now</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li style="background-image: url(resources/startbootstrap/img/2.jpg);">
						<div class="container">
							<div
								class="col-md-6 col-md-offset-3 col-md-pull-3 js-fullheight slider-text">
								<div class="slider-text-inner">
									<div class="desc">
										<h2>Welcome everyone to VanLife</h2>
										<p>Our homepage introduces various Vanlife places and Valife products.</p>
										<p>We also sell our own special camping gear, so take a look.</p>
										<p>
											<a href="productList"
												class="btn btn-primary btn-outline btn-lg">Purchase Now</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</aside>
		
		

		<div id="fh5co-services" class="fh5co-bg-section">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 text-center">
						<div class="feature-center animate-box"
							data-animate-effect="fadeIn">
							<!-- <span class="icon"> <i class="icon-credit-card"></i> -->
							</span>
							<h3>오늘 떠나요</h3>
							<p><bold>차박하러</bold></p>
							<p><mark>코로나19 탓에 사람들과 접촉할 수 잇는 장소에 돌아다니기 힘든 요즘 차 뒷좌석을 나만의 스타일로 개조해서
				차박캠핑을 떠나보는 건 어떨까요?<mark></p>
							<p>
								<a href="#" class="btn btn-primary btn-outline">Learn More</a>
							</p>
						</div>
					</div>
					<img class = "col-sm-8" src="resources/startbootstrap/img/papap.png" />
					<!-- <div class="col-md-6-sm-6 text-center">
					 -->
						<div class="feature-center animate-box"
							data-animate-effect="fadeIn">
	
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		<div id="fh5co-product">
			<div class="container">
				<div class="row animate-box">
					<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<!-- 	<span>Cool Stuff</span> -->
						<a href="productList"><h2>Products</h2></a>
						<ul class="product-controls center" >
						 <div class = "tab"><a href="productList">All</a></div>
						 <div class = "tab"><a href="productList">캠핑</a></div>
						 <div class = "tab"><a href="productList">조명</a></div>
						 <div class = "tab"><a href="productList">기타</a></div>
							
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 text-center animate-box">
						<div class="product">
							<div class="product-grid"
								style="background-image: url(resources/Picture/main_Else3.jpg);">
								<div class="inner">
									<p>
										<a href="myCart" class="icon"><i
											class="icon-shopping-cart"></i></a> <a href="single.html"
											class="icon"><i class="icon-eye"></i></a>
									</p>
								</div>
							</div>
							<div class="desc">
								<h3>
									<a href="single.html">버그크리너</a>
								</h3>
								<span class="price">22,900won</span>
							</div>
						</div>
					</div>
					<div class="col-md-4 text-center animate-box">
						<div class="product">
							<div class="product-grid"
								style="background-image: url(resources/Picture/main_light.jpg);">
								<span class="sale">Sale</span>
								<div class="inner">
									<p>
										<a href="myCart" class="icon"><i
											class="icon-shopping-cart"></i></a> <a href="single.html"
											class="icon"><i class="icon-eye"></i></a>
									</p>
								</div>
							</div>
							<div class="desc">
								<h3>
									<a href="single.html">G1조명</a>
								</h3>
								<span class="price">7,900won</span>
							</div>
						</div>
					</div>
					<div class="col-md-4 text-center animate-box">
						<div class="product">
							<div class="product-grid"
								style="background-image: url(resources/Picture/main_Else1.jpg);">
								<div class="inner">
									<p>
										<a href="myCart" class="icon"><i
											class="icon-shopping-cart"></i></a> 
											<a href="single.html" class="icon"><i class="icon-eye"></i></a>
									</p>
								</div>
							</div>
							<div class="desc">
								<h3>
									<a href="single.html">A1매트리스</a>
								</h3>
								<span class="price">17,900won</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		
		
		
	<!-- -------------------content3---------------------- -->
	<div id="fh5co-services" class="fh5co-bg-section">
	<div class="team-area section-padding30">
		<div class="typo-articles">
			<div class="container">
					<div class="row animate-box">
					<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
						<span>다함께 떠나볼까요~? </span>
						<h2>CHABAK HOT PLACE</h2>
						<a href="place"><span>전체보기 </span></a>
					</div>
				</div>
				<div class="row">
					<!-- single Tem -->
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-">
						<div class="single-team mb-30">
							<div class="team-img">
								<img src="resources/Picture/review3.jpg" alt="">
							</div>
							<div class="team-caption">
								<span>일출과 일몰을 한곳에서</span>
								<h3>
									<a href="#">당진 왜목마을</a>
								</h3>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-">
						<div class="single-team mb-30">
							<div class="team-img">
								<img src="resources/Picture/review2.jpg" alt="">
							</div>
							<div class="team-caption">
								<span>별빛이 쏟아지는 차박 명소</span>
								<h3>
									<a href="#">강릉 안반데기</a>
								</h3>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-">
						<div class="single-team mb-30">
							<div class="team-img">
								<img src="resources/Picture/review1.jpg" alt="">
							</div>
							<div class="team-caption">
								<span>자연이 만든 데칼코마니</span>
								<h3>
									<a href="#">태안 운여해변</a>
								</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div></div>

	
	


		<div id="fh5co-counter" class="fh5co-bg fh5co-counter">
		<!-- 	style="background-image: url(images/img_bg_5.jpg);"> -->
			<div class="container">
				<div class="row">
					<div class="display-t">
						<div class="display-tc">
							<div class="col-md-3 col-sm-6 animate-box">
								<div class="feature-center">
									<span class="icon"> <i class="icon-eye"></i>
									</span> <span class="counter js-counter" data-from="0" data-to="22070"
										data-speed="5000" data-refresh-interval="50">1</span> <span
										class="counter-label">Creativity Fuel</span>

								</div>
							</div>
							<div class="col-md-3 col-sm-6 animate-box">
								<div class="feature-center">
									<span class="icon"> <i class="icon-shopping-cart"></i>
									</span> <span class="counter js-counter" data-from="0" data-to="450"
										data-speed="5000" data-refresh-interval="50">1</span> <span
										class="counter-label">Happy Clients</span>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 animate-box">
								<div class="feature-center">
									<span class="icon"> <i class="icon-shop"></i>
									</span> <span class="counter js-counter" data-from="0" data-to="700"
										data-speed="5000" data-refresh-interval="50">1</span> <span
										class="counter-label">All Products</span>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 animate-box">
								<div class="feature-center">
									<span class="icon"> <i class="icon-clock"></i>
									</span> <span class="counter js-counter" data-from="0" data-to="5605"
										data-speed="5000" data-refresh-interval="50">1</span> <span
										class="counter-label">Hours Spent</span>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>








<!----------------------- footer ------------------------------------->
		<footer id="fh5co-footer" role="contentinfo">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-4 fh5co-widget">
						<h3>CHABAK</h3>
						<p>VanLife</p>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-8 col-md-push-1">
						<ul class="fh5co-footer-links">
							<li>경기도 융합소프트웨어과 사회맞춤형</a></li>
							<li><!-- <a href="#"> -->개인정보 처리방침 | 이용와관 | 사업자 등록</a></li>
							<li>고객센터</a></li>
							<li>운영시간 : 08:00~09:00</a></li>
							<li>Tel:070-1234-4567</a></li>
						</ul>
					</div>
				</div>

				<div class="row copyright">
					<div class="col-md-12 text-center">
						<p>
							<small class="block">&copy;All Rights
								Reserved.</small> 
								<small class="block">Designed by CHABAK</a>
								</small>
						</p>
						<p>
						<ul class="fh5co-social-icons">
							<li><a href="#"><i class="icon-instagram"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-twitter"></i></a></li>
						</ul>
						</p>
					</div>
				</div>

			</div>
		</footer>


	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- -------------Script--------------- -->

	<!-- jQuery -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/jquery.min.js'/>"></script>
	<!-- jQuery Easing -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/jquery.easing.1.3.js'/>"></script>
	<!-- Bootstrap -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/bootstrap.min.js'/>"></script>
	<!-- Waypoints -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/jquery.waypoints.min.js'/>"></script>
	<!-- Carousel -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/owl.carousel.min.js'/>"></script>
	<!-- countTo -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/jquery.countTo.js'/>"></script>
	<!-- Flexslider -->
	<script
		src="<c:url value='./resources/shopBootstrap/js/jquery.flexslider-min.js'/>"></script>
	<!-- Main -->
	<script src="<c:url value='./resources/shopBootstrap/js/main.js'/>"></script>

</body>
</html>
