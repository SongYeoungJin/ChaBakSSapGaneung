<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contetView.jsp</title>
</head>
<body>

<!-- 이 페이지 replyView페이지랑 연결된거라서 삭제 ㄴㄴ ㄴ -->
<style>

body {
	padding-top: 70px;
	padding-bottom: 30px;
}

.board_title {
	font-weight : 700;
	font-size : 22pt;
	margin : 10pt;
}

.board_info_box {
	color : #6B6B6B;
	margin : 10pt;
}

.board_author {
	font-size : 10pt;
	margin-right : 10pt;
}

.board_date {
	font-size : 10pt;
}

.board_content {
	color : #444343;
	font-size : 12pt;
	margin : 10pt;
}

.board_tag {
	font-size : 11pt;
	margin : 10pt;
	padding-bottom : 10pt;
}
</style>




<script>

	$(document).on('click', '#btnList', function(){

		location.href = "${pageContext.request.contextPath}/list";

	});

</script>



	<article>

		<div class="container" role="main">

			<h2>제목</h2>

			

			<div class="bg-white rounded shadow-sm">

				<div class="board_title"><c:out value="${boardContent.title}"/></div>

				<div class="board_info_box">

					<span class="board_author"><c:out value="${boardContent.reg_id}"/>,</span><span class="board_date"><c:out value="${boardContent.reg_dt}"/></span>

				</div>

				<div class="board_content">${boardContent.content}</div>

				<div class="board_tag">TAG : <c:out value="${boardContent.tag}"/></div>

			</div>

			

			<div style="margin-top : 20px">

				<button type="button" class="btn btn-sm btn-secondary" id="btnUpdate">수정</button>

				<button type="button" class="btn btn-sm btn-secondary" id="btnDelete">삭제</button>

				<button type="button" class="btn btn-sm btn-secondary" id="btnList">목록</button>
			</div>

		</div>

		

	</article>

</body>
</html>