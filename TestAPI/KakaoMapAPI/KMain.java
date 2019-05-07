package kakaoApp;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Scanner;

import javax.net.ssl.HttpsURLConnection;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import loc.Loc;

public class KMain {

	public static void main(String[] args) {
		// X-Naver-Client-Id = hq9h9FZ9BzmGN2YhhjYa
		// X-Naver-Client-Secret = YqVXedDtL2
		String str = null;
		Scanner sc = new Scanner(System.in);

		try {
			System.out.print("���� : ");
			str = sc.next();	
			str = URLEncoder.encode(str, "utf-8");
			
			//����ö��
			//http://openapi.seoul.go.kr:8088/(����Ű)/json/CardSubwayStatsNew/1/600/20190501
			//http://openapi.seoul.go.kr:8088/(575a4655496b636839386f58586542)/json/CardSubwayStatsNew/1/600/20190501
			//īī�� ����
			//https://dapi.kakao.com/v2/local/search/keyword.json
			String url = "https://dapi.kakao.com/v2/local/search/keyword.json";
			url += "?query=" + str;
			url += "&x=127.023680&y=37.502418&radius=10000";
			url += "&sort=distance";

			URL u = new URL(url);
			HttpsURLConnection hsuc = (HttpsURLConnection) u.openConnection();
			hsuc.setRequestProperty("Authorization", "KakaoAK c7354f2e382729cf15b544a66527a8f2");
			
			InputStream is = hsuc.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
					
			// json-simple.jar
			JSONParser jp = new JSONParser();
			// ������
			// [ : �迭 => JSONArray
			// { : ��ü => JSONObject
			// �Ľ� ���� => ��ü�� locData��� ������ ����
			JSONObject locData = (JSONObject) jp.parse(isr); 
			// locData.get("�Ӽ���")
			JSONObject meta = (JSONObject) locData.get("meta");
			System.out.println(meta.get("total_count"));
			
			JSONArray documents = (JSONArray) locData.get("documents");
			JSONObject loc = null;
			Loc l = null;
			for (int i = 0; i < documents.size(); i++) {
				loc = (JSONObject) documents.get(i);
				l = new Loc();
				l.setName(loc.get("place_name").toString());
				l.setAddress(loc.get("address_name").toString());
				l.setPhone(loc.get("phone").toString());
				l.setDistance(loc.get("distance").toString());
				l.print();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
