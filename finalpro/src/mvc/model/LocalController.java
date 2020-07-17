package mvc.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mvc.dao.LocalDao;
import mvc.service.LocalService;
import mvc.vo.LocalActVO;
import mvc.vo.LocalFoodVO;
import mvc.vo.LocalVO;
import mvc.vo.LocalHotelVO;

@Controller
public class LocalController {

@Autowired
private LocalDao localDao;

@Autowired
private LocalService localService;

//국내여행 메인페이지로 이동
@RequestMapping(value = "/goLocalMain")
public ModelAndView goLocal() {
    ModelAndView mav = new ModelAndView("local/localMain");
    List<LocalVO> list=localDao.localList();
    mav.addObject("list",list);
    return mav;
}

@RequestMapping(value="/goLocalDetail",method = RequestMethod.GET)
public ModelAndView goLocalDetail(int locnum) {
    ModelAndView mav= new ModelAndView("local/localDetail");

    List<LocalFoodVO> listfood=localDao.localfoodList(locnum);
    mav.addObject("listfood", listfood);

    List<LocalHotelVO> listhotel=localDao.localhotelList(locnum);
    mav.addObject("listhotel", listhotel);

    List<LocalActVO> listact=localDao.localactList(locnum);
    mav.addObject("listact", listact);

    String name=localDao.localName(locnum);
    mav.addObject("name", name);
    return mav;
}
}