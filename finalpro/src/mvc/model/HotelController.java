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

   // 호텔예약 메인페이지로 이동
   @RequestMapping(value = "/goHotelMain")
   public String goHotel(Model model) throws IOException {
         
      List<HotelTotalVO> list = localDao.localtotalList();
      List<HotelReviewVO> reviewlist = localDao.localreviewList();      
      model.addAttribute("list", list);
      model.addAttribute("reviewlist", reviewlist);

      return "hotel/hotelMain";
   }

   // 호텔예약 예약페이지로 이동
   // num으로 넘어오는 값은 예약하는 hotel테이블의 num컬럼과의 foreign값이다.
   // num으로 넘어오는 값으로 호텔의 방종류와 가격을 구분한다.
   @RequestMapping(value = "/goHotelReserve", method = { RequestMethod.GET, RequestMethod.POST })
   public String goHotelReserve(int num, Model model, String title) {
      model.addAttribute("title", title);
      model.addAttribute("num", num);
      List<HotelRadioVO> list = hotelDao.hotelRadioList(num);

      model.addAttribute("list", list);
      return "hotel/hotel_Reserve";
   }

   // 호텔예약에 성공했을 때 뜨는 페이지에서 상세보기로 이동함
   // 파라미터로 받는 hrnum은 호텔이 예약 되었을 때 생성된 hotel_reserve_seq.nextVal값으로써 각 행의 고유값이다.
   @RequestMapping(value = "/goHotelSuccess", method = { RequestMethod.GET, RequestMethod.POST })
   public ModelAndView goMypage(HttpSession session, int hrnum) {
      ModelAndView mov = new ModelAndView("hotel/hotel_successDetail");
      String id = (String) session.getAttribute("id");
      HotelReserve2VO vo = new HotelReserve2VO();
      vo.setId(id);// 세션에서 받은 아이디값
      vo.setHrnum(hrnum);// hotelIn-->hotel_success(인자값은 "list")-->goHotelSuccess("list"의 hrnum을 가져온다.)
      List<HotelReserve2VO> list = hotelDao.resList(vo);// 예약직후 상세정보에 직접쓰이는 리스트
      mov.addObject("list", list);
      return mov;
   }

   // 호텔의 상세정보 페이지를 띄움
   @RequestMapping(value = "/goHotelDetail")
   public String goHotelDetail(int num, Model model) {
      List<LocalHotelVO> list = localDao.localhotelAllList();
      model.addAttribute("list", list);
      String[] arr = { "Shinra", "Lotte", "Hidden", "Nest", "Para", "She" };

      return "hotel/hotelDetail" + arr[num - 2];
   }

   // 호텔 예약 정보를 인서트함
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