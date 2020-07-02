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

<!-- 추가 -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>


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

       
       
       
       
       
       
       
       
       
       
       
       

<!-- -----------content ------------------ -->
  <div class="content">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">주문현황</strong>
                            </div>
                            <div class="table-stats order-table ov-h">
                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th class="avatar">상품</th>
                                            <th class="serial">주문번호</th>
                                            <th>이름</th>
                                            <th>상품이름</th>
                                            <th>수량</th>
                                            <th>결제금액</th>
                                            <th>주문상태</th>
                                            <th>정보확인</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                        <tr>
                                           <!--  <td class="serial">1.</td> -->
                                            <td class="avatar">
                                                <div class="round-img">
                                                    <a href="#"><img class="rounded-circle" src="https://dnvefa72aowie.cloudfront.net/origin/article/202005/C87CA9676DE7A3F83BC7D96E39718C964FD75660332735786AD962C195425568.jpg?q=82&s=300x300&t=crop" alt=""></a>
                                                </div>
                                            </td>
                                            <td class="serial"> 20200608 </td>
                                            <td>  <span class="name">정다윤</span> </td>
                                            <td> <span class="product">알전구</span> </td>
                                            <td><span class="count">1</span></td>
                                            <td><span class="price">17,000</span></td>
                                            <td>
                                                <span class="badge badge-complete">Complete</span>
                                            </td>
                                            <td>
                                            <button onclick="window.open('admin_order_chk','주문확인','width=400px,height=600px,location=no,status=no,scrollbars=no');"
                                             type="button" class="btn btn-secondary">정보  </button>

                                             <!-- <button onclick="location.href='admin_order_chk'", width=400, height=400, type="button" class="btn btn-secondary">정보</button> -->
                                            </td>
                                        </tr>
                                        
                                        <tr>          
                                         <td class="avatar">
                                                <div class="round-img">
                                                    <a href="#"><img class="rounded-circle" src="https://dnvefa72aowie.cloudfront.net/origin/article/202005/C87CA9676DE7A3F83BC7D96E39718C964FD75660332735786AD962C195425568.jpg?q=82&s=300x300&t=crop" alt=""></a>
                                                </div>
                                            </td>
                                            <td class="serial"> 20200608 </td>
                                            <td>  <span class="name">정다윤</span> </td>
                                            <td> <span class="product">알전구</span> </td>
                                            <td><span class="count">1</span></td>
                                            <td><span class="price">17,000</span></td>
                                            <td>
                                                <span class="badge badge-complete">Complete</span>
                                            </td>
                                             <td>
                                            <button onclick="window.open('admin_order_chk','주문확인','width=400px,height=600px,location=no,status=no,scrollbars=no');"
                                             type="button" class="btn btn-secondary">정보</button>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                         <td class="avatar">
                                                <div class="round-img">
                                                    <a href="#"><img class="rounded-circle" src="https://dnvefa72aowie.cloudfront.net/origin/article/202005/C87CA9676DE7A3F83BC7D96E39718C964FD75660332735786AD962C195425568.jpg?q=82&s=300x300&t=crop" alt=""></a>
                                                </div>
                                            </td>
                                            <td class="serial"> 20200608 </td>
                                            <td>  <span class="name">정다윤</span> </td>
                                            <td> <span class="product">알전구</span> </td>
                                            <td><span class="count">3</span></td>
                                            <td><span class="price">17,000</span></td>
                                            <td>
                                                <span class="badge badge-pending">Waiting</span>
                                            </td>
                                             <td>
                                            <button onclick="window.open('admin_order_chk','주문확인','width=400px,height=600px,location=no,status=no,scrollbars=no');"
                                             type="button" class="btn btn-secondary">정보</button>
                                            </td>
                                        </tr>                                     
                                    </tbody>
                                </table>
                            </div> <!-- /.table-stats -->
                        </div>
                    </div>
                    </div>
                    </div>


<!-- -----------------/content-------------------- -->













<!-- ---------------------------------Footer---------------------------- -->
				
		<div class="clearfix"></div>
		<!-- Footer -->
		<footer class="site-footer">
			<div class="footer-inner bg-white">
				<div class="row">
					<div class="col-sm-6">Copyright &copy;Design by</div>
					<div class="col-sm-6 text-right">
						차박
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