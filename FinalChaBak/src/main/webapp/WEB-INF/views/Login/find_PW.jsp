<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>


 <meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    
    



<meta charset="EUC-KR">
<title>PW찾기</title>



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
  
  










<body class="bg-dark">

    <div class="container">
      <div class="card card-login mx-auto mt-5">
      
   <div class="content">
         <div class="animated fadeIn">
            <div class="row">
               <div class="col-lg-12">
                  <div class="card">
                     <div class="card-header">
                        <strong>PW찾기</strong>
                     </div>
                     
                     <div class="card-body card-block">
                        <form id="frm_join" action="login" method="post"
                           class="form-horizontal">
                           <div class="row form-group">
                              <div class="col col-md-3">
                                 <label for="text-input" class=" form-control-label">이름</label>
                              </div>
                              <div class="col-12 col-md-9">
                                 <input type="text" name="mId" placeholder="Enter Name"
                                    class="form-control"><small
                                    class="help-block form-text">Please enter your name</small>
                              </div>
                           </div>
                           
                           
                           <div class="row form-group">
                              <div class="col col-md-3">
                                 <label for="password-input" class=" form-control-label">아이디</label>
                              </div>
                              <div class="col-12 col-md-9">
                                 <input type="password" id="password-input" name="mPw"
                                    placeholder="Password" class="form-control"><small
                                    class="help-block form-text">Please enter your ID
                                    </small>
                              </div>
                           </div>
                           
         
                           <div class="row form-group">
                              <div class="col col-md-3">
                                 <label for="email-input" class=" form-control-label">Email</label>
                              </div>
                              <div class="col-12 col-md-9">
                                 <input type="email" id="email-input" name="mEmail"
                                    placeholder="Enter Email" class="form-control"><small
                                    class="help-block form-text">Please enter your email</small>
                              </div>
                           </div>
                           
                           <div class="card-footer">
                              <button class="btn btn-secondary">
                                 <i class="fa fa-dot-circle-o"></i> 확인
                                
                              </button>
                             <!--   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp -->
                              <button type="reset" class="btn btn-secondary"
                               onclick="location.href='main.do'">
                                 <i class="fa fa-ban"></i> 메인
                              </button>
                           </div>
                           
                        </form>
                     </div>
                  </div>
               </div>
            </div>
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
</html>