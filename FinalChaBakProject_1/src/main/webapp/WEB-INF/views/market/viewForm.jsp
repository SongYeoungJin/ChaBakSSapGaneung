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
    	<input type='hidden' id='mar_num' name='mar_num' value='${result.mar_num }' />
        <div>
            <h2>글쓰기</h2>
            <div>
                <table>
                    <tr>
                        <th>상품명</th>
                        <td><input style="width: 500px" type="text" id="mar_name" name="mar_name" value="${result.mar_name }"/></td>
                    </tr>
                    <%--   <tr>
                        <th>상품사진</th>
                        <td><img src="${result.mar_Img}" width="340" height="auto"/></td>
                        <td><img src="${result.mar_ThumbImg}"/></td>
                    </tr> --%>
                    <tr>
                        <th>내용</th>
                        <td><textarea style="width: 500px" rows="10" cols="10" id="c" name="mar_content"><c:out value="${result.mar_content }"/></textarea></td>
                    </tr>
                    <tr>
                        <th>가격</th>
                        <td>
                        <fmt:formatNumber value="${result.mar_price}" pattern="###,###,###"/>
                        <%-- <input style="width: 500px" type="text" id="mar_price" name="mar_price" value="${result.mar_price }"/> --%></td>
                    </tr>
                    <c:if test="${result.mar_Img != null && result.mar_Img != ''}">
                        <tr>
                    	<th>파일</th>
						<td>
							<img style="width: 200px; height: auto;" src="data:image/jpeg;base64,<c:out value='${result.mar_Img}'/>"/>
						</td>
                    </tr>
                    </c:if>
                    <tr>
                        <th>수량</th>
                        <td><input style="width: 500px" type="text" id="mar_count" name="mar_count" value="${result.mar_count }"/></td>
                    </tr>
                </table>
                <div>
                    <a href='#' onClick='fn_update()'>수정</a>
                    <a href='#' onClick='fn_delete()'>삭제</a>
                    <a href='#' onClick='fn_cancel()'>목록</a>
                    <a href='#' onClick='fn_relay()'>답변</a>   
                </div>
                <p class="addToCart">
 					<button type="button" class="addCart_btn">카트에 담기</button>
 
 					<script>
  						
 					</script>
				</p>
            </div>
        </div>
    </form>
<script>
$(".addCart_btn").click(function(){
	 	var mar_num = $("#mar_num").val();
		var cartCount = $(".numBox").val();

		var data = {
				mar_num : mar_num,
				cartCount : cartCount
		};

		$.ajax({
		url : "/view/addCart",
		type : "post",
		data : data,
		success : function(result){
			if(result == 1) {
			     alert("카트 담기 성공");
			     $(".numBox").val("1");
			} 
			else {
			     alert("회원만 사용할 수 있습니다.")
			     $(".numBox").val("1");
			}
		},
			error : function(){
				alert("카트 담기 실패");
		}
		});
	});


//목록
function fn_cancel(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/market/marketList.do'/>";
    form.submit();
    
}
 
 
//수정
function fn_update(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/market/updatemarket.do'/>";
    form.submit();
}

//삭제
function fn_delete(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/market/deletemarket.do'/>";
    form.submit();
}
 
//답변
function fn_relay(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/market/relayForm.do'/>";
    form.submit();
    
}
</script>
</div>
</body>
</html>
