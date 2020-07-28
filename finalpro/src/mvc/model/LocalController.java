package mvc.model;

import java.util.List;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mvc.dao.LocalDao;
import mvc.service.LocalService;
import mvc.vo.LocalActVO;
import mvc.vo.LocalFoodVO;
import mvc.vo.LocalVO;
import mvc.vo.PageVO;
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
		List<LocalVO> list = localDao.localList();
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping(value = "/goLocalDetail", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView goLocalDetail(ServletRequest request, PageVO vo, Model model,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") String cntPerPage) {
		ModelAndView mav = new ModelAndView("local/localDetail");
		int total = localDao.total(vo);
		int total1 = localDao.total1(vo);
		int total2 = localDao.total2(vo);
		total = total | total1;
		total = total | total2;
		int locnum = vo.getLocnum();
		String value = vo.getSearchValue();
		String type = vo.getSearchType();
		vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		vo.setLocnum(locnum);
		System.out.println(vo.getStart());
		System.out.println(vo.getEnd());
		vo.setSearchValue(value);
		vo.setSearchType(type);
		List<LocalFoodVO> listfood = localDao.localfoodListp(vo);
		mav.addObject("listfood", listfood);

		List<LocalHotelVO> listhotel = localDao.localhotelListp(vo);
		mav.addObject("listhotel", listhotel);

		List<LocalActVO> listact = localDao.localactListp(vo);
		mav.addObject("listact", listact);

		String name = localDao.localName(vo.getLocnum());
		
		mav.addObject("name", name);
		mav.addObject("paging", vo);
		System.out.println(vo.getStartPage());
		System.out.println(vo.getEndPage());
		return mav;
	}
}