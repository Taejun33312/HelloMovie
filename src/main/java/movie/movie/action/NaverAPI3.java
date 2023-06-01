package movie.movie.action;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import movie.movie.db.NaverAPIDTO;

import java.io.BufferedReader;
import java.io.IOException;

public class NaverAPI3 {
	
	public NaverAPIDTO getNaverAPI(String movieNm) throws IOException {
		NaverAPIDTO dto = new NaverAPIDTO();
		
		StringBuilder urlBuilder = new StringBuilder("http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2"); /*URL*/
		urlBuilder.append("&" + URLEncoder.encode("ServiceKey","UTF-8") + "=" + URLEncoder.encode("ZR71DU22L3W99C5872Q7", "UTF-8"));/*Service Key*/
		urlBuilder.append("&" + URLEncoder.encode("title","UTF-8") + "=" + URLEncoder.encode(movieNm, "UTF-8")); /*영화제목*/
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		
		if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) { 
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else { 
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		} 
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) { 
			sb.append(line);
		} 
		rd.close();
		conn.disconnect();
		System.out.println(sb.toString());
		
        
        JSONParser parser = new JSONParser();
        
        JSONObject obj;
		try {
			obj = (JSONObject)parser.parse(sb.toString());
			JSONArray items = (JSONArray) obj.get("Data");
			JSONObject items2 = (JSONObject) items.get(0);
			
			JSONArray items3 = (JSONArray) items2.get("Result");
			JSONObject items4 = (JSONObject) items3.get(0);
			String img = (String) items4.get("posters");
			System.out.println(img);
			System.out.println(items4.get("posters").toString().split("|")[0]);
			
//			dto.setImg(items4.get("posters").toString());
			dto.setImg(img.split(".jpg")[0] + ".jpg");
			
//			dto.setUserRating(userRating);
			

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return dto;
	}
}