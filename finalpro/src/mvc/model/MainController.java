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
		
		
		return "main";
		
	}
	
	
}
