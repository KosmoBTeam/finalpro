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
		//����
		String path = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?"
				+ "ServiceKey="+"�������� Ű" //���� ����Ű
				+ "&contentTypeId="+map.get("contenttype")
				+ "areaCode="+map.get("areacode")
				+ "sigunguCode=" //�ñ��� �ڵ� �Է�!
				+ "cat1=&cat2=&cat3="//�� �� �� �з�
				+ "listYN=Y" //��� ����(Y=���, N=����)
				+ "&MobileOS=ETC" //OS����
				+ "&MobileApp=startrip" //���� �� = ������ ��
				+ "type=_json" // ��� Ÿ�� = json ����
				+ "&arrange=A" //���ı��� (A=�����, B=��ȸ�� ,C=������ �� ,D=������ ��) 
				+ "&numOfRows="+map.get("totalCount")
				+ "pageNo=1";
		//Ŭ���̾�Ʈ�� ���� textdata�� json�� ���� �� �� ����
		URL url = new URL(path);
		//URL�� ���� �ڹٷ� �����͸� �о� ������ URL��ü�� ��Ʈ�� ����
		InputStream is = url.openStream();
		//������ �о����
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
		
		//���� ������ ���� ���� ����
		BufferedWriter fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(session.getServletContext().getRealPath("/resources/update")+File.separator+map.get("contenttype")+"_"+map.get("areacode")+".csv"),"MS949"));
		//jsonObject�� ���� ��ü ���
		//List<ContentVO>
		return "";
	}
}
