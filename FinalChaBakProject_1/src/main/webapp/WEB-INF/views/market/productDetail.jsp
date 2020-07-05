<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>용품상세정보</title>
<%@ include file="../../include/header.jsp" %>
</head>

<body>
<%@ include file="../../include/navigator.jsp" %>

  <!-- Page Content -->
  <div class="container">
    <div class="row">

      <div class="col-lg-3">
        <h4 class="my-4">상세페이지</h1>
        <div class="list-group">
          <p>보기</p>
        </div>
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
        <div class="card mt-4">
        <img src="resources/Picture/Else2.JPG">
          <div class="card-body">
            <h3 class="card-title">${mar_name }</h3>
            <h4>29900원</h4>
            <p class="card-text">이 쿠션 없이는 차박캠핑을 성공적으로 했다고 하기 아쉽습니다!
            					 좋은날, 좋은분위기로 대화를 이끌어가세요.</p>
            <span class="text-warning">★ ★ ★ ★ ★ </span> 5.0 
            &nbsp;&nbsp;&nbsp;<a class="btn btn-success" href="account">구매확정</a>
            				  <a class="btn btn-success" href="myCart">장바구니</a>
          </div>
        </div>
        <!-- /.card -->

        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            Reviews
          </div>
          <div class="card-body">
            <p>푹신해 보이네요~~</p>
            <small class="text-muted">2020/05/28</small>
            <hr>
            <p>feel so good! ^.^</p>
            <small class="text-muted">2020/05/29</small>
            <hr>
            <p>yeah!!!!!!!!!!!!!!!!</p>
            <small class="text-muted">2020/05/30</small>
            <hr>
            <textarea name="ab" id="cd" style="width:100%;text-align:center;disabled" ></textarea>
             <input type="submit" id="add" value="리뷰등록" onclick="add()"/>
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
             <input type="submit" value="이전페이지" onClick="history.go(-1)">
          </div>

        </div>
        <!-- /.card -->
      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
    	<script>
function add() {
	alert("등록완료!");
}
</script>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright © Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

</body>

</html>