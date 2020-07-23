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

        	PrintWriter out = response.getWriter();  //Ŭ���̾�Ʈ�� ���� TEXT DATA, JSON�� ���� �� �� �����ϴµ�
 
        	parameter = parameter + "&" + "contentId=" + contentId; //JSP���� �޾ƿ� contentid, contentTypeid
        	parameter = parameter + "&" + "contentTypeId=" + contentTypeId;
        	parameter = parameter + "&" + "MobileOS=ETC";
        	parameter = parameter + "&" + "MobileApp=startip";
        	parameter = parameter + "&" + "_type=json";
 
        	addr = addr + serviceKey + parameter;
        	URL url = new URL(addr);
 
        	System.out.println(addr);
 
        	InputStream in = url.openStream(); //URL�� ���� �ڹٷ� ������ �о������ URL��ü�� ��Ʈ�� ����
 
        	ByteArrayOutputStream bos1 = new ByteArrayOutputStream(); //InputStream�� �����͵��� ����Ʈ �迭�� �����ϱ� ����
        	IOUtils.copy(in, bos1);//InputStream�� �����͸� ����Ʈ �迭�� ����
        	in.close();
        	bos1.close();
 
        	String mbos = bos1.toString("UTF-8");
 
        	byte[] b = mbos.getBytes("UTF-8");
        	String s = new String(b, "UTF-8"); //String���� Ǯ���ٰ� byte�迭�� �ߴٰ� �ٽ� String���� �ؼ� json�� ������ �迭�� print?? ���� �� �𸣰ڴ�
        	out.println(s);
 
        	JSONObject json = new JSONObject();
        	json.put("data", s);                                                          
    	}

}
