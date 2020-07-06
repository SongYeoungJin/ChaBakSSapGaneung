<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<c:set var="path" value="${pageContext.request.contextPath}"/>

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
						<img class="img-fluid d-block  mx-auto" alt="" style="width: 80px; height: 50px";							
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


		<!-- 검책창 -->

		<div class="selectbox">
		<dl class="dropdown">
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<select name="job" style="width: 80px; height: 33px;">
				<option value="" style="width: 80px; height: 33px;">선택</option>
				<option value="상품" style="width: 80px; height: 33px;">회원</option>
				<option value="상품" style="width: 80px; height: 33px;">상품</option>
				<option value="주문" style="width: 80px; height: 33px;">주문</option>
				<option value="장소" style="width: 80px; height: 33px;">장소</option>
			</select> <input type="text" style="width: 500px; height: 33px;" /> 
			<button type="button" class="btn btn-secondary">Search</button>
		</dl>
		</div>


		<!-- 위에 매출,재고 등등 보는 칸4개  -->
		<!-- content -->
		<div class="content">
			<!-- Animated -->
			<div class="animated fadeIn">
				<!-- Widgets  -->
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="stat-widget-five">
									<div class="stat-icon dib flat-color-1">
										<i class="pe-7s-cash"></i>
									</div>
									<div class="stat-content">
										<div class="text-left dib">
											<div class="stat-text">
												$<span class="count">23569</span>
											</div>
											<div class="stat-heading">총 매출</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="stat-widget-five">
									<div class="stat-icon dib flat-color-2">
										<i class="pe-7s-cart"></i>
									</div>
									<div class="stat-content">
										<div class="text-left dib">
											<div class="stat-text">
												<span class="count">3435</span>
											</div>
											<div class="stat-heading">판매개수</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="stat-widget-five">
									<div class="stat-icon dib flat-color-3">
										<i class="pe-7s-browser"></i>
									</div>
									<div class="stat-content">
										<div class="text-left dib">
											<div class="stat-text">
												<span class="count">349</span>
											</div>
											<div class="stat-heading">총 게시글 수</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6">
						<div class="card">
							<div class="card-body">
								<div class="stat-widget-five">
									<div class="stat-icon dib flat-color-4">
										<i class="pe-7s-users"></i>
									</div>
									<div class="stat-content">
										<div class="text-left dib">
											<div class="stat-text">
												<span class="count">2986</span>
											</div>
											<div class="stat-heading">총 회원수</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /Widgets -->
				<!-- /위에 매출,재고 등등 보는 칸4개  -->
				<!-- /content -->






				<!--  Traffic  -->
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<h4 class="box-title">매출현황</h4>
								</div>

								<div class="row">
									<div class="col-lg-8">
										<div class="card-body">
											<script type="text/javascript"
												src="https://www.google.com/jsapi"></script>
											<script type="text/javascript">
											google.load("visualization", "1", {
												packages : [ "corechart" ]
											});
											google.setOnLoadCallback(drawChart);
											function drawChart() {
												var data = google.visualization
														.arrayToDataTable([
																[
																		'Year',
																		'Sales',
																		'Expenses' ],
																[ '19.06',
																		1000,
																		400 ],
																[ '19.12',
																		1170,
																		460 ],
																[ '20.03', 660,
																		1120 ],
																[ '20.06',
																		1030,
																		540 ] ]);

												var options = {
													title : '매출현황'
												};

												var chart = new google.visualization.LineChart(
														document
																.getElementById('chart_div'));
												chart.draw(data, options);
											}
										</script>
											<div id="chart_div" style="width: 700px; height: 500px;"></div>

										</div>
									</div>
								</div>
							</div>


							<!--  <div class="row">
                                <div class="col-lg-8">
                                    <div class="card-body">
                                        <canvas id="TrafficChart"></canvas>  
                                        <div id="traffic-chart" class="traffic-chart"></div>
                                    </div>
                                </div> -->






							<div
								style="float: left; position: absolute; left: 740px; top: 150px; width: 950px; height: 800px;">

								<div class="col-lg-4">
									<div class="card-body">
										<div class="progress-box progress-1">
											<h4 class="por-title">커플 에어매트</h4>
											<div class="por-txt">10건(50%)</div>
											<div class="progress mb-2" style="height: 5px;">
												<div class="progress-bar bg-flat-color-1" role="progressbar"
													style="width: 50%;" aria-valuenow="50" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="progress-box progress-2">
											<h4 class="por-title">반짝반짝 알전구</h4>
											<div class="por-txt">5건(25%)</div>
											<div class="progress mb-2" style="height: 5px;">
												<div class="progress-bar bg-flat-color-2" role="progressbar"
													style="width: 25%;" aria-valuenow="25" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="progress-box progress-2">
											<h4 class="por-title">떨어져도 몰라요 해먹</h4>
											<div class="por-txt">3건(13%)</div>
											<div class="progress mb-2" style="height: 5px;">
												<div class="progress-bar bg-flat-color-3" role="progressbar"
													style="width: 13%;" aria-valuenow="13" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="progress-box progress-2">
											<h4 class="por-title">아기자기 캠핑 간이의자</h4>
											<div class="por-txt">2건(12%)</div>
											<div class="progress mb-2" style="height: 5px;">
												<div class="progress-bar bg-flat-color-4" role="progressbar"
													style="width: 12%;" aria-valuenow="12" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
									</div>
									<!-- /.card-body -->
								</div>
							</div>
							<!-- /.row -->
							<div class="card-body"></div>
						</div>
					</div>
					<!-- /# column -->
				</div>
				<!--  /Traffic -->
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

	<!--  Chart js -->
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

	<!--Chartist Chart-->
	<script
		src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
	<script src="./resources/assets/js/init/weather-init.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
	<script src="./resources/assets/js/init/fullcalendar-init.js"></script>
	<script type="text/javascript" src="http://www.google.com/jsapi"></script>



</body>
</html>


