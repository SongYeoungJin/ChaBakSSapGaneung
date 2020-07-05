<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

<%@ include file="../../include/header.jsp" %>
  <!-- Custom styles for this template -->
  <link rel="stylesheet"
  href="<c:url value='resources/startbootstrap/css/full-width-pics.css'/>">
  <title>게시글 작성</title>
 </head>
 <body>
  <%@ include file="../../include/navigator.jsp" %>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">



 </head>
 <body>


<style>
body {
  padding-top: 70px;
  padding-bottom: 30px;
}
</style>
</head>


	<article>
		<div class="container" role="main">
			<h2>후기 글쓰기</h2>
			<form name="form" id="form" role="form" method="post" >
				<div class="mb-3">
					<label for="title">제목</label>
					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
				</div>
				<div class="mb-3">
					<label for="reg_id">작성자</label>
					<input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="이름을 입력해 주세요">
				</div>
				 
			<div class="mb-3">

					<label for="content">내용</label>

					<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>

				</div>


			<div class="row form-group">
				<div class="col-12 col-md-9">
					<input type="file" id="file-multiple-input"
						name="file-multiple-input" multiple="" class="form-control-file">
				</div>
			</div>





			<div class="mb-3">

					<label for="tag">TAG</label>

					<input type="text" class="form-control" name="tag" id="tag" placeholder="태그를 입력해 주세요">

				</div>
			</form>

			<div >
				<button type="button" class="btn btn-secondary" id="btnSave"   onClick = " location.href='ReviewList'">저장</button>
				<button type="button" class="btn btn-secondary" id="btnList"  onClick="location.href='ReviewList'">목록</button>
				<button type="button" class="btn btn-secondary" id="btnPrev" onClick="location.href='Main.do'">이전</button>
			</div>
	<script>
function save1() {
	alert("저장완료!");
}
</script>
		</div>
	</article>
</body>
</html>

