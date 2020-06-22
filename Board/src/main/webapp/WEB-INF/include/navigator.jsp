==<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="main.do">ChaBak</a>
      <button class="navbar-toggler" aria-expanded="false" aria-controls="navbarResponsive" aria-label="Toggle navigation" type="button" data-target="#navbarResponsive" data-toggle="collapse">
        <span class="navbar-toggler-icon"></span>
      </button>
      &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
      <div class="collapse navbar-collapse" id="navbarResponsive">
      <div class="menubar">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link"  id="current" href="ChaBak">차박의묘미</a>
 				<ul>
 					<li><a href="ChaBak"style="color: white">차박소개</a></li>
 					<li><a href="place"style="color: white">차박추천장소</a></li>
 				</ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="current"  href="ReviewList">차박커뮤니티</a>
            <ul>
 					<li><a href="list2" style="color: white">자유게시판</a></li>
 					<li><a href="ReviewList" style="color: white">장소후기게시판</a></li>
 				</ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="productList" >차박용품</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="myPage">My차박
            	 <span class="sr-only">(current)</span>
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="login">Login</a>
          </li>
        </ul>
        </div>
      </div>
    </div>
  </nav><br><br><br><br>
  <style>
  .menubar li ul { background: rgb(109,109,109); display:none; /* 평상시에는 서브메뉴가 안보이게 하기 */ 
  height:auto; padding:0px; margin:0px; border:0px; position:absolute; width:200px; z-index:200; }
.menubar li:hover ul { display:block; /* 마우스 커서 올리면 서브메뉴 보이게 하기 */ }

  </style>