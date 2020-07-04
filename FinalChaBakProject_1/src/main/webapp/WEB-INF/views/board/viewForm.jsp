<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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
<div>
    <form id="viewForm" name="viewForm" method="post">
    	<input type='hidden' id='cb_num' name='cb_num' value='${result.cb_num }' />
        <div>
            <h2>글쓰기</h2>
            <div>
                <table>
                    <tr>
                        <th>제목</th>
                        <td><input style="width: 500px" type="text" id="cb_title" name="cb_title" value="${result.cb_title }"/></td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td><textarea style="width: 500px" rows="10" cols="10" id="cb_memo" name="cb_memo"><c:out value="${result.cb_memo }"/></textarea></td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td><input style="width: 500px" type="text" id="cb_author" name="cb_author" value="${result.cb_author }"/></td>
                    </tr>
                </table>
                <div>
                    <a href='#' onClick='fn_update()'>수정</a>
                    <a href='#' onClick='fn_delete()'>삭제</a>
                    <a href='#' onClick='fn_cancel()'>목록</a>
                    <a href='#' onClick='fn_relay()'>답변</a>                    
                </div>
        </div>
    </form>
<script>

//목록
function fn_cancel(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/board/boardList.do'/>";
    form.submit();
}
 
//수정
function fn_update(){  
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/board/updateboard.do'/>";
    form.submit();
}

//삭제
function fn_delete(){   
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/board/deleteboard.do'/>";
    form.submit();
}
 

</script>
</div>
</body>
</html>
