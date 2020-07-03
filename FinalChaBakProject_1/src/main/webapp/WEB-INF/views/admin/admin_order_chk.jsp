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



</head>

<body>
       
       
       

       
           <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header"><strong>주문정보</strong><small> Form</small></div>
                            <div class="card-body card-block">
                                
                                <div class="row">
                                 <div class="col-6">
                                <div class="form-group"><label for="company" class=" form-control-label">이름</label>
                                <input type="text" id="name" placeholder="차박" class="form-control"></div>
                                </div>
                               
                                <div class="col-6">
                                <div class="form-group"><label for="vat" class=" form-control-label">아이디</label>
                                <input type="text" id="id" placeholder="ChaBak" class="form-control"></div>
                                </div>
                                </div>
                                
                                 <div class="row">
                                 <div class="col-12">
                                <div class="form-group"><label for="company" class=" form-control-label">주소</label>
                                <input type="text" id="address" placeholder="서울시 행복구 행복동 어쩌구 저쩌구" class="form-control"></div>
                                </div>
                                </div>
                                
                                 <div class="row">
                                 <div class="col-6">
                                <div class="form-group"><label for="company" class=" form-control-label">H.P</label>
                                <input type="text" id="phone" placeholder="010-1234-1234" class="form-control"></div>
                                </div>
                               
                                <div class="col-6">
                                <div class="form-group"><label for="vat" class=" form-control-label">주문번호</label>
                                <input type="text" id="number" placeholder="20200608" class="form-control"></div>
                                </div>
                                </div>
                                
                                <div class="row">
                                 <div class="col-4">
                                <div class="form-group"><label for="company" class=" form-control-label">상품</label>
                                <input type="text" id="product" placeholder="알전구" class="form-control"></div>
                                </div>
                               
                                <div class="col-4">
                                <div class="form-group"><label for="vat" class=" form-control-label">수량</label>
                                <input type="text" id="count" placeholder="3" class="form-control"></div>
                                </div>
                                
                                <div class="col-4">
                                <div class="form-group"><label for="vat" class=" form-control-label">가격</label>
                                <input type="text" id="price" placeholder="17,000" class="form-control"></div>
                                </div>
                                </div>
                                
                                <div class="row">
                                 <div class="col-4">
                                <div class="form-group"><label for="company" class=" form-control-label">주문상태</label>
                                <input type="text" id="payment" placeholder="결제완료" class="form-control"></div>
                                </div>
                                </div>
                            
                               <button type="button" class="btn btn-secondary">확인</button>
                               
                        </div>
                    </div>
       
       </div>
       
       
       
       
       
       
       
       
       
       
       
       

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