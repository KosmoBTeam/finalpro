package mvc.jsonData;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URL;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.json.JSONParser;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.JsonParser.NumberType;

public class LocalDataCsv {
	@RequestMapping(value = "",produces="text/plain; charset=utf-8")
	public String convertJsontoCsv(@RequestParam Map map,Model model, HttpSession session) throws Exception{
		//저장
		String path = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?"
				+ "ServiceKey="+"인증받은 키" //서비스 인증키
				+ "&contentTypeId="+map.get("contenttype")
				+ "areaCode="+map.get("areacode")
				+ "sigunguCode=" //시군구 코드 입력!
				+ "cat1=&cat2=&cat3="//대 중 소 분류
				+ "listYN=Y" //목록 구분(Y=목록, N=개수)
				+ "&MobileOS=ETC" //OS구분
				+ "&MobileApp=startrip" //서비스 명 = 페이지 명
				+ "type=_json" // 결과 타입 = json 파일
				+ "&arrange=A" //정렬구분 (A=제목순, B=조회순 ,C=수정일 순 ,D=생성일 순) 
				+ "&numOfRows="+map.get("totalCount")
				+ "pageNo=1";
		//클라이언트로 보낸 textdata를 json에 넣을 때 쭉 나열
		URL url = new URL(path);
		//URL로 부터 자바로 데이터를 읽어 오도록 URL객체로 스트림 오픈
		InputStream is = url.openStream();
		//데이터 읽어오기
		StringBuffer sb = new StringBuffer();
		BufferedReader rd = new BufferedReader(new InputStreamReader(is, "utf-8"));
		String data;
		while ((data=rd.readLine())!=null) {
			sb.append(data);
		}
		rd.close();
		is.close();
		
		org.json.simple.parser.JSONParser jsonp = new org.json.simple.parser.JSONParser();
		JSONObject jsonobj = (JSONObject)jsonp.parse(rd.toString());
		JSONObject json = (JSONObject)jsonobj.get("response");
		json = (JSONObject)json.get("body");
		json = (JSONObject)json.get("items");
		JSONArray arr = (JSONArray)json.get("item");
		
		//파일 저장을 위한 로직 시작
		BufferedWriter fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(session.getServletContext().getRealPath("/resources/update")+File.separator+map.get("contenttype")+"_"+map.get("areacode")+".csv"),"MS949"));
		//jsonObject로 부터 객체 얻기
		//List<ContentVO>
		return "";
	}
}
