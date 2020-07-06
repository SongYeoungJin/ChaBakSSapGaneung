<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myReview</title>
	<style>
		body {
  			padding-top: 20px;
  			padding-bottom: 130px;
		}
	</style>
<%@ include file="../../include/header.jsp" %>

  
</head>
<body>
<%@ include file="../../include/navigator.jsp" %>
  
<!-- (장소)리뷰수정은 페이지생성으로 구현. 
	그리고 하루 지나면 리뷰수정 불가능하게 기능 구현하자. 
	(물품)리뷰수정은 댓글처럼 작성해서 textarea만 보내는것이 좋음
-->

<!-- for문 -->
내가 쓴 총 리뷰 &nbsp;&nbsp;<input type="text" name="myReview">개

<table border='1' class="table table-striped table-bordered table-hover">
	<tr>
		<td>장소명</td>
		<td>사진</td>
		<td>내용</td>
		<td>별점</td>
		<td>수정</td>
		<td>삭제</td>
	</tr>
	<tr>
		<td><a href="Review" name="place1">안양호수공원</a>
		<td><a href="Review"><img src="ChaBakPlace1.jpg" alt=""/></a></td>
		<td><input type="textarea" name="내가 올린리뷰"></td>
		<td><img src="Star1.jpg" alt=""/></td>
		<td><button class="btn btn-secondary" name="modifyReview"  onClick="location.href='myReviewModify'">수정</button></td>
		<td><button class="btn btn-secondary" name="deleteReview" onclick="deleteCheck">삭제</button></td>
	</tr>
</table>

  	<script language="JavaScript">

function deleteCheck(){ 
	if (confirm("삭제 하시겠습니까?")){ 
		if(true) {
			alert("삭제 되었습니다."); 
		}
	}else{ 
	alert("삭제 취소 되었습니다."); 
	return; 
	} 
	}
</script>
</body>
</html>