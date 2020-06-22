<%@ page language="java" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>CHABAK MAIN</title>
  
<%@ include file="../../include/header.jsp" %>

</head>
<body>
 
  <%@ include file="../../include/navigator.jsp" %>
  
  <style>
  img {
  display: block;
  max-width:900px;
  max-height:500px;
  width: auto;
  height: auto;
}
  </style>
  <!-- Header -->
  
  
  
  
  <!--  --------------content---------------- -->
  
  
  
  
  <header class="py-5 bg-image-full" 
  style="background-image : 
  url('https://images.unsplash.com/photo-1517495306984-f84210f9daa8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')";>
   	<a href="ReviewList">
   <img class="img-fluid d-block  mx-auto" alt="" 
   width = "900" height="400" src="resources/startbootstrap/img/papap.png"/>
  </a>
  </header>











<!-- -------------------content1---------------------- -->
  <section class="py-5">
    <div class="container">
      <h1>Welcome everyone to VanLife</h1>
      <p class="lead">저희 홈페이지에 오신걸 환영합니다.</p>
      <p>저희 홈페이지에서는 다양한 차박장소 와 차박용품을 소개하고 있습니다.</p>
      <p>저희만의 특별한 캠핑용품도 판매하고 있으니 구경하고 가세요.</p>
    </div>
  </section>



	<!-- Image Section -->
	<section class="py-5 bg-image-full">
		<a href="ReviewList"> <img class="img-fluid d-block  mx-auto"
			alt="" width="700" height="500"
			src="https://images.unsplash.com/photo-1565126703573-3537bb43cd46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80">

			<!-- Put anything you want here! There is just a spacer below for demo purposes! -->
			<!-- <div style="height: 200px;">
    </div> -->
		</a>
	</section>
		
	
	

	<!-- -------------------content2---------------------- -->
	<section class="py-5">
		<div class="container">
			<h1>오늘 떠나요</h1>
			<p class="lead">차박하러</p>
			<p>코로나19 탓에 사람들과 접촉할 수 잇는 장소에 돌아다니기 힘든 요즘 차 뒷좌석을 나만의 스타일로 개조해서
				차박캠핑을 떠나보는 건 어떨까요?</p>
			<br> <br>
		</div>
	</section>



	





<!-- -------------------content3---------------------- -->
        <div class="team-area section-padding30">
        <div class="typo-articles">
            <div class="container">
                <div class="row justify-content-sm-center">
                    <div class="cl-xl-7 col-lg-8 col-md-10">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-70">
                            <span>다함께 떠나볼까요~? </span>
                            <h2>CHABAK HOT PLACE</h2>
                        </div> 
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
                                <h3><a href="#">당진 왜목마을</a></h3>
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
                                <h3><a href="#">강릉 안반데기</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-">
                        <div class="single-team mb-30">
                            <div class="team-img">
                                <img src="resources/Picture/review1.jpg" alt=""
                                width="300%" height="40px">
                            </div>
                            <div class="team-caption">
                                <span>자연이 만든 데칼코마니</span>
                                <h3><a href="#">태안 운여해변</a></h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
       <!-- ----/content3----- -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-------------- ProductList ------------------>
    <section class="latest-products spad">
        <div class="container">
            <div class="product-filter">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Products</h2>
                        </div>
                        <ul class="product-controls">
                            <li data-filter="all"><a href="productList">All</a></li>
                            <li data-filter=".camping"><a href="productList">캠핑</a></li>
                            <li data-filter=".light"><a href="productList">조명</a></li>
                            <li data-filter=".etc"><a href="productList">기타</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row" id="product-list">
                <div class="col-lg-3 col-sm-6 mix all dresses bags">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="resources/Picture/Light4.jpg" alt=""></a>
                            <div class="p-status">new</div>
                        </figure>
                        <div class="product-text">
                            <h6>G2조명</h6>
                            <p>13,900won</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all dresses bags">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="resources/Picture/Else3.jpg" alt=""></a>
                            <div class="p-status sale">sale</div>
                        </figure>
                        <div class="product-text">
                            <h6>버그크리너</h6>
                            <p>22,900won</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all shoes accesories">
                    <div class="single-product-item">
                        <figure>
                             <a href="product"><img src="resources/Picture/Else1.jpg" alt=""></a>
                            <div class="p-status">new</div>
                        </figure>
                        <div class="product-text">
                            <h6>A1매트리스</h6>
                            <p>17,900won</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mix all shoes accesories">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="resources/Picture/light.jpg" alt=""></a>
                            <div class="p-status popular">popular</div>
                        </figure>
                        <div class="product-text">
                            <h6>G1조명</h6>
                            <p>7,900won</p>
                        </div>
                    </div>
                </div>         
            </div>
        </div>
    </section>
    
    
	<!-------------- ProductList ------------------>


	<!-- Image Section-->
	<!-- <section class="py-5 bg-image-full" 
  style="background-image: 
  url('https://images.unsplash.com/photo-1514477917009-389c76a86b68?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1922&q=80');"> -->
	<!-- Put anything you want here! There is just a spacer below for demo purposes! -->

<!-- 	<section class="py-5 bg-image-full">
		<a href="ReviewList"> <img class="img-fluid d-block  mx-auto"
			alt="" width="700" height="500"
			src="https://images.unsplash.com/photo-1508045214681-31012927cc98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80">
			<div style="height: 200px;">
    </div>
		</a>
	</section>

	<br>
	<br>
	<br>
	<br>
	<br>

 -->







<!-- 	<section>

		<div class="container">

			<div class=" align-left">
				<h2 class="mbr-title pt-2 mbr-fonts-style display-2"></h2>
				<a href="list2">통합자유게시판</a>

				<div class="mbr-section-text">
					<div class="media-container-row">
						<div
							class="mbr-text counter-container col-12 col-md-8 mbr-fonts-style display-7">
							<ul>
								<li><strong>정말</strong> <a href="list2"> 전체보기</a></li>
								<li><strong>좋아요</strong> ♥ <a href="list2">전체보기</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	
	
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	






	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>

</body>
</html>

