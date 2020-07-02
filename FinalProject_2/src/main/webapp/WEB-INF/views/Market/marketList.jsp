<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>ChaBak물품리스트</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

<%@ include file="../../include/header.jsp" %>
  
</head>
<body>
 <%@ include file="../../include/navigator.jsp" %>
 <header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner" style="background-image:url(resources/Picture/ChaBakPlace1.JPG);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<div class="display-t">
						<div class="display-tc animate-box fadeIn animated-fast" data-animate-effect="fadeIn">
							<h1>Product</h1>
							<h2>차박인기상품 <a href="product.do" target="_blank">ChaBak</a></h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
 
 
 <div id="fh5co-product">
	<div class="container">
	
		<div class="row animate-box fadeInUp animated-fast">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<span>차박 용품</span>
					<h2>Products.</h2>
					<p>차박에 필요한 각종 용품을 판매합니다.</p>
				</div>
		</div>
		
		
		<div class="row">
		
				<div class="col-md-4 text-center animate-box fadeInUp animated-fast">
					<div class="product">
						<div class="product-grid" style="background-image:url(resources/Picture/Else1.JPG);">
							<div class="inner">
								<p>
									<a href="cart.do" class="icon"><i class="icon-shopping-cart"></i></a>
									<a href="product.do" class="icon"><i class="icon-eye"></i></a>
								</p>
							</div>
						</div>
						<div class="desc">
							<h3><a href="product.do"></a></h3>
							<span class="price"></span>
						</div>
					</div>
				</div>
				<div class="col-md-4 text-center animate-box fadeInUp animated-fast">
					<div class="product">
						<div class="product-grid" style="background-image:url(resources/Picture/Else1.JPG);">
							<div class="inner">
								<p>
									<a href="cart.do" class="icon"><i class="icon-shopping-cart"></i></a>
									<a href="product.do" class="icon"><i class="icon-eye"></i></a>
								</p>
							</div>
						</div>
						<div class="desc">
							<h3><a href="product.do"></a></h3>
							<span class="price"></span>
						</div>
					</div>
				</div>
				<div class="col-md-4 text-center animate-box fadeInUp animated-fast">
					<div class="product">
						<div class="product-grid" style="background-image:url(resources/Picture/Else1.JPG);">
							<div class="inner">
								<p>
									<a href="cart.do" class="icon"><i class="icon-shopping-cart"></i></a>
									<a href="product.do" class="icon"><i class="icon-eye"></i></a>
								</p>
							</div>
						</div>
						<div class="desc">
							<h3><a href="product.do"></a></h3>
							<span class="price"></span>
						</div>
					</div>
				</div>
				
		</div>
	</div>
</div>

</body>
</html>