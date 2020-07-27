package mvc.model;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.dao.LocalDao;
import mvc.dao.ReviewDao;
import mvc.vo.LocalHotelVO;
import mvc.vo.LocalVO;
import mvc.vo.ReviewVO;

@Controller
public class MainController {
	@Autowired
	private LocalDao localDao;
	@Autowired
	private ReviewDao reviewDao;
	//���� ������������ �̵���
	//�ֽŸ���Ʈ(����,����)�� ���� �Ӽ������� �信�Ѱ���
	@RequestMapping(value = {"/","/main"})
	public String goMain(Model model) throws Exception, FileNotFoundException, IOException, ParseException {
		List<LocalVO> llist = localDao.mainLocalList();
		List<ReviewVO> rlist=reviewDao.mainReviewList();
		model.addAttribute("llist", llist);
		model.addAttribute("rlist", rlist);	
		/*
		 * //��Ʈ ����ϱ� String path =
		 * "C://Users/KOSMO-27/git/finalpro/finalpro/WebContent/resources/images/hotel/jsondata.json";
		 * JSONParser jsonp = new JSONParser(); Object obj = jsonp.parse(new
		 * BufferedReader(new InputStreamReader(new FileInputStream(path),"UTF-8")));
		 * JSONObject info = (JSONObject) obj;
		 * 
		 * model.addAttribute("info",info);
		 * 
		 * //ǥ ����ϱ� String url
		 * ="http://ncov.mohw.go.kr/bdBoardList_Real.do?brdId=1&brdGubun=13&ncvContSeq=&contSeq=&board_id=&gubun=";
		 * Document doc = Jsoup.connect(url).get(); Elements city =
		 * doc.select("tbody > tr > th"); Elements hwak =
		 * doc.select("tbody > tr :nth-child(5)"); Elements geok =
		 * doc.select("tbody > tr :nth-child(7)"); Elements die =
		 * doc.select("tbody > tr :nth-child(8)"); String cocity = city.text(); String
		 * cogeok = geok.text(); String codie = die.text(); String hwak1 = hwak.text();
		 * 
		 * String[] cohwakarr = hwak1.split(" "); String[] cocityarr =
		 * cocity.split(" "); String[] cogeokarr = cogeok.split(" "); String[] codiearr
		 * = codie.split(" ");
		 * 
		 * model.addAttribute("cohwakarr",cohwakarr);
		 * model.addAttribute("cityarr",cocityarr);
		 * model.addAttribute("geokarr",cogeokarr);
		 * model.addAttribute("diearr",codiearr);
		 */
		
		return "main";
		
	}
	
	
}
