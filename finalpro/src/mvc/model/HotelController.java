package mvc.model;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import mvc.vo.HotelRoomImgVO;
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
   public String goHotel(Model model) {
      List<HotelTotalVO> list = localDao.localtotalList();
      List<HotelReviewVO> reviewlist = localDao.localreviewList();
      model.addAttribute("list", list);
      model.addAttribute("reviewlist", reviewlist);
      
      return "hotel/hotelMain";
   }
   
   @RequestMapping(value = "/gokakaopay", method = { RequestMethod.GET, RequestMethod.POST })
   public String gokakao(HttpSession session,Model model,int hrnum) {
            
      String id = (String) session.getAttribute("id");
         HotelReserve2VO vo = hotelDao.resList(hrnum);
         vo.setId(id);// ���ǿ��� ���� ���̵�
         vo.setHrnum(hrnum);// hotelIn-->hotel_success(���ڰ��� "list")-->goHotelSuccess("list"�� hrnum�� �����´�.)         
         SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
         Date beginDate;
          Date endDate;
         
         try {
            beginDate = formatter.parse(vo.getCheckin());
            endDate = formatter.parse(vo.getCheckout());
            long diff = endDate.getTime() - beginDate.getTime();
             long diffDays = diff / (24 * 60 * 60 * 1000);
             String difday = Long.toString(diffDays);
             int day = Integer.parseInt(difday);
             vo.setPay(vo.getPay()*day);
         } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         
         System.out.println(vo.getId());
         System.out.println(vo.getImg());
         
         model.addAttribute("list", vo);
      return "member/kakaopay";
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
      HotelDetailVO vo = hotelDao.dlist(num);
      model.addAttribute("vo", vo);
      
      String[] arr1 = vo.getFoodplace().split(", ");
      List<String> detail = new ArrayList<String>();
      for (String string : arr1) {
         detail.add(string);
      }

      model.addAttribute("detail",detail);
      
      return "hotel/hotel_Reserve";
   }

   // ȣ�ڿ��࿡ �������� �� �ߴ� ���������� �󼼺���� �̵���
   // �Ķ���ͷ� �޴� hrnum�� ȣ���� ���� �Ǿ��� �� ������ hotel_reserve_seq.nextVal�����ν� �� ���� �������̴�.
   @RequestMapping(value = "/goHotelSuccess", method = { RequestMethod.GET, RequestMethod.POST })
   public String goMypage(HttpSession session,Model model,int hrnum) {
      
      String id = (String) session.getAttribute("id");
      HotelReserve2VO vo = hotelDao.resList(hrnum);
      vo.setId(id);// ���ǿ��� ���� ���̵�
      vo.setHrnum(hrnum);// hotelIn-->hotel_success(���ڰ��� "list")-->goHotelSuccess("list"�� hrnum�� �����´�.)
      
      SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
      Date beginDate;
       Date endDate;
      
      try {
         beginDate = formatter.parse(vo.getCheckin());
         endDate = formatter.parse(vo.getCheckout());
         long diff = endDate.getTime() - beginDate.getTime();
          long diffDays = diff / (24 * 60 * 60 * 1000);
          String difday = Long.toString(diffDays);
          int day = Integer.parseInt(difday);
          vo.setPay(vo.getPay()*day);
      } catch (ParseException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      System.out.println(vo.getId());
      System.out.println(vo.getImg());
      
      model.addAttribute("list", vo);
      return "hotel/hotel_successDetail";
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

      model.addAttribute("detail",detail);
      model.addAttribute("vo", vo);
      List<HotelRadioVO> rlist = hotelDao.hotelRadioList(num);
      model.addAttribute("rlist",rlist);
      //ȣ�� ���� ������ ������ �ѱ�� ����
      List<HotelRoomImgVO> imglist = hotelDao.imgList(num);
      model.addAttribute("imglist",imglist);
      
      
      return "hotel/hotelDetail";
   }
   
   // ȣ�� ���� ������ �μ�Ʈ��
   @RequestMapping(value = "/hotelIn", method = RequestMethod.POST)
   public String addMember(Model model,HotelReserve2VO vo)  {
      System.out.println(vo.getRoomtype()+"hi");
      hotelDao.addHotel(vo);
      
      
      SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");

       

       Date beginDate;
       Date endDate;
       HotelReserve2VO data = hotelDao.resList3();
      try {
         beginDate = formatter.parse(vo.getCheckin());
         endDate = formatter.parse(vo.getCheckout());
         long diff = endDate.getTime() - beginDate.getTime();
          long diffDays = diff / (24 * 60 * 60 * 1000);
          String difday = Long.toString(diffDays);
          int day = Integer.parseInt(difday);
          data.setPay(data.getPay()*day);
      } catch (ParseException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
        

      model.addAttribute("list", data);
      return "hotel/hotel_successDetail";
   }
}