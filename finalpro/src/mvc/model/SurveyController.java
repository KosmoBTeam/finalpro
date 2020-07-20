package mvc.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mvc.dao.LocalDao;
import mvc.dao.SurveyDao;
import mvc.service.SurveyService;
import mvc.vo.SurveyViewVO;

@Controller
public class SurveyController {

	@Autowired
	private SurveyDao surveyDao;

	@Autowired
	private LocalDao localDao;
	
	@Autowired
	private SurveyService surveyService;

// �������� �ۼ������� �̵�
	@RequestMapping(value = "/goSurveyWrite")
	public ModelAndView goSurveyWrite() {
		List<List<SurveyViewVO>> viewlist = new ArrayList<List<SurveyViewVO>>();
		for (int i = 2; i < 10; i++) {
			List<SurveyViewVO> list = surveyDao.surveyView(i);
			viewlist.add(list);
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("survey/surveyWrite");
		mav.addObject("list", viewlist);
		return mav;
	}

	@RequestMapping(value = "/goSurveyDetail", method = RequestMethod.POST)
	public ModelAndView surveyUpdate(SurveyViewVO vo,HttpSession session) {
		String[] str = { vo.getSubtype1(), vo.getSubtype2(), vo.getSubtype3(), vo.getSubtype4(), vo.getSubtype5(),
				vo.getSubtype6(), vo.getSubtype7(), vo.getSubtype8() };
		for (int i = 2; i < 10; i++) {
			SurveyViewVO v = new SurveyViewVO();
			v.setSubtype(str[i-2]);
			v.setSubcode(i);
			surveyDao.surveyClientUpdatecnt(v);
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("survey/surveyDetail");	
		//����Ŭ�� ����Ǿ� �ִ� subtype�� Char���̱� ������ bit�� ���� ä������ ����Ǳ� ������ �뷮�� ���Ⱑ ���ԵǾ� ����!
		//���� getSubtype1~8�� ���� ���Ⱑ ���Ե� ������ �׷��� ������ ���ڿ��� Ȱ���Ϸ��� trim()�� ����
		//����Ŭ���� Ȱ���Ϸ��� �ٽ� ���⸦ ����������� (vo.getSubtype1().length()=9)
		String subtype = vo.getSubtype1();
		System.out.println(vo.getSubtype1().length());
		SurveyViewVO voc = new SurveyViewVO();
		voc.setSubcode(2);
		voc.setSubtype(subtype);
		System.out.println(voc.getSubtype());
		System.out.println(voc.getSubcode());
		String loc = surveyDao.getLoc(voc);
		System.out.println(loc);
		int locnum = localDao.getLocnum(loc);
		
		System.out.println(locnum);
		System.out.println(loc);	
		
		mav.addObject("loc", loc);
		mav.addObject("locnum", locnum);
		return mav;
	}
}