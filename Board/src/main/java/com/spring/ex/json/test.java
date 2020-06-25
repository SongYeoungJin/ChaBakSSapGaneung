package com.spring.ex.json;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;


public class test {
	 public static void main(String[] args) {
	        //최종 완성될 JSONObject 선언(전체)
	        JSONObject jsonObject = new JSONObject();
	 
	        //person의 JSON정보를 담을 Array 선언
	        JSONArray placeArray = new JSONArray();
	 
	        //person의 한명 정보가 들어갈 JSONObject 선언
	        JSONObject placeInfo = new JSONObject();
	 
	        //정보 입력
	        placeInfo.put("name", "경상남도 통영");
	        placeInfo.put("lat", "34.763762780807625");
	        placeInfo.put("lng", "128.41085458963792");
	        //Array에 입력
	        placeArray.add(placeInfo);
	 
	        placeInfo = new JSONObject();
	        placeInfo.put("name", "강원도 강릉 푸른바다캠핑");
	        placeInfo.put("lat", " 37.76152917598204");
	        placeInfo.put("lng", " 128.93680559884834");
	        placeArray.add(placeInfo);
	        
	        placeInfo = new JSONObject();
	        placeInfo.put("name", "전라남도 노을공원 ");
	        placeInfo.put("lat", " 34.80749364407596 ");
	        placeInfo.put("lng", " 126.36543538751738");
	        placeArray.add(placeInfo);
	        
	        placeInfo = new JSONObject();
	        placeInfo.put("name", "충청남도 난지도");
	        placeInfo.put("lat", "37.04513814619228 ");
	        placeInfo.put("lng", "126.42301797703234");
	        placeArray.add(placeInfo);
	        
	        placeInfo = new JSONObject();
	        placeInfo.put("name", "인천 송산");
	        placeInfo.put("lat", " 37.477333094270875");
	        placeInfo.put("lng", "126.5535678012239");
	        placeArray.add(placeInfo);
	        
	        placeInfo = new JSONObject();
	        placeInfo.put("name", "서울 한강공원 ");
	        placeInfo.put("lat", "37.51932046820791");
	        placeInfo.put("lng", "126.94253566564129");
	        placeArray.add(placeInfo);
	        //전체의 JSONObject에 사람이란 name으로 JSON의 정보로 구성된 Array의 value를 입력
	        jsonObject.put("place", placeArray);
	 
	        //JSONObject를 String 객체에 할당
	        String jsonInfo = jsonObject.toJSONString();
	 
	        System.out.print(jsonInfo);
	 
	    }
							
}
