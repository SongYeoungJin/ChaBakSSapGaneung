<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>포인트구매</title>
<%@ include file="../../include/header.jsp" %>


</head>
<body>
	<%@ include file="../../include/navigator.jsp" %>
    
	<!-- Page Content -->
  <div class="container">
  <!-- 
  <div class="py-5 bg-image" style='background-color:#0000ff'>
  -->
  <!-- 
    <div class="row">
      <div class="col-lg-3">

        <h2 class="my-5"></h2>
        <div class="list-group">
          <a class="list-group-item" href="productList1.do">충전</a>
        </div>
	  </div>
    </div>
    -->
    
    
      <!-- /.col-lg-3 -->
<form name="buypoint" id="buypoint" action="buypoint.jsp" method="GET">
<div class="container">
	<table align="center" border='0' class="table table-striped table-bordered table-hover">
		<tr>
			<td align="center" colspan="2">포인트</td>
		</tr>
		<tr>
			<td>현재 내포인트</td>
			<td>${login_result.m_point} &nbsp; p</td>
		</tr>
		<tr>
			<td>구매할 포인트</td>
			<td>
				<select name="point">
    				<option value="5000">5000</option>
    				<option value="10000">10000</option>
    				<option value="15000">15000</option>
    				<option value="20000">20000</option>
    				<option value="직접입력">직접입력</option>
  				</select><br>
			</td>
		</tr>
	</table>
	
</div>
</form>
&nbsp;&nbsp;&nbsp;
	<input type="submit" value="충전" class="btn btn-secondary" onclick="point(point.value)" >
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="이전" class="btn btn-secondary" onClick="history.go(-1)">

	
	
	<script>
function point() {
	alert("충전완료!");
	var point1 = document.getElementById('buypoint');	
	var url = "<c:url value='/buypoint.do'/>";
	//url = url + "?m_num=" + m_num;
	
	point1.action=url;
	point1.submit();
}
</script>
</body>
</html>