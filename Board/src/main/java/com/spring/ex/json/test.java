package com.spring.ex.json;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;


public class test {
	 public static void main(String[] args) {
	        //���� �ϼ��� JSONObject ����(��ü)
	        JSONObject jsonObject = new JSONObject();
	 
	        //person�� JSON������ ���� Array ����
	        JSONArray placeArray = new JSONArray();
	 
	        //person�� �Ѹ� ������ �� JSONObject ����
	        JSONObject placeInfo = new JSONObject();
	 
	        //���� �Է�
	        placeInfo.put("name", "��󳲵� �뿵");
	        placeInfo.put("lat", "34.763762780807625");
	        placeInfo.put("lng", "128.41085458963792");
	        //Array�� �Է�
	        placeArray.add(placeInfo);
	 
	        placeInfo = new JSONObject();
	        placeInfo.put("name", "������ ���� Ǫ���ٴ�ķ��");
	        placeInfo.put("lat", " 37.76152917598204");
	        placeInfo.put("lng", " 128.93680559884834");
	        placeArray.add(placeInfo);
	        
	        placeInfo = new JSONObject();
	        placeInfo.put("name", "���󳲵� �������� ");
	        placeInfo.put("lat", " 34.80749364407596 ");
	        placeInfo.put("lng", " 126.36543538751738");
	        placeArray.add(placeInfo);
	        
	        placeInfo = new JSONObject();
	        placeInfo.put("name", "��û���� ������");
	        placeInfo.put("lat", "37.04513814619228 ");
	        placeInfo.put("lng", "126.42301797703234");
	        placeArray.add(placeInfo);
	        
	        placeInfo = new JSONObject();
	        placeInfo.put("name", "��õ �ۻ�");
	        placeInfo.put("lat", " 37.477333094270875");
	        placeInfo.put("lng", "126.5535678012239");
	        placeArray.add(placeInfo);
	        
	        placeInfo = new JSONObject();
	        placeInfo.put("name", "���� �Ѱ����� ");
	        placeInfo.put("lat", "37.51932046820791");
	        placeInfo.put("lng", "126.94253566564129");
	        placeArray.add(placeInfo);
	        //��ü�� JSONObject�� ����̶� name���� JSON�� ������ ������ Array�� value�� �Է�
	        jsonObject.put("place", placeArray);
	 
	        //JSONObject�� String ��ü�� �Ҵ�
	        String jsonInfo = jsonObject.toJSONString();
	 
	        System.out.print(jsonInfo);
	 
	    }
							
}
