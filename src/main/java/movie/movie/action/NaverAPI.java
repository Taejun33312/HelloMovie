package movie.movie.action;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import movie.movie.db.NaverAPIDTO;

import java.io.BufferedReader;
import java.io.IOException;

public class NaverAPI {
	
	public NaverAPIDTO getNaverAPI(String movieNm) throws IOException {
		System.out.println(movieNm);
		StringBuilder urlBuilder = new StringBuilder("http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2&nation=대한민국"); /*URL*/
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=ZR71DU22L3W99C5872Q7");/*Service Key*/
		urlBuilder.append("&" + URLEncoder.encode("title","UTF-8") + "=" + URLEncoder.encode(movieNm, "UTF-8")); /*상영년도*/
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
		
		return null;
	}
}