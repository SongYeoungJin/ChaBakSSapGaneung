<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>

    
    <meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
    
    <link href="css/sb-admin.min.css" rel="stylesheet">
	
	<!-- ///////////////////////////////------부트스트랩 링크 END------///////////////////////////////-->

<!-- CSS only -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
   integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
   crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
   integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
   crossorigin="anonymous"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
   integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
   crossorigin="anonymous"></script>
  </head>
<body>
<!-- 
<div class="container">
      <div class="form-group" style="text-align: center;">
      <br> <br> <b><font size="6" color="gray">로그인</font></b> <br> <br> <br>
      
	<form action="loginCheck.jsp" method="post">
	 아이디 : <input type = "text" name="id" maxlength="15" class="form-control" /> <br/><br/>
	 비밀번호 : <input type = "password" name = "password" maxlength="15" /> <br/><br/>
	 <input type = "submit" value ="로그인"/>
	 <input type = "button" value ="아이디/비밀번호찾기" onclick="location.href='findIdForm.jsp'"/>
	 <input type = "button" value ="회원가입" onclick="location.href='Join.jsp'"/>
	
	</form>
	-->
	
	<body class="bg-dark">

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>
        <div class="card-body">
          <form action="loginCheck.jsp" method="post">
            <div class="form-group">
              <div class="form-label-group">
                <input class="form-control" id="inputID" autofocus="autofocus" required="required" type="email" placeholder="아이디를 입력하세요">
                <label for="inputID">ID</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input class="form-control" id="inputpw" required="required" type="password" placeholder="비밀번호를 입력하세요">
                <label for="inputPW">PW</label>
              </div>
            </div> 
            
            <a class="btn btn-primary btn-block" href="main.do">Login</a>
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="find_ID">ID찾기 </a>
             <a class="d-block small" href="find_PW">PW찾기 </a>
            <a class="d-block small" href="Join">회원가입</a>
          </div>
        </div>
     </div>
     </div>
   

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  


</body>
	
	
</body>
</html>