package teamcoma.controller.chef.navermap;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import com.google.gson.Gson;

public class NaverMap {


	String geoUrl = "https://openapi.naver.com/v1/map/geocode";

	public Point getXY(String address) {
		try {
			
			String parameter = "?query=" + URLEncoder.encode(address, "utf-8") + "&coordType=latlng";

			//			System.out.println(parameter);

			URL url = new URL(geoUrl + parameter);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();


			// GET 방식 설정
			conn.setRequestMethod("GET");

			// 헤더 설정하기
			conn.setRequestProperty("X-Naver-Client-Id", "vbaElWnX_USKRs1fbM30");
			conn.setRequestProperty("X-Naver-Client-Secret", "ilPW_CFEAO");

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

			Gson gson = new Gson();

			Geo geo = gson.fromJson(br, Geo.class);
			
			String[] strArray = new String[2];

		  return geo.getResult().getItems().get(0).getPoint();		
		
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}	
	}

}
