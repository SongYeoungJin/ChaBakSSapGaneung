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
								<a href="ChaBak" class="btn btn-primary btn-outline">Learn More</a>
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
								style="background-image: url(resources/Picture/버그크리너.jpg);">
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
								<span class="price">10,500won</span>
							</div>
						</div>
					</div>
					
					
					<div class="col-md-4 text-center animate-box">
						<div class="product">
							<div class="product-grid"
								style="background-image: url(resources/Picture/조명.jpg);">
								<span class="sale">Sale</span>
								<div class="inner">
									<p>
										<a href="myCart" class="icon">
										<i class="icon-shopping-cart"></i></a> 
										<a href="single.html" class="icon"><i class="icon-eye"></i></a>
									</p>
								</div>
							</div>
							<div class="desc">
								<h3>
									<a href="single.html">G1조명</a>
								</h3>
								<span class="price">5,900won</span>
							</div>
						</div>
					</div>
					<div class="col-md-4 text-center animate-box">
						<div class="product">
							<div class="product-grid"
								style="background-image: url(resources/Picture/매트리스.jpeg);">
								<div class="inner">
									<p>
										<a href="myCart" class="icon">
										<i class="icon-shopping-cart"></i></a> 
										<a href="single.html" class="icon"><i class="icon-eye"></i></a>
									</p>
								</div>
							</div>
							<div class="desc">
								<h3>
									<a href="single.html">에어매트리스</a>
								</h3>
								<span class="price">34,900won</span>
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
										<button type="button" class="btn btn-primary btn-sm"
											data-toggle="modal" data-target="#basicExampleModal">
											당진 왜목마을</button>
									</h3>
								</div>
							</div>
						</div>


						<!-- Modal -->
						<div class="modal fade" id="basicExampleModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">당진 왜목마을</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<h7 class="font-weight-bold">수도권</h7>
										<br /> <br />
										<p>벚꽃 축제 - 여의도 공원, 석촌호수, 어린이대공원 등등..</p>
										<p>고양시 국제 꽃 박람회 - 고양시 일산 호수공원</p>
										<p>튤립축제 - 에버랜드</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Close</button>
									</div>
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
										<button type="button" class="btn btn-primary btn-sm"
											data-toggle="modal" data-target="#basicExampleModal">
											강릉 안반데기</button>
									</h3>
								</div>
							</div>
						</div>

						<!-- Modal -->
						<div class="modal fade" id="basicExampleModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">봄 축제</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<h7 class="font-weight-bold">강릉 안반데기</h7>
										<br /> <br />
										<p>벚꽃 축제 - 여의도 공원, 석촌호수, 어린이대공원 등등..</p>
										<p>고양시 국제 꽃 박람회 - 고양시 일산 호수공원</p>
										<p>튤립축제 - 에버랜드</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Close</button>
									</div>
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
										<button type="button" class="btn btn-primary btn-sm"
											data-toggle="modal" data-target="#basicExampleModal">
											태안 운여해변</button>
									</h3>
								</div>
							</div>
						</div>


						<!-- Modal -->
						<div class="modal fade" id="basicExampleModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">태안 운여해변</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<h7 class="font-weight-bold">수도권</h7>
										<br /> <br />
										<p>벚꽃 축제 - 여의도 공원, 석촌호수, 어린이대공원 등등..</p>
										<p>고양시 국제 꽃 박람회 - 고양시 일산 호수공원</p>
										<p>튤립축제 - 에버랜드</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>










	<div id="fh5co-counter" class="fh5co-bg fh5co-counter">
		<div class="team-area section-padding30">
			<div class="container">
				<div class="row">
					<div class="title">
						<h2 class="title__title">Review List</h2>
					</div>
					<br>
					<div class="awe-text-center mt-50">
						<a class="md-btn md-btn--outline-primary" href="#"> all list </a>
					</div>
					<br>


					<div class="col-md-4">
						<div class="card">
							<img class="card-img-top" src="https://i.imgur.com/MUBS4Gh.png"
								alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title mb-3">1</h4>
								<p class="card-text">차박으로 재밌는 여행갔다왔어요~!~!</p>
								<a href="#" class="btn btn-primary">GO</a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card">
							<img class="card-img-top" src="https://i.imgur.com/MUBS4Gh.png"
								alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title mb-3">1</h4>
								<h5 class="card-text">차박으로 재밌는 여행갔다왔어요~!~!</h5>
								<a href="#" class="btn btn-primary">GO</a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card">
							<img class="card-img-top" src="https://i.imgur.com/MUBS4Gh.png"
								alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title mb-3">1</h4>
								<p class="card-text">차박으로 재밌는 여행갔다왔어요~!~!</p>
								<a href="#" class="btn btn-primary">GO</a>
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
						<li>경기도 융합소프트웨어과 사회맞춤형</li>
						<li>
							<!-- <a href="#"> -->개인정보 처리방침 | 이용와관 | 사업자 등록
						</li>
						<li>고객센터</li>
						<li>운영시간 : 08:00~09:00</li>
						<li>Tel:070-1234-4567</li>
					</ul>
				</div>
			</div>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy;All Rights Reserved.</small> 
						<small class="block">Designed by CHABAK </small>
					</p>
					<p>
					<ul class="fh5co-social-icons">
						<li><a href="#"><i class="icon-instagram"></i></a></li>
						<li><a href="#"><i class="icon-facebook"></i></a></li>
						<li><a href="#"><i class="icon-twitter"></i></a></li>
					</ul>
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
