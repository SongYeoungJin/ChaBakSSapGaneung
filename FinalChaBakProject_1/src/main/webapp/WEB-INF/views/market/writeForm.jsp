<%@ page language="java"  pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>

<style>
.foo img {margin:200px 0;}
</style>


    
<body>
<div>
    <form id="writeForm" name="writeForm" method="post" enctype="multipart/form-data" onSubmit="return false;">
        <div>
            <h2>글쓰기</h2>
            <div>
                <table>
                    <tr>
                        <th>상품명</th>
                        <td><input style="width: 500px" type="text" id="mar_name" name="mar_name" /></td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td><textarea style="width: 500px" rows="10" cols="10" id="mar_content" name="mar_content"></textarea></td>
                    </tr>
                    <tr>
                        <th>가격</th>
                        <td><input style="width: 500px" type="text" id="mar_price" name="mar_price" /></td>
                    </tr>
						<tr>
						<th>파일</th>
							<td>
								<!-- <input type ="file" id="mar_file" name ="mar_file"> --> 
								<div class="form-group">
									<input multiple type="file" name="file" id="file">
								</div>

								<!-- <div>
									<img id="foo" style="width: 300px; height: 300px;" />
								</div>  -->
								<!-- 파일 첨부 스크립트 --> 
								
							<!-- 	<script type="text/javascript">
									function readURL(input) {
										if (input.files && input.files[0]) {
											var reader = new FileReader();
											reader.onload = function(e) {
												$('#foo').attr('src',
														e.target.result);
											}
											reader
													.readAsDataURL(input.files[0]);
										}
									}

									$("#mar_Img").change(function() {
										readURL(this);
									});
								</script> -->
								<%-- <%=request.getRealPath("/") %> --%>
							</td>
						</tr>
						<tr>
							<th>수량</th>
							<td><input type="count" id="mar_count" name="mar_count"></td>
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
//글쓰기
function fn_addtoBoard(){
    var form = document.getElementById("writeForm");
    form.action = "<c:url value='/market/write.do'/>";
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
    form.action = "<c:url value='/market/marketList.do'/>";
    form.submit();
    
}
</script>
</div>
</body>
</html>
