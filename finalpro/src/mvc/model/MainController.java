package mvc.model;

import java.util.List;

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
	//최초 메인페이지로 이동함
	//최신리스트(리뷰,로컬)을 모델의 속성값으로 뷰에넘겨줌
	@RequestMapping(value = {"/","/main"})
	public String goMain(Model model) {
		List<LocalVO> llist = localDao.mainLocalList();
		List<ReviewVO> rlist=reviewDao.mainReviewList();
		model.addAttribute("llist", llist);
		model.addAttribute("rlist", rlist);	
		return "main";
	}
}
