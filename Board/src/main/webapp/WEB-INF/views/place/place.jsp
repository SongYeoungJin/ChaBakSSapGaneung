<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<form>
 <% request.setCharacterEncoding("UTF-8"); 
 String name = request.getParameter("p_name");
 %>
 <p>이름 : <%=name %>
  <p>위도 : <%=request.getParameter("p_lat")%></p>
  <p>경도 : <%=request.getParameter("p_lng")%></p>
</form>
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
			        '    <span style="color:red">제부도</span>' +
			        '  </a>' +
			        '</div>',   
			        title: "제부도",
			        latlng: new kakao.maps.LatLng(37.1692, 126.628)
			    },
			    {
			    	   content : '<div class="customoverlay_main">' +
				        '  <a  href="Review">' +
				        '    <span  style="color:black">송정해수욕장</span>' +
				        '  </a>' +
				        '</div>',   
			        title: "송정해수욕장",
			        latlng: new kakao.maps.LatLng(35.178621, 129.199672)
			    },
			    {
			    	   content : '<div class="customoverlay_main">' +
				        '  <a  href="Review">' + 
				        '    <span  style="color:pink">백사장해수욕장</span>' +
				        '  </a>' +
				        '</div>',   
			        title: "백사장해수욕장",
			        latlng: new kakao.maps.LatLng(36.579109, 126.314518)
			    },
			    {
			    	   content : '<div class="customoverlay_main">' +
				        '  <a  href="Review">' +
				        '    <span style="color:yellow">모사금해변</span>' +
				        '  </a>' +
				        '</div>',   
			        title: "모사금해변",
			        latlng: new kakao.maps.LatLng(34.796118, 127.756188)
			    },
			    {
			    	   content : '<div class="customoverlay_main">' +
				        '  <a  href="Review">' +
				        '    <span  style="color:green">강원도 양양</span>' +
				        '  </a>' +
				        '</div>',   
			        title: "강원도 양양",
			        latlng: new kakao.maps.LatLng(38.139311, 128.615376)
			    },
			    {
			    	   content : '<div class="customoverlay_main">' +
				        '  <a  href="Review">' +
				        '    <span style="color:blue">울기해변</span>' +
				        '  </a>' +
				        '</div>',   
			        title: "울기해변",
			        latlng: new kakao.maps.LatLng(35.494516, 129.441140)
			    },
			    {
			    	   content : '<div class="customoverlay_main">' +
				        '  <a  href="Review">' +
				        '    <span style="color:purple"><%=request.getParameter("name")%></span>' +
				        '  </a>' +
				        '</div>',   
			        title: "<%=request.getParameter("name")%>",
			        latlng: new kakao.maps.LatLng(<%=request.getParameter("lat")%>, <%=request.getParameter("lng")%>)
			    }
			];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "resources/startbootstrap/img/aa.png"
	
		    
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