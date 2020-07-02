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
		
   <!------------------------------- Header-------------------------------------------->
   
   
         <ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#one">구매내역</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#two">리뷰</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#three">장소</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#four">이용내역</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#five">특징</a>
  </li>
</ul>
<div class="tab-content">
  <div class="tab-pane fade show active" id="one">
    
    	    <div class="card">
                            <div class="card-header">
                                <strong class="card-title">구매내역</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                  	<tr align="center">
										<td >상품코드</td><td></td><td>상품명</td><td>판매가</td><td>수량</td>
									</tr>
                                    </thead>
                                    <tbody>
                                      <tr align="center">
										<td  onClick = " location.href='product.do'">1111111</td><td><img src="resources/startbootstrap/img/aa.png" width=50 height=50></td><td>상품명</td><td>10,000P</td><td>90</td>
									</tr>
                                       <tr align="center">
										<td  onClick = " location.href='product.do'">1111110</td><td><img src="resources/startbootstrap/img/aa.png" width=50 height=50></td><td>상품명</td><td>10,000P</td><td>9</td>
										</tr>
                               
                                   </tbody>
                                </table>
                            </div>
                        </div>

 	
  </div>
  <div class="tab-pane fade" id="two">
   
    	 <div class="card">
                            <div class="card-header">
                                <strong class="card-title">리뷰</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                  	<tr align="center">
										<td>게시글일자</td><td>제목</td><td>조회수</td><td>별점</td>
									</tr>
                                    </thead>
                                    <tbody>
                                      <tr align="center">
										<td  onClick = " location.href='myReview'">2019-12-12</td><td>푹신푹신한 담요</td><td>123</td><td>4.6</td>
									</tr>
                                     
                               
                                   </tbody>
                                </table>
                            </div>
                        </div>
    
  </div>
  <div class="tab-pane fade" id="three">
    
    	 <div class="card">
                            <div class="card-header">
                                <strong class="card-title">장소</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                  	<tr align="center">
										<td>게시글일자</td><td>제목</td><td>장소명</td><td>별점</td>
									</tr>
                                    </thead>
                                    <tbody>
                                      <tr align="center">
										<td  onClick = " location.href='place'">2020-1-12</td><td>삼척에서..</td><td>강원도 삼척</td><td>5.0</td>
									</tr>
                                     
                               
                                   </tbody>
                                </table>
                            </div>
                        </div>
    
  </div>
    <div class="tab-pane fade" id="four">
   
    	 <div class="card">
                            <div class="card-header">
                                <strong class="card-title">이용내역</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                  	<tr align="center">
										<td>가입일자</td><td>최종방문일</td><td>방문횟수</td><td>포인트충전금액</td><td>상품구매수량</td>
									</tr>
                                    </thead>
                                    <tbody>
                                      <tr align="center">
										<td>2019-12-12</td><td>2020-06-10</td><td>123</td><td>10,000P</td><td>90</td>
									</tr>
                                     
                               
                                   </tbody>
                                </table>
                            </div>
                        </div>
    
  </div>
    <div class="tab-pane fade" id="five">
   
     <textarea name="ab" id="cd" style="width:100%;text-align:center;disabled" >
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



</body>
</html>