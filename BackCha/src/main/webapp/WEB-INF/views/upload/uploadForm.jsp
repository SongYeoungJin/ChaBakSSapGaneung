<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
<%@include file ="../include/header.jsp" %>
</head>
<body>

<!-- *** 원래 include menu.jsp있어야하는 자리  *** -->
 
<!--폼데이터 POST방식으로 보내기/
    enctype="multipart/form-data" ★★★
    target="iframe1"설정 해놓으면 데이터 처리 결과가 아래의 iframe1으로 간다.
    uploadFile 메서드는 업로드된 파일 이름만 리턴한다-->
<form id="form1" action="${path}/upload/uploadForm" method="post" enctype = "multipart/form-data">
<!-- input type=file의 name값은 upload/uploadForm으로 url매핑된 메서드의
     MultipartFile 매개값과 이름이 같아야함★★★ -->
<input type ="file" id="file" name ="file">
<input type ="submit" value="업로드">
</form>
<div><img id="mar_img1" src="#" width="400" height="200"></div>
<script>
function readURL(input) {
	 if (input.files && input.files[0]) {
	  var reader = new FileReader();
	  
	  reader.onload = function (e) {
	   $('#mar_img1').attr('src', e.target.result);  
	  }
	  reader.readAsDataURL(input.files[0]);
	  }
	}
	$("#file").change(function(){
	   readURL(this);
	});
</script>
</body>
</html>
