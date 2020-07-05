<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myInfoModify</title>
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


	<form name="myInfoModify" action="member_modify.ing" method="post">

		<p>내 정보 수정</p>
		<!-- 이름 : <input type="text" name="user_name" value="차박쌉가능" readonly><br>
이메일 : <input type="e-mail" name="user_email" placeholder="aaa@naver.com"><br>
my 포인트 : <input type="text" name="user_point" value="p" readonly><br>
아이디 : <input type="text" name="user_id" value="" readonly><br>
현재 패스워드 : <input type="password" name="user_password" maxLength="15"><br>
변경할 패스워드 : <input type="password" name="user_password" maxLength="15"><br>
패스워드 재입력 : <input type="password" name="user_password" maxLength="15"><br>
<input type="submit" value="정보수정하기"> 
-->

		<table class="table table-striped table-bordered table-hover">
			<tr>
				<td>이름</td>
				<td><div>${login_result.m_name}</div></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name="m_email"
					placeholder="변경할 Email을 입력" value="${login_result.m_email}" /></td>
			</tr>
			<tr>
				<td>MY포인트</td>
				<td>&nbsp;&nbsp; p &nbsp;&nbsp;
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="m_id" value="${login_result.m_id}"
					readonly /></td>
			</tr>
			<tr>
				<td>현재 비밀번호</td>
				<td><input type="password" name="m_pw"
					value="${login_result.m_pw}" maxLength="30"></td>
			</tr>
			<hr>
			<tr>
				<td>변경할 비밀번호</td>
				<td><input type="password" name="userPw2"
					value="${login_result.m_pw}" maxLength="30"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" name="userPw2"
					value="${login_result.m_pw}" maxLength="30"></td>
			</tr>

			<tr>
				<td>주소</td>
				<td><input type="address" name="m_address"
					value="${login_result.m_address}" maxLength="30"></td>
			</tr>
		</table>

		<input class="btn btn-secondary" type="submit"
			onClick="location.href='myInfoModify'" value="정보수정완료">
	</form>
	<input class="btn btn-secondary" type="submit"
			onClick="location.href='member_delete'" value="회원탈퇴">





</body>
</html>