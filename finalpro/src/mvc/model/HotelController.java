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
   public String goHotel(Model model) throws IOException {
         
      List<HotelTotalVO> list = localDao.localtotalList();
      List<HotelReviewVO> reviewlist = localDao.localreviewList();      
      model.addAttribute("list", list);
      model.addAttribute("reviewlist", reviewlist);

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

   // ȣ���� ������ �������� ���
   @RequestMapping(value = "/goHotelDetail")
   public String goHotelDetail(int num, Model model) {
      List<LocalHotelVO> list = localDao.localhotelAllList();
      model.addAttribute("list", list);
      String[] arr = { "Shinra", "Lotte", "Hidden", "Nest", "Para", "She" };

      return "hotel/hotelDetail" + arr[num - 2];
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

}