<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<!------- 추가 -------->
<link
	href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css"
	rel="stylesheet">




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
						<li class="menu-title">Admin</li>
					</a>
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




	<!-- 차박 로고 -->
	<div class="top-left">

		<a class="navbar-brand" href="adminMain"> <img
			class="img-fluid d-block  mx-auto" alt=""
			style="width: 80px; height: 50px";
			src="https://cdn.crowdpic.net/list-thumb/thumb_l_C08489CD452A6BA0B8131D1BE3B8CC7E.jpg">

		</a>
	</div>




 <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">
        <a href="adminMain">
            <div class="top-left">
            
                <div class="navbar-header">
                <img class="img-fluid d-block  mx-auto" alt="" 
                 style="width: 80px; height: 50px";
                 src="https://cdn.crowdpic.net/list-thumb/thumb_l_C08489CD452A6BA0B8131D1BE3B8CC7E.jpg">
                </div>
            </div>
             </a>
                  <div class="header-menu">
				<div class="user-area dropdown float-right">
					<c:if test="${sessionScope.login_result == null}">
						<button type="button" class="btn btn-secondary"
							onclick="location.href='login'">Logout</button>
					</c:if>
				</div>
			</div>
            
     
        </header><!-- /header -->
        <!-- Header-->

        
        
        
        
        
        
               
        
        



          <!-- --------tab---------- -->
        <ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#one">총매출</a>
  </li>

   <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#three">상품별매출</a>
  </li>
</ul>
<!-- 
<div class="tab-content"> -->
         <!-- ---------------/tab------------- -->







<!-- ------------------------------------content------------------------------------------ -->

				<div class="tab-pane fade show active" id="one">
					<div class="content">
						<div class="animated fadeIn">


							<div class="row">
								<div class="col-lg-12">
									<div class="card">
										<div class="card-header">
											<strong class="card-title">상품별 매출</strong>
											<div class="card-body">


												<script type="text/javascript"
													src="https://www.gstatic.com/charts/loader.js"></script>
												<script type="text/javascript">
											// Load Charts and the corechart and barchart packages.
											google.charts.load('current', {
												'packages' : [ 'corechart' ]
											});

											// Draw the pie chart and bar chart when Charts is loaded.
											google.charts
													.setOnLoadCallback(drawChart);

											function drawChart() {

												var data = new google.visualization.DataTable();
												data.addColumn('string',
														'Topping');
												data.addColumn('number',
														'Slices');
												data.addRows([ [ '캠핑', 60 ],
														[ '조명', 20 ],
														[ '기타', 20 ], ]);

												var piechart_options = {
													title : '상품별 매출(1)',
													width : 500,
													height : 500
												};
												var piechart = new google.visualization.PieChart(
														document
																.getElementById('piechart_div'));
												piechart.draw(data,
														piechart_options);

												var barchart_options = {
													title : '상품별 매출(2)',
													width : 600,
													height : 500,
													legend : 'none'
												};
												var barchart = new google.visualization.BarChart(
														document
																.getElementById('barchart_div'));
												barchart.draw(data,
														barchart_options);
											}
										</script>
												<!--Table and divs that hold the pie charts-->
												<table class="columns">
													<tr>
														<td><div id="piechart_div"
																style="border: 1px solid #ccc"></div></td>
														<td><div id="barchart_div"
																style="border: 1px solid #ccc"></div></td>
													</tr>
												</table>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>





					<div class="card">
						<div class="card-header">
							<strong class="card-title">매출현황</strong>
						</div>
						<div class="card-body">
							<table id="bootstrap-data-table"
								class="table table-striped table-bordered">
								<thead>
									<tr align="center">
										<td>종류</td>
										<td>상품코드</td>
										<td>판매가</td>
										<td>수량</td>
										<td></td>
									</tr>
								</thead>
								<tbody>
									<tr align="center">
										<td><select name="Big">
												<option value="">종류</option>
												<option value="캠핑">캠핑</option>
												<option value="조명">조명</option>
												<option value="기타">기타</option>
										</select></td>
										<td><input type="text" name="pro_code" /></td>
										<td><input type="text" name="pro_price" /></td>
										<td><input type="text" name="pro_count" /></td>
										<td><input type="button" value="추가" onclick="add()" /></td>
									</tr>


								</tbody>
							</table>
						</div>
					</div>





					<!-- ------------------------------------content2------------------------------------------ -->
				<%-- 	<div class="tab-pane fade" id="two">


						<%@include file="admin_sales2.jsp"%>
					</div>
				</div>


 --%>




				<!-- Content -->
<!-- 		<div class="content">
			<div class="animated fadeIn">


				<div class="row">
					<div class="col-lg-6">
						<div class="card">
							<div class="card-body">
								<h4 class="mb-3">상품별 매출</h4>

								<script type="text/javascript"
									src="https://www.gstatic.com/charts/loader.js"></script>
								<script type="text/javascript">
									google.charts.load('current', {
										'packages' : [ 'bar' ]
									});
									google.charts.setOnLoadCallback(drawChart);

									function drawChart() {
										var data = google.visualization
												.arrayToDataTable([
														[ '매출', '지난달', '이번달' ],
														[ '캠핑', 0.5, 0.5 ],
														[ '조명', 0.7, 0.3 ],
														[ '기타', 0.4, 0.8 ],

												]);

										var options = {
											chart : {
												title : '상품별 매출',
												subtitle : '',
											}
										};

										var chart = new google.charts.Bar(
												document
														.getElementById('columnchart_material'));

										chart.draw(data, google.charts.Bar
												.convertOptions(options));
									}
								</script>

								<div id="columnchart_material"
									style="width: 100%; height: 275px;"></div>
							</div>
						</div>
					</div>
					/# column
				</div>
			</div>
		</div>






		<!-- Content -->
		<!-- <div class="content">
			<div class="animated fadeIn">


				<div class="row">
					<div class="col-lg-6">
						<div class="card">
							<div class="card-body">
								<h4 class="mb-3">Real Chart</h4>

								<script type="text/javascript"
									src="https://www.gstatic.com/charts/loader.js"></script>
								<script type="text/javascript">
									google.charts.load('current', {
										'packages' : [ 'bar' ]
									});
									google.charts.setOnLoadCallback(drawChart);

									function drawChart() {
										var data = google.visualization
												.arrayToDataTable([
														[ 'Dialogue', 'Send',
																'Resoponse' ],
														[ 'Dialogue 1', 0.5,
																0.5 ],
														[ 'Dialogue 2', 0.7,
																0.3 ],
														[ 'Dialogue 3', 0.4,
																0.8 ],
														[ 'Dialogue 4', 0.2, 1 ] ]);

										var options = {
											chart : {
												title : '매출',
												subtitle : '',
											}
										};

										var chart = new google.charts.Bar(
												document
														.getElementById('columnchart_material'));

										chart.draw(data, google.charts.Bar
												.convertOptions(options));
									}
								</script>

								<div id="columnchart_material"
									style="width: 100%; height: 275px;"></div>
							</div>
						</div>
					</div>
					/# column
				</div>
			</div>
		</div>


 -->









			<!-- -----------------Footer------------------ -->

			<div class="clearfix"></div>
			<!-- Footer -->
			<footer class="site-footer">
				<div class="footer-inner bg-white">
					<div class="row">
						<div class="col-sm-6">Copyright &copy;Design by</div>
						<div class="col-sm-6 text-right">
							차박</a>
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
	
	<!--  추가    -->

		<script src="assets/js/main.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/flot-charts@0.8.3/excanvas.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/flot-charts@0.8.3/jquery.flot.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.pie.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.time.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.stack.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.resize.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.crosshair.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/flot.curvedlines@1.1.1/curvedLines.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/jquery.flot.tooltip@0.9.0/js/jquery.flot.tooltip.min.js"></script>
		<script src="assets/js/init/flot-chart-init.js"></script>
</body>
</html>