<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8"> 
<div id="map" style=" position: absolute;
  top: 28%;
  left: 30%;
  width: 700px;
  height: 610px;
  margin: -50px 0 0 -50px;"></div>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

<%@ include file="../../include/header.jsp" %>
  <!-- Custom styles for this template -->
  <link rel="stylesheet"
  href="<c:url value='resources/startbootstrap/css/full-width-pics.css'/>">
  
 
  <title>차박장소</title>
</head>

<body>
 <%@ include file="../../include/navigator.jsp" %>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=01f7615ee8d025a981b28bb6241ff9f0"></script>
	
	

 
 <c:forEach items="${list}" var = "list">
 	<c:out value="p_name"></c:out>
 	<c:out value="p_lat"></c:out>
 	<c:out value="p_lng"></c:out>
 </c:forEach>
 
	<script>
		var container = document.getElementById('map');
		var options = {
				center: new kakao.maps.LatLng(36.333276, 127.402208),
			level: 13
		};
		var map = new kakao.maps.Map(container, options);
		

		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		var positions = [
			   {
			        content : '<div class="customoverlay_main">' +
			        '  <a  href="Review">' +
			        '    <span style="color:red">${list.p_name}</span>' +
			        '  </a>' +
			        '</div>',   
			        title: "제부도",
			        latlng: new kakao.maps.LatLng(${list.p_lat}, ${list.p_lng})
			   }
			];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "resources/img/aa.png"
	
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(38, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		 
		    });
		    var overlay = new kakao.maps.CustomOverlay({content : positions[i].content, map : map, position : marker.getPosition()});
		}
		
		kakao.maps.event.addListener(marker, 'click', function() {
		      // 마커 위에 인포윈도우를 표시합니다
		      infowindow.open(map, marker);  
		});
		</script>
		
		
	<!-- footer -->
  		
  
	 </body>

</html>