<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
 /*
 section#content ul li { display:inline-block; margin:10px; }
 section#content div.goodsThumb img { width:200px; height:200px; }
 section#content div.goodsName { padding:10px 0; text-align:center; }
 section#content div.goodsName a { color:#000; }
 */
 section#content ul li { margin:10px 0; }
 section#content ul li img { width:250px; height:250px; }
 section#content ul li::after { content:""; display:block; clear:both; }
 section#content div.thumb { float:left; width:250px; }
 section#content div.gdsInfo { float:right; width:calc(100% - 270px); }
 section#content div.gdsInfo { font-size:20px; line-height:2; }
 section#content div.gdsInfo span { display:inline-block; width:100px; font-weight:bold; margin-right:10px; }
 section#content div.gdsInfo .delete { text-align:right; }
 section#content div.gdsInfo .delete button { font-size:22px;
            padding:5px 10px; border:1px solid #eee; background:#eee;}
 
</style>

</head>
<body>
	<section id="content">
		<ul>
			<c:forEach items="${cartList}" var="cartList">
				<li>
					<div class="thumb">
						<img src="${cartList.mar_ThumbImg}" />
					</div>
					<div class="gdsInfo">
						<p>
							<span>상품명 : </span>${cartList.mar_name}<br /> 
							<span>개당 가격: </span>
							<fmt:formatNumber pattern="###,###,###" value="${cartList.mar_price}" /><br /> 
							<span>구입 수량 : </span>${cartList.cartCount} 개<br /> 
							<span>최종가격 : </span>
							<fmt:formatNumber pattern="###,###,###" value="${cartList.mar_price * cartList.cartCount}" />
						</p>
						
						<div class="delete">
							<button type="button" class="delete-btn">삭제</button>
						</div>
					</div>
				</li>
			</c:forEach>
		</ul>
	</section>
</body>
</html>