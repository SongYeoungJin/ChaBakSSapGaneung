<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>리뷰 리스트</title>

<%@ include file="../../include/header.jsp"%>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>
<body>

<%@ include file="../../include/navigator.jsp"%>
	<style>
.box {
	margin: 100px auto;
	width: 300px;
	height: 50px;
}
</style>


	<!-- Page Content -->
	<div class="container">
		<table class="table table-striped table-bordered table-hover">
			<tr>
				<td>
					<table width="100%" cellpadding="0" cellspacing="0" border="0"
						class="table">
						<tr align="center">
							<td width="5" height="30" /></td>
							<td>글목록</td>

						</tr>
					</table>
				</td>
			</tr>
			</table>
		<table width="51%" cellpadding="0" cellspacing="0" border="0"
			class="table">
			<tr height="5">
				<td width="5"></td>
			</tr>
			<td width="73">번호</td>
			<td width="379">제목</td>
			<td width="73">작성자</td>
			<td width="164">작성일</td>
			<td width="58">조회수</td>
			</tr>
			<tr height="25" align="center">

			</tr>
			<tr height="1">
				<td colspan="6"></td>
			</tr>
			<tr height="1">
				<td colspan="6" width="752"></td>
			</tr>
		</table>
            	<table width="100%" cellpadding="0" cellspacing="0" border="0"
					class="table">
					<tr>
						<td colspan="4" height="5"></td>
					</tr>
                 <c:forEach var="result" items="${list }" varStatus="status"> 
                    	<td><input type="checkbox" name='chkbox'>
                        <td><c:out value="${result.cb_num }"/></td>
                        <td><a href='BviewContent.do?cb_num=${result.cb_num}' onClick='fn_view(${result.cb_num})'><c:out value="${result.cb_title }"/></a></td>
                        <td><c:out value="${result.cb_memo }"/></td>
                        <td><c:out value="${result.cb_author }"/></td>
                        <td><fmt:formatDate value="${result.cb_regdate}" pattern="yyyy-MM-dd" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        
        
        
        <table width="100%" cellpadding="0" cellspacing="0" border="0"
			class="table">
			<tr align="center">
				<td align="right"><input type=button class="btn btn-secondary"
					value="글쓰기" onClick="location='board/BwriteForm.do'"> <input
					type=button class="btn btn-secondary" value="이 전"
					onClick="history.go(-1)"> <input type=button
					class="btn btn-secondary" value="삭 제" onClick="fn_delete()">

					<div class="box">
						<div class="container-1">
							<span class="icon"><i class="fa fa-search"></i></span> <input
								type="search" id="search" placeholder="Search..." /> <input
								type=button class="btn btn-secondary" value="검색" onClick="">
						</div>
					</div>
				</td>
			</tr>
		</table>
		
		
		
        
        
        
        
      <!--   <div>            
            <a href='#' onClick='fn_write()'>글쓰기</a>   
            <a href="#" onClick="fn_delete()">삭제</a> 삭제할 항목 넣어줘야함 .
        </div> -->
    </form>
    <form id="selectFilter" name="selectFilter" method="post">
    </form>
<script>
//글쓰기
function fn_write(){
    
    var form = document.getElementById("boardForm");
    
    form.action = "<c:url value='/BwriteForm.do'/>";
    form.submit();
    
}
 
//글조회
function fn_view(cb_num){
    
    var form = document.getElementById("boardForm");
    var url = "<c:url value='/BviewContent.do'/>";
    url = url + "?cb_num=" + cb_num;
    
    form.action = url;    
    form.submit(); 
}

//글삭제
function fn_delete(cb_num) { 
	var chkbox = document.getElementsByName('chkbox'); 
	var chk = false; 
	for(var i=0 ; i<chkbox.length ; i++) 
	{ 
		if(chkbox[i].checked) { 
			chk = true; 
			var form = document.getElementById(cb_num);
			alert(form + " 삭제?");
			form.action = "<c:url value='/deleteboard.do'/>";
			url = url + "?cb_num=" + cb_num;
		    form.submit();
			} 
		else { chk = false; } } 
	}

/*

function fn_delete(cb_num){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/board/deleteboard.do'/>";
    url = url + "?cb_num=" + cb_num;
    form.submit();
} 
*/

</script>
</div>
</body>
</html>