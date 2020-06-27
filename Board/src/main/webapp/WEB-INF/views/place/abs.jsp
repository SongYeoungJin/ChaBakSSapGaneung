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

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

<%@ include file="../../include/header.jsp" %>
  <!-- Custom styles for this template -->
  <link rel="stylesheet"
  href="<c:url value='resources/startbootstrap/css/full-width-pics.css'/>">
   <style>
    .overlay_info {border-radius: 0px; margin-bottom: 0px; float:left;position: relative; border: 1px solid #ccc; border-bottom: 2px solid #ddd;background-color:#fff;}
    .overlay_info:nth-of-type(n) {border:0; box-shadow: 0px 1px 2px #888;}
    .overlay_info a {display: block; background: #d95050; background: #d95050  no-repeat right 12px center; text-decoration: none; color: #fff; padding:12px 36px 12px 14px; font-size: 14px; border-radius: 6px 6px 0 0}
    .overlay_info a strong {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_icon.png) no-repeat; padding-left: 30px;}
    .overlay_info .desc {padding:17px;position: relative; min-width: 190px; height: 83px}
    .overlay_info img {vertical-align: top;}
    .overlay_info .address {font-size: 12px; color: #333; position: absolute; left: 80px; right: 14px; top: 24px; white-space: normal}
    .overlay_info:after {content:'';position: absolute; margin-left: -6px; left: 30%; bottom: -4px; width: 2px; height: 2px; background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png) no-repeat 0 bottom;}
</style>

  <title>차박장소</title>
</head>

<body>
 <%@ include file="../../include/navigator.jsp" %>
 
 <%
 String name = request.getParameter("p_name");
 String lat = request.getParameter("p_lat");
 String lng = request.getParameter("p_lng");
 %>
  <%
 Object list;
 list=request.getAttribute("list"); 
 out.println(list);
 %>
 ${list}
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=01f7615ee8d025a981b28bb6241ff9f0"></script>


	<script>
		var container = document.getElementById('map');
		var options = {
				center: new kakao.maps.LatLng(36.333276, 127.402208),
			level: 13
		};
		var map = new kakao.maps.Map(container, options);
		
		var a = document.getElementById('d');
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		var positions = [
			   {
			        content : '<div class="overlay_info">' +
			        '  <a  href="Review"><strong>월정리 해수욕장</strong></a>' +
			        '    <div class="desc">' +
			        '<img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_thumb.png" alt="">' +
			       ' <span class="address">월정리 해수욕장</span>' +
			        '  </div>' +
			        '</div>',  
			        title:"월정리 해수욕장",
			        latlng: new kakao.maps.LatLng(37.1692, 126.628)
			    },
			    {
			        content :'<div class="overlay_info">' +
			        '  <a  href="Review"><strong>백사장 해수욕장</strong></a>' +
			        '    <div class="desc">' +
			        '<img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_thumb.png" alt="">' +
			        ' <span class="address">백사장 해수욕장</span>' +
			        '  </div>' +
			        '</div>', 
			        title:"백사장 해수욕장",
			        latlng: new kakao.maps.LatLng(35.178621, 129.199672)
			    },
			    {
			        content :'<div class="overlay_info">' +
			        '  <a  href="Review"><strong><%= name%></strong></a>' +
			        '    <div class="desc">' +
			        '<img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_thumb.png" alt="">' +
			        ' <span class="address"><%= name%></span>' +
			        '  </div>' +
			        '</div>', 
			        title:"<%= name%>",
			        latlng: new kakao.maps.LatLng(<%= lat%>, <%= lng%>)
			    },
			    {
			        content : '<div class="overlay_info">' +
			        '  <a  href="Review"><strong>을왕리 해수욕장</strong></a>'+
			        '    <div class="desc">' +
			        '<img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_thumb.png" alt="">' +
			        ' <span class="address">을왕리 해수욕장</span>' +
			        '  </div>' +
			        '</div>',   
			        title:"을왕리 해수욕장",
			        latlng: new kakao.maps.LatLng(36.579109, 126.314518)
			    }
			];
		
<%-- 	
	for (var i = 0; i < list.length; i++) {
		var positions = [
			   {
			        content : '<div class="overlay_info">' +
			        '  <a  href="Review"><strong>list.name[i]</strong></a>' +
			        '    <div class="desc">' +
			        '<img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_thumb.png" alt="">' +
			       ' <span class="address">list.name[i]</span>' +
			        '  </div>' +
			        '</div>',  
			        title:"list.name[i]",
			        latlng: new kakao.maps.LatLng(list.lat[i], list.lng[i])
			    }
			];
		}
			 --%>

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
		    var iwRemoveable = true;
		    var infowindow = new kakao.maps.InfoWindow({
		    	content : positions[i].content, 
		    	
		    	position : marker.getPosition(),
		    	xAnchor: 0.5, // 커스텀 오버레이의 x축 위치입니다. 1에 가까울수록 왼쪽에 위치합니다. 기본값은 0.5 입니다
		        yAnchor: 1.1, // 커스텀 오버레이의 y축 위치입니다. 1에 가까울수록 위쪽에 위치합니다. 기본값은 0.5 입니다
		        removable : true
		    });
		    
		//    kakao.maps.event.addListener(marker, 'click', function() {
		        // 마커 위에 인포윈도우를 표시합니다
		   //     infowindow.open(map, marker);
		      
		//  });
		 kakao.maps.event.addListener(marker, 'click', makeOverListener(map, marker, infowindow)); 
		 emovable : iwRemoveable
		}
		 
infowindow.close();
function makeOverListener(map, marker, infowindow) { 
	return function() {
		infowindow.open(map, marker);
	};
}
		
	
		</script>
		
		
	<!-- footer -->
  		

	 </body>

</html>