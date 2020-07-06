<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
	<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>관리자 페이지</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet" href="./resources/assets/css/cs-skin-elastic.css">
<link rel="stylesheet" href="./resources/assets/css/style.css">
<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
<link
	href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css"
	rel="stylesheet" />
	
	
	

<style>
#weatherWidget .currentDesc {
	color: #ffffff !important;
}

.traffic-chart {
	min-height: 335px;
}

#flotPie1 {
	height: 150px;
}

#flotPie1 td {
	padding: 3px;
}

#flotPie1 table {
	top: 20px !important;
	right: -10px !important;
}

.chart-container {
	display: table;
	min-width: 270px;
	text-align: left;
	padding-top: 10px;
	padding-bottom: 10px;
}

#flotLine5 {
	height: 105px;
}

#flotBarChart {
	height: 150px;
}

#cellPaiChart {
	height: 160px;
}



</style>
</head>

<body>
	<!-- Left Panel -->
	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">
			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<a herf="#">
					<li class="menu-title">Admin</li></a>
					<!-- /.menu-title -->
					
  						<li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">회원관리</a>
                        <ul class="sub-menu children dropdown-menu">                            
                            <li><i class="ti-bar-chart"></i><a href="admin_member_list">회원조회</a></li>
                        </ul>
                    </li>
                    	  <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">매출관리</a>
                        <ul class="sub-menu children dropdown-menu">                            
                            <li><i class="ti-bar-chart"></i><a href="admin_sales">매출현황</a></li>
                        </ul>
                    </li>
                     <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="ui-cards.html"></i>상품관리</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="ti-face-smile"></i><a href="admin_product">상품조회</a></li>  
                        </ul>
                    </li>
                        <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="ui-cards.html"></i>주문관리</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="ti-image"></i> <a href="admin_order"> 주문 조회</a></li>
                        </ul>
                    </li>
                 
               <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="ui-cards.html"></i>장소관리</a>
                        <ul class="sub-menu children dropdown-menu">
                               <li><i class="ti-face-smile"></i><a href="admin_registerPlace">장소등록</a></li>
                        </ul>
                    </li>
                    
                     <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="ui-cards.html"></i>기타관리</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="ti-image"></i> <a href="admin_board"> 커뮤니티 조회</a></li>
                        </ul>
                    </li>
  				

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
	</aside>
	<!-- /#left-panel -->






	<!-- Right Panel -->



	<div id="right-panel" class="right-panel">

		<!-- Header-->
		<header id="header" class="header">
			<a href="adminMain">
				<div class="top-left">

					<div class="navbar-header">
						<img class="img-fluid d-block  mx-auto" alt=""
							style="width: 80px; height: 50px"
							;
                 src="https://cdn.crowdpic.net/list-thumb/thumb_l_C08489CD452A6BA0B8131D1BE3B8CC7E.jpg">
					</div>
				</div>
			</a>





			<div class="header-menu">
				<div class="user-area dropdown float-right">
					<c:if test="${sessionScope.login_result1 != null}">
						<button type="button" class="btn btn-secondary">
							<a href="${pageContext.request.contextPath}/admin_logout.ing">Logout</a>
						</button>
					</c:if>

					<c:if test="${sessionScope.login_result1 == null}">
						<button type="button" class="btn btn-secondary">
							<a href="admin_login">Login</a>
						</button>
					</c:if>
				</div>
			</div>




		</header>
		<!-- /header -->



		<!------------------------------- Header-------------------------------------------->


		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#one">회원정보</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#two">장바구니</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#three">장소</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#four">이용내역</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#five">특징</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane fade show active" id="one">

			<form id="admin_member_detail" name="admin_member_detail" method="post">
    	<input type='hidden' id='m_num' name='m_num' value='${result.m_num}' />
					<div class="card">
					<div class="card-header">
						<strong class="card-title">회원정보</strong>
					</div>
					<div class="card-body">
						<table id="bootstrap-data-table"
							class="table table-striped table-bordered">
							<thead>
								<tr align="center">
									
									<td>이름</td>
									<td>id</td>
									<td>email</td>
								</tr>
							</thead>
							<tbody>
								<tr align="center">
									
									<td>${result.m_name}</td>
									<td>${result.m_id}</td>
									<td>${result.m_email}</td>
								</tr>


							</tbody>
						</table>
					</div>
				</div>
    </form>

			</div>
			<div class="tab-pane fade" id="two">

		<form id="admin_member_detail" name="admin_member_detail" method="post">
    	<input type='hidden' id='m_num' name='m_num' value='${cart.m_num}' />
					<div class="card">
					<div class="card-header">
						<strong class="card-title">구매내역</strong>
					</div>
					<div class="card-body">
						<table id="bootstrap-data-table"
							class="table table-striped table-bordered">
							<thead>
								<tr align="center">
									
									<td>상품번호</td>
									<td>상품수량</td>
									<td>주문일자</td>
								</tr>
							</thead>
							<tbody>
								<tr align="center">
								
									<td>${cart.mar_num}</td>
									<td>${cart.cart_Stock}</td>
									<td>${cart.addDate}</td>
								</tr>


							</tbody>
						</table>
					</div>
				</div>
    </form>

			</div>
			<div class="tab-pane fade" id="three">


	<form id="admin_member_detail" name="admin_member_detail" method="post">
    	<input type='hidden' id='m_num' name='m_num' value='${board.m_num}' />
					<div class="card">
					<div class="card-header">
						<strong class="card-title">장소</strong>
					</div>
					<div class="card-body">
						<table id="bootstrap-data-table"
							class="table table-striped table-bordered">
							<thead>
								<tr align="center">
									
									<td>작성날자</td>
									<td>제목</td>
									<td>내용</td>
								</tr>
							</thead>
							<tbody>
								<tr align="center">
								
								<td>${board.cb_regdate}</td>
									<td>${board.cb_title}</td>
									<td>${board.cb_memo}</td>
									
								</tr>


							</tbody>
						</table>
					</div>
				</div>
    </form>

			</div>
			<div class="tab-pane fade" id="four">

				<div class="card">
					<div class="card-header">
						<strong class="card-title">이용내역</strong>
					</div>
					<div class="card-body">
						<table id="bootstrap-data-table"
							class="table table-striped table-bordered">
							<thead>
								<tr align="center">
									<td>가입일자</td>
									<td>최종방문일</td>
									<td>방문횟수</td>
									<td>포인트충전금액</td>
									<td>상품구매수량</td>
								</tr>
							</thead>
							<tbody>
								<tr align="center">
									<td>2019-12-12</td>
									<td>2020-06-10</td>
									<td>123</td>
									<td>10,000P</td>
									<td>90</td>
								</tr>


							</tbody>
						</table>
					</div>
				</div>

			</div>
			<div class="tab-pane fade" id="five">

				<textarea name="ab" id="cd" style="width: 100%; text-align: center;">
     	우리 사이트를 자주 사용하고 주로 기타용품을 많이 구매한다.
     </textarea>
				<input type="submit" id="add" value="등록" />
			</div>

		</div>


		<!-- ---------------------------------Footer---------------------------- -->

		<div class="clearfix"></div>
		<!-- Footer -->
		<footer class="site-footer">
			<div class="footer-inner bg-white">
				<div class="row">
					<div class="col-sm-6">Copyright &copy;Design by 차박</div>
					<div class="col-sm-6 text-right">
						
					</div>
				</div>
			</div>
		</footer>
		<!-- /.site-footer -->
	</div>
	<!-- /#right-panel -->




	<!-- Scripts -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
	<script src="./resources/assets/js/main.js"></script>



</body>
</html>