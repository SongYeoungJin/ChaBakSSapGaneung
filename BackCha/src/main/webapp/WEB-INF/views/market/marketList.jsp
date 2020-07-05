<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../../include/headerAdmin2.jsp" %>
</head>
<body>
<div class="container">
    <form id="marketForm" name="marketForm" method="post">
        <table border="0" class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                	<th>check</th>
                    <th>번호</th>
                    <th>상품명</th>
                    <th>상품사진</th>
                    <th>내용</th>
                    <th>가격</th>
                    <th>수량</th>
                </tr>
            </thead>
            <tbody> 
                <c:forEach var="result" items="${list }" varStatus="status">
                    <tr onClick='fn_view(${result.mar_num})'>
                    	<td><input type="checkbox" name='chkbox'>
                        <td><c:out value="${result.mar_num }"/></td>
                       
                        <td align="center">${result.mar_name }</td>
                 <td><%-- <img src="<c:url value='${result.mar_src}${result.mar_img_name}${result.mar_extension}'/>" width="50" height="50"/></td>
                        <td align="center"><img src="${path}/resources/images/${result.mar_Img}" width="50" height="50"/></td>
                          --%>
                        <td><c:out value="${result.mar_content }"/></td>
                        <td><fmt:formatNumber value="${result.mar_price}" pattern="###,###,###"/><%-- <c:out value="${result.mar_price }"/> --%>
                        <td><c:out value="${result.mar_count }"/></td>
                        
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <div>            
            <a href='#' onClick='fn_write()'>글쓰기</a>   
            <a href="#" onClick="fn_delete()">삭제</a> <!-- 삭제할 항목 넣어줘야함 . -->         
        </div>
    </form>
<script>
//글쓰기
function fn_write(){
    
    var form = document.getElementById("marketForm");
    
    form.action = "<c:url value='/market/writeForm.do'/>";
    form.submit();
    
}
 
//글조회
function fn_view(mar_num){
    
    var form = document.getElementById("marketForm");
    var url = "<c:url value='/market/viewContent.do'/>";
    url = url + "?mar_num=" + mar_num;
    
    form.action = url;    
    form.submit(); 
}

//글삭제
function fn_delete(mar_num) { 
	var chkbox = document.getElementsByName('chkbox'); 
	var chk = false; 
	for(var i=0 ; i<chkbox.length ; i++) 
	{ 
		if(chkbox[i].checked) { 
			chk = true; 
			var form = document.getElementById(mar_num);
			alert(form + " 삭제?");
			form.action = "<c:url value='/market/deletemarket.do'/>";
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