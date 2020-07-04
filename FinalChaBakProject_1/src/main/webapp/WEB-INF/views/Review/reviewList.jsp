<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="EUC-KR">
<title>reviewList</title>
</head>
<body>
<%@ include file="../../include/navigator.jsp" %>

<div class="container">
	<form id="reviewForm" name="reviewForm" method="post">
		<table border="1" class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>리뷰제목</th>
                    <th>리뷰내용</th>
                    <th>작성자</th>
                    <th>날짜</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="result" items="${list }" varStatus="status">
                    <tr>
                        <td><c:out value="${result.rb_num }"/></td>
                        <td><a href='#' onClick='fn_view(${result.rb_num})'><c:out value="${result.rb_title }"/></a></td>
                        <td><c:out value="${result.rb_memo }"/></td>
                        <td><c:out value="${result.rb_author }"/></td>
                        <td><fmt:formatDate value="${result.rb_regdate}" pattern="yyyy-MM-dd" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div>            
            <a href='#' onClick='fn_write()' class='btn'>글쓰기</a>   
            <a href="#" onClick="fn_delete(1)" class='btn'>삭제</a> <!-- 삭제할 항목 넣어줘야함 . -->
        </div>
	</form>
	<script>
	//글쓰기
	function fn_write(){
	    var form = document.getElementById("reviewForm");
	    form.action = "<c:url value='/Review/writeForm.do'/>";
	    form.submit();
	}
	 
	//글조회
	function fn_view(rb_num){
	    var form = document.getElementById("reviewForm");
	    var url = "<c:url value='/Review/viewContent.do'/>";
	    url = url + "?rb_num=" + rb_num;
	    form.action = url;    
	    form.submit(); 
	}

	</script>
</div>
</body>
</html>