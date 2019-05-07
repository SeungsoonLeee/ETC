package subwayApp;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Scanner;
import javax.net.ssl.HttpsURLConnection;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class SMain {

	public static void main(String[] args) {
		// X-Naver-Client-Id = hq9h9FZ9BzmGN2YhhjYa
		// X-Naver-Client-Secret = YqVXedDtL2
		String str = null;
		Scanner sc = new Scanner(System.in);

		try {
			System.out.print("���� : ");
			str = sc.next();
			str = URLEncoder.encode(str, "utf-8");

			// ����ö
			// http://openapi.seoul.go.kr:8088/(����Ű)/json/CardSubwayStatsNew/1/600/20190501
			// http://openapi.seoul.go.kr:8088/(575a4655496b636839386f58586542)/json/CardSubwayStatsNew/1/600/20190501
			// īī�� ����
			// https://dapi.kakao.com/v2/local/search/keyword.json
			String url = "http://openapi.seoul.go.kr:8088/575a4655496b636839386f58586542/json/CardSubwayStatsNew/1/600/";
			url += str;
			
			URL u = new URL(url);
			HttpURLConnection hsuc = (HttpURLConnection) u.openConnection();
			InputStream is = hsuc.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
//			BufferedReader br = new BufferedReader(isr);
//			System.out.println(br.readLine());
			
			JSONParser jp = new JSONParser();
			JSONObject subwayData = (JSONObject) jp.parse(isr);
			JSONObject cssn = (JSONObject) subwayData.get("CardSubwayStatsNew");
			System.out.println("�� ���� �� : " + cssn.get("list_total_count"));

			JSONArray row = (JSONArray) cssn.get("row");
			JSONObject station = null;
			Station s = null;
			for (int i = 0; i < row.size(); i++) {
				station = (JSONObject) row.get(i);
				s = new Station();
				s.setLineNum(station.get("LINE_NUM").toString());
				s.setSubStaNm(station.get("SUB_STA_NM").toString());
				s.setRidePasgrNum(Integer.parseInt(station.get("RIDE_PASGR_NUM").toString().replace(".0", "")));
				s.setAlightPasgrNum(Integer.parseInt(station.get("ALIGHT_PASGR_NUM").toString().replace(".0", "")));
				s.print();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
