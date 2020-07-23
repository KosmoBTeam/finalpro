package mvc.jsonData;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestParam;

public class localData {
	public void callDetail(HttpServletRequest request, HttpServletResponse response, @RequestParam String contentId,
            @RequestParam String contentTypeId) throws Exception {
        	request.setCharacterEncoding("utf-8");
        	response.setContentType("text/html; charset=utf-8");
 
        	String addr = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey=";
        	String serviceKey = "SNTryLx5MBWWXut0EW7kwerkBrihXKIT9dPhlSFTHoXVEEq3FJ8%2F4nI570dkSzVCtVelucxns2ZgMg8ybCzeLA%3D%3D";
        	String parameter = "";

        	PrintWriter out = response.getWriter();  //클라이언트로 보낼 TEXT DATA, JSON에 넣을 때 쭉 나열하는듯
 
        	parameter = parameter + "&" + "contentId=" + contentId; //JSP에서 받아올 contentid, contentTypeid
        	parameter = parameter + "&" + "contentTypeId=" + contentTypeId;
        	parameter = parameter + "&" + "MobileOS=ETC";
        	parameter = parameter + "&" + "MobileApp=startip";
        	parameter = parameter + "&" + "_type=json";
 
        	addr = addr + serviceKey + parameter;
        	URL url = new URL(addr);
 
        	System.out.println(addr);
 
        	InputStream in = url.openStream(); //URL로 부터 자바로 데이터 읽어오도록 URL객체로 스트림 열기
 
        	ByteArrayOutputStream bos1 = new ByteArrayOutputStream(); //InputStream의 데이터들을 바이트 배열로 저장하기 위해
        	IOUtils.copy(in, bos1);//InputStream의 데이터를 바이트 배열로 복사
        	in.close();
        	bos1.close();
 
        	String mbos = bos1.toString("UTF-8");
 
        	byte[] b = mbos.getBytes("UTF-8");
        	String s = new String(b, "UTF-8"); //String으로 풀었다가 byte배열로 했다가 다시 String으로 해서 json에 저장할 배열을 print?? 여긴 잘 모르겠다
        	out.println(s);
 
        	JSONObject json = new JSONObject();
        	json.put("data", s);                                                          
    	}

}
