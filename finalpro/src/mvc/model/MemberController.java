package mvc.model;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.mvel2.ast.ForNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;

import mvc.dao.HotelDao;
import mvc.dao.MemberDao;
import mvc.service.MemberService;
import mvc.vo.HotelReserve2VO;
import mvc.vo.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private HotelDao hotelDao;
	@Autowired
	private MemberDao memberDao;
	@Autowired
	private MemberService memberService;
	private static final Log LOG = LogFactory.getLog(MemberController.class);

	@RequestMapping(value = "/goMember")
	public String joinMember() {
		return "member/member";
	}
	
	@RequestMapping(value = "/goPay")
	public String goPay() {
		return "final/pay";
	}
	

	@RequestMapping(value = "/goLogin", method = { RequestMethod.GET, RequestMethod.POST })
	public String goLogin(Model model, HttpSession session, HttpServletRequest request) {
		/* ���̹����̵�� ���� URL�� �����ϱ� ���Ͽ� naverLoginBOŬ������ getAuthorizationUrl�޼ҵ� ȣ�� */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);

		// https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		// redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("���̹�:" + naverAuthUrl);

		// ���̹�
		model.addAttribute("url", naverAuthUrl);
		model.addAttribute("next", request.getParameter("next"));
		return "member/login";
	}

	@RequestMapping(value = "/goMypage")
	public String goMypage(HotelReserve2VO v, HttpServletRequest request) {
		List<HotelReserve2VO> vo = hotelDao.resList2(v);
		request.setAttribute("list", vo);
		return "member/mypage";
	}

	@RequestMapping(value = "/joinMember")
	public ModelAndView insertMember(MemberVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String address = request.getParameter("ad0") + "/" + request.getParameter("ad1") + "/"
				+ request.getParameter("ad2") + "/" + request.getParameter("ad3");
		vo.setAddress(address);
		memberDao.insertMember(vo);
		mav.setViewName("member/joinSuccess");
		return mav;
	}

	@RequestMapping(value = "/deleteMember")
	public String deleteMember(String id) {
		memberService.deleteMember(id);
		return "redirect:logout";
	}

	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

// ���̹� �α��� ������ callbackȣ�� �޼ҵ�
	@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {
		System.out.println("����� callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		// �α��� ����� ������ �о�´�.
		apiResult = naverLoginBO.getUserProfile(oauthToken);
		JSONParser parser = new JSONParser();
		Object obj = null;
		try {
			obj = parser.parse(apiResult);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		JSONObject jsonobj = (JSONObject) obj;
		JSONObject response = (JSONObject) jsonobj.get("response");

		String nname = (String) response.get("nickname");
		String nemail = (String) response.get("email");
		System.out.println(nemail);
		System.out.println(nname);
		session.setAttribute("name", nname);
		session.setAttribute("email", nemail);
		/* ���̹� �α��� ���� ������ View ȣ�� */
		return "redirect:main";
	}

	@RequestMapping(value = "/login", method = { RequestMethod.POST, RequestMethod.GET })
	public String login(MemberVO vo, HttpSession session, RedirectAttributes redirectAttributes, String next) {

		MemberVO vv = memberDao.loginSession(vo);
		SimpleDateFormat sim = new SimpleDateFormat("yyyy�� MM��dd�� HH��mm��ss��");
		String time1 = sim.format(new Date());
		String urlPath = "";

		System.out.println(next.replace("/finalpro/", "hotel/"));
		if (vv != null) { // �α���
			session.setAttribute("name", vv.getName());
			session.setAttribute("address", vv.getAddress());
			session.setAttribute("email", vv.getEmail());
			session.setAttribute("phone", vv.getPhone());
			session.setAttribute("id", vv.getId());
			LOG.info(vv.getId() + "���� " + time1 + "�� �α����ϼ̽��ϴ�.");
			if (next.equals("")) {
				urlPath = "redirect:main";
			} else {
				urlPath = next.replace("/finalpro/", "redirect:");
			}

		} else {// �߸�
			redirectAttributes.addFlashAttribute("error", "���̵� ��й�ȣ�� �߸��Ǿ����ϴ�.");
			urlPath = "redirect:goLogin";
		}
		System.out.println(urlPath);
		return urlPath;
	}

	@RequestMapping(value = "/logout")
	public String logoutpro(HttpSession session) {
		SimpleDateFormat sim = new SimpleDateFormat("yyyy�� MM��dd�� HH��mm��ss��");
		String time1 = sim.format(new Date());
		LOG.info(session.getAttribute("id") + "���� " + time1 + "�� �α׾ƿ��ϼ̽��ϴ�.");
		session.removeAttribute("name");
		session.removeAttribute("address");
		session.removeAttribute("phone");
		session.removeAttribute("id");
		session.invalidate();

		String urlPath = "redirect:main";
		return urlPath;
	}

	@RequestMapping(value = "/editMember")
	public String editMember(MemberVO vo, HttpServletRequest request, HttpSession session) {
		System.out.println(vo.getId());
		String address = request.getParameter("ad0") + "/" + request.getParameter("ad1") + "/"
				+ request.getParameter("ad2") + "/" + request.getParameter("ad3");
		vo.setAddress(address);
		memberDao.editMember(vo);
		session.setAttribute("name", vo.getName());
		session.setAttribute("address", vo.getAddress());
		session.setAttribute("email", vo.getEmail());
		session.setAttribute("phone", vo.getPhone());
		session.setAttribute("id", vo.getId());
		return "redirect:goMypage?id=" + vo.getId();
	}

	@RequestMapping(value = "/deleteReserve")
	public String deleteReserve(HotelReserve2VO vo, String id) {
		System.out.println(vo.getId());
		memberDao.deleteReserve(vo);
		return "redirect:goMypage?id=" + id;

	}
}