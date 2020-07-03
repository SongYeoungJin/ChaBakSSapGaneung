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
<%@include file ="../../include/header.jsp" %>

<style> /* uploadResult.jsp 표시할 부분 iframe으로 설정 */
iframe1 {
    width : 400px;
    height : 200px;
    border : 1px;
    border-style : solid;
}
</style>
</head>
    
<body>
<div>
    <form id="writeForm" name="writeForm" method="get">
        <div>
            <h2>글쓰기</h2>
            <div>
                <table>
                    <tr>
                        <th>제목</th>
                        <td><input style="width: 500px" type="text" id="cb_title" name="cb_title" /></td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td><textarea style="width: 500px" rows="10" cols="10" id="cb_memo" name="cb_memo"></textarea></td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td><input style="width: 500px" type="text" id="cb_author" name="cb_author" /></td>
                    </tr>
                </table>
                <div>
                    <a href='#' onClick="fn_addtoBoard()">글 등록</a>
                    <a href='#' onClick='fn_cancel()'>목록</a>
                </div>
            </div>
        </div>
    </form>

<script type="text/javascript">
/*
function readURL(input) {
	 if (input.files && input.files[0]) {
	  var reader = new FileReader();
	  
	  reader.onload = function (e) {
	   $('#mar_img1').attr('src', e.target.result);  
	  }
	  reader.readAsDataURL(input.files[0]);
	  }
	}
	$("#file").change(function(){
	   readURL(this);
	});
*/
//글쓰기
function fn_addtoBoard(){
    var form = document.getElementById("writeForm");
    form.action = "<c:url value='/board/write.do'/>";
    form.submit();
}
 
 /*
$(document).ready(function(){
	var formObj = $("form[name='writeForm']");
	alert(formObj);
		formObj.attr("action", "/board/write.do");
		formObj.attr("method", "post");
		//formObj.submit();
	});
*/
 
//목록
function fn_cancel(){
    
    var form = document.getElementById("writeForm");
    alert(form);
    form.action = "<c:url value='/board/boardList.do'/>";
    form.submit();
    
}
</script>
</div>
</body>
</html>
