<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>myInfo</title>
<style>
body {
	padding-top: 20px;
	padding-left: 80px;
}
</style>
<%@ include file="../../include/header.jsp"%>


</head>

<body>
	<%@ include file="../../include/navigator.jsp"%>


		<form name="myInfo" action="member_modify.ing" method="post">
			<p>내 정보</p>
			<!-- 이름 : <input type="text" name="user_name" value="차박쌉가능" readonly><br>
이메일 : <input type="e-mail" name="user_email" readonly><br>
my 포인트 : <input type="text" name="user_point" value="p" readonly><button>구매</button><br>
아이디 : <input type="text" name="user_id" value="" readonly><br>
<input type="submit" value="내정보수정"> 
-->
<div class="container">	
	<table align="center" border='0' class="table table-striped table-bordered table-hover">
		<tr>
	
					<td><div class="col-sm-4">이름</div></td>
					<td name="m_name"><div class="col-sm-8">${login_result.m_name}</div></td>
				</tr>
				<tr>
					<td><div class="col-sm-4">이메일</div></td>
					<td name="m_email"><div class="col-sm-8">${login_result.m_email}</div></td>
				</tr>
				<tr>
					<td><div class="col-sm-4">MY포인트</div></td>
					<td name="m_point"><div class="col-sm-8">${login_result.m_point}
							p</div></td>

				</tr>
				<tr>
					<td><div class="col-sm-4">아이디</div></td>
					<td name="m_id" value="${login_result.m_id}"><div
							class="col-sm-8">${login_result.m_id}</div></td>
				</tr>
			</table>
</div>
			</br>

		</form>

		<div>
			<input class="btn btn-secondary" type="submit" onClick="location.href='myInfoModify'" value="내 정보수정">
			<input class="btn btn-secondary" type="submit" onClick="location.href='buypoint'" value="포인트 충천">
		</div>



		<!-- 	</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<button class="btn btn-secondary" onClick="location.href='buypoint'">포인트
		충전</button> -->
</body>
</html>