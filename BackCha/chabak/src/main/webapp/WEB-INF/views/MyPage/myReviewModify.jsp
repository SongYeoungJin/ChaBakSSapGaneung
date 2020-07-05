<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마이페이지 메인화면</title>
<%@ include file="../../include/header.jsp" %>


</head>
<body>
<%@ include file="../../include/navigator.jsp" %>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<title>ReviewWrite</title>



<style>
body {
  padding-top: 70px;
  padding-bottom: 30px;
}
</style>
</head>


	<article>
		<div class="container" role="main">
			<h2>리뷰 수정</h2>
			<form name="form" id="form" role="form" method="post">
				<div class="mb-3">
					<label for="title">제목</label>
					<input type="text" class="form-control" name="title" id="title">
				</div>
				<div class="mb-3">
					<label for="reg_id">작성자</label>
					
				</div>
				 
			<div class="mb-3">

					<label for="content">내용</label>

					<textarea class="form-control" rows="5" name="content" id="content"></textarea>

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
				<button type="button" class="btn btn-secondary" id="btnSave"  onclick="location.href='ReviewList'">저장</button>
				<button type="button" class="btn btn-secondary" id="btnList"  onClick="location.href='ReviewList'">목록</button>
				<button type="button" class="btn btn-secondary" id="btnPrev" onClick="history.go(-1)">이전</button>
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

