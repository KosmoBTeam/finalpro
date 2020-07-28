package mvc.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mvc.dao.HotelDao;
import mvc.dao.LocalDao;
import mvc.dao.ReviewDao;
import mvc.service.HotelService;
import mvc.vo.HotelDetailVO;
import mvc.vo.HotelRadioVO;
import mvc.vo.HotelReserve2VO;
import mvc.vo.HotelReviewVO;
import mvc.vo.HotelTotalVO;
import mvc.vo.LocalHotelVO;
import mvc.vo.PageVO;

@Controller
public class HotelController {

	@Autowired
	private HotelDao hotelDao;
	@Autowired
	private LocalDao localDao;

	// ȣ�ڿ��� ������������ �̵�
	@RequestMapping(value = "/goHotelMain")
	public String goHotel(Model model,PageVO vo,@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") String cntPerPage) {
		int total = localDao.totalhotelmain(vo);
		String value = vo.getSearchValue();
		String type = vo.getSearchType();
		vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		vo.setSearchValue(value);
		vo.setSearchType(type);
		List<HotelTotalVO> list = localDao.localtotalListwithp(vo);
		List<HotelReviewVO> reviewlist = localDao.localreviewList();
		model.addAttribute("list", list);
		model.addAttribute("reviewlist", reviewlist);
		vo.setNowPage(Integer.parseInt(nowPage));
		vo.setCntPerPage(Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		return "hotel/hotelMain";
	}

	// ȣ�ڿ��� ������������ �̵�
	// num���� �Ѿ���� ���� �����ϴ� hotel���̺��� num�÷����� foreign���̴�.
	// num���� �Ѿ���� ������ ȣ���� �������� ������ �����Ѵ�.
	@RequestMapping(value = "/goHotelReserve", method = { RequestMethod.GET, RequestMethod.POST })
	public String goHotelReserve(int num, Model model, String title) {
		model.addAttribute("title", title);
		model.addAttribute("num", num);
		List<HotelRadioVO> list = hotelDao.hotelRadioList(num);
		model.addAttribute("list", list);
		return "hotel/hotel_Reserve";
	}

	// ȣ�ڿ��࿡ �������� �� �ߴ� ���������� �󼼺���� �̵���
	// �Ķ���ͷ� �޴� hrnum�� ȣ���� ���� �Ǿ��� �� ������ hotel_reserve_seq.nextVal�����ν� �� ���� �������̴�.
	@RequestMapping(value = "/goHotelSuccess", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView goMypage(HttpSession session, int hrnum) {
		ModelAndView mov = new ModelAndView("hotel/hotel_successDetail");
		String id = (String) session.getAttribute("id");
		HotelReserve2VO vo = new HotelReserve2VO();
		vo.setId(id);// ���ǿ��� ���� ���̵�
		vo.setHrnum(hrnum);// hotelIn-->hotel_success(���ڰ��� "list")-->goHotelSuccess("list"�� hrnum�� �����´�.)
		List<HotelReserve2VO> list = hotelDao.resList(vo);// �������� �������� �������̴� ����Ʈ
		mov.addObject("list", list);
		return mov;
	}


	// ȣ�� ���� ������ �μ�Ʈ��
	@RequestMapping(value = "/hotelIn", method = RequestMethod.POST)
	public ModelAndView addMember(HotelReserve2VO vo) {
		ModelAndView mov = new ModelAndView();
		hotelDao.addHotel(vo);
		List<HotelReserve2VO> list = hotelDao.resList3(vo);
		mov.addObject("list", list);
		mov.setViewName("hotel/hotel_success");
		return mov;
	}
	
	// ȣ���� ������ �������� ���
	   @RequestMapping(value = "/goHotelDetail" , method = { RequestMethod.GET, RequestMethod.POST })
	   public String goHotelDetail(Model model,int num) {
	      
	      HotelDetailVO vo = hotelDao.dlist(num);
	      
	      String[] arr1 = vo.getFoodplace().split(", ");
	      List<String> detail = new ArrayList<String>();
	      for (String string : arr1) {
	         detail.add(string);
	      }
	      double mapx = vo.getMapx();
	      double mapy = vo.getMapy();
	      
	      double x1 = Math.round(mapx*1000000)/1000000.0;
	      double y1 = Math.round(mapy*1000000)/1000000.0;
	      
	      vo.setMapx(x1);
	      vo.setMapy(y1);
	      model.addAttribute("detail",detail);
	      model.addAttribute("vo", vo);
	      List<HotelRadioVO> rlist = hotelDao.hotelRadioList(num);
	      model.addAttribute("rlist",rlist);
	      return "hotel/hotelDetail";
	   }

}