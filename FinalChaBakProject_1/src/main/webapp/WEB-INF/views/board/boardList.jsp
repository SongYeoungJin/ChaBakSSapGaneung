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

</head>
<body>
<%@ include file="../../include/navigator.jsp" %>
<div class="container">
    <form id="boardForm" name="boardForm" method="post">
        <table border="1" class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                	<th><input type="checkbox" name="Allchkbox" onclick="checkAll();"></th>
                    <th>번호</th>
                    <th>제목</th>
                    <th>내용</th>
                    <th>작성자</th>
                    <th>날짜</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="result" items="${list }" varStatus="status">
                    <tr>
                    	<td><input type="checkbox" name='chkbox'>
                        <td><c:out value="${result.cb_num }"/></td>
                        <td><a href='#' onClick='fn_view(${result.cb_num})'><c:out value="${result.cb_title }"/></a></td>
                        <td><c:out value="${result.cb_memo }"/></td>
                        <td><c:out value="${result.cb_author }"/></td>
                        <td><fmt:formatDate value="${result.cb_regdate}" pattern="yyyy-MM-dd" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div>            
            <a href='#' onClick='fn_write()'>글쓰기</a>   
            <a href="#" onClick="fn_delete(1)">삭제</a> <!-- 삭제할 항목 넣어줘야함 . -->
        </div>
    </form>
    <form id="selectFilter" name="selectFilter" method="post">
    </form>
<script>
//글쓰기
function fn_write(){
    
    var form = document.getElementById("boardForm");
    
    form.action = "<c:url value='/board/writeForm.do'/>";
    form.submit();
    
}
 
//글조회
function fn_view(cb_num){
    
    var form = document.getElementById("boardForm");
    var url = "<c:url value='/board/viewContent.do'/>";
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
			form.action = "<c:url value='/board/deleteboard.do'/>";
			url = url + "?cb_num=" + cb_num;
		    form.submit();
			} 
		else { 
			chk = false; 
		} 
		
	} 
}

/*
function deleteReport(){
    var cnt = $("input[name='chkbox']:checked").length;
    var arr = new Array();
    $("input[name='chkbox']:checked").each(function() {
        arr.push($(this).attr('id'));
    });
    if(cnt == 0){
        alert("선택된 글이 없습니다.");
    }
    else{
        $.ajax = {
            type: "POST"
            url: "OOOO.do"
            data: "RPRT_ODR=" + arr + "&CNT=" + cnt,
            dataType:"json",
            success: function(jdata){
                if(jdata != 1) {
                    alert("삭제 오류");
                }
                else{
                    alert("삭제 성공");
                }
            },
            error: function(){alert("서버통신 오류");}
        };
    }
}
*/



</script>
</div>
</body>
</html>