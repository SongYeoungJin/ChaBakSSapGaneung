<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
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

	<div class="card">
								<div class="card-header">
									<strong>회원탈퇴</strong>
								</div>
								<div class="card-body card-block">
									<form action="member_delete.ing" method="post"
										class="form-horizontal">
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="password-input" class=" form-control-label">Name</label>
											</div>
											<div class="col-12 col-md-9">${login_result.m_name}</div>
										</div>

										<div class="row form-group">
											<div class="col col-md-3">
												<label class=" form-control-label">ID</label>
											</div>
											<input type="hidden" name="m_id" value="${login_result.m_id}">
											<div class="col-12 col-md-9">${login_result.m_id}</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="password-input" class=" form-control-label">Password</label>
											</div>
											<div class="col-12 col-md-3">
												<input type="password" name="m_pw" placeholder="password"
													class="form-control"><small
													class="help-block form-text">Please enter a complex
													password</small>
											</div>
										</div>

										<div class="card-footer">
											<button class="btn btn-primary btn-sm">
												<i class="fa fa-dot-circle-o"></i> Delete
											</button>
											<button type="reset" class="btn btn-danger btn-sm">
												<i class="fa fa-ban"></i> Cancle </button>
										</div>
									</form>
								</div>
							</div>
</body>
</html>