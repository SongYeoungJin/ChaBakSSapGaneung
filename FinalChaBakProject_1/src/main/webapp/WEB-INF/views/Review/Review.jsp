<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review.jsp</title>
  
	<%@ include file="../../include/header.jsp" %>
	
	</head>
	
	<body>
	
	<%@ include file="../../include/navigator.jsp" %>
		
		
		<!-- Page Content -->
  <div class="container">
  <!-- 
  <div class="py-5 bg-image" style='background-color:#0000ff'>
  -->
    <div class="row">
      <div class="col-lg-3">

        <h2 class="my-5"></h2>
        <div class="list-group">
          <a class="list-group-item" href="Review.do">리뷰화면</a>
        </div>
	  </div>
    </div>
<table align="center">
  <tr>
   <td>
     <table width="100%" cellpadding="0" cellspacing="0" border="0" class="table">
     <tr align="center">
      <td width="5" height="30" /></td>
      <td>내 용</td>
      <td width="5" height="30" /></td>

     </tr>
   
    </table>
   <table width="413" class="table">
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">글번호 </td>
      <td width="319"></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">조회수</td>
      <td width="319"></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">이름</td>
      <td width="319"></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">작성일</td>
      <td width="319"></td>
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">제목</td>
      <td width="319"></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
                <tr>
      <td width="0">&nbsp;</td>
                   <td width="399" colspan="2" height="200">
                </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4" width="407"></td></tr>
     <tr align="center">
      <td width="1">&nbsp;</td>
      <td colspan="2" width="399">
    <input type=button value="글쓰기"  OnClick="window.location='ReviewWrite'">
	<input type=button value="목록" OnClick="window.location='ReviewList'">

	
      <td width="0">&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
 
</body>
</html>