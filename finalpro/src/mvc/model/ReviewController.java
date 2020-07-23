package mvc.model;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import mvc.dao.ReviewDao;
import mvc.service.ReviewService;
import mvc.vo.PageVO;
import mvc.vo.ReplVO;
import mvc.vo.ReviewVO;

@Controller
public class ReviewController {

	@Autowired
	private ReviewDao reviewDao;

	@Autowired
	private ReviewService reviewService;

	// 후기 메인창으로 이동
	@RequestMapping(value = "/goReviewMain", method = { RequestMethod.POST, RequestMethod.GET })
	public String goReview(ServletRequest request, PageVO vo, Model model,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") String cntPerPage) {

		int total = reviewDao.total(vo);
		String value = vo.getSearchValue();
		String type = vo.getSearchType();

		vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		vo.setSearchValue(value);
		vo.setSearchType(type);
		List<ReviewVO> reviewList = reviewDao.reviewList(vo);
		List<ReviewVO> review5List = reviewDao.review5List();
		model.addAttribute("list", reviewList);
	
		model.addAttribute("review5List", review5List);
		model.addAttribute("paging", vo);
		// model.addAttribute("list", boardDao.getBrdList(svo));
		return "review/reviewMain";
	}

	@RequestMapping(value = "/goReviewDetail", method = { RequestMethod.POST, RequestMethod.GET })
	public String goReviewDetail(ReviewVO vo, Model model) {
		vo = reviewDao.getReview(vo);
		List<ReplVO> list = reviewDao.getReplList(vo);
		model.addAttribute("repl", list);
		model.addAttribute("vo", vo);
		// System.out.println(vo.getNum());
		reviewDao.pluscnt(vo.getNum());
		return "review/reviewDetail";
	}

	// 후기 글쓰기 작성창으로 이동
	@RequestMapping(value = "/goReviewWrite", method = { RequestMethod.GET, RequestMethod.POST })
	public String goReviewWrite(String honame, Model model) {
		System.out.println(honame);
		model.addAttribute("honame", honame);

		return "review/reviewWrite";
	}

	@RequestMapping(value = "/reviewWrite", method = { RequestMethod.GET, RequestMethod.POST })
	public String reviewWrite(ReviewVO vo, MultipartFile mfile, String honame, String img) {

		String file = saveFile(mfile, img);
		System.out.println(file);
		vo.setImg(file);
		vo.setHoname(honame);
		reviewDao.insertReview(vo);

		return "redirect:goReviewMain";
	}

	
	private static final String UPLOAD_PATH="C:\\Users\\KOSMO-25\\git\\finalpro\\finalpro\\WebContent\\resources\\images";
	private String saveFile(MultipartFile mfile, String img) {
		// 파일 이름 변경
		UUID uuid = UUID.randomUUID();
		String saveName = null;
		System.out.println(mfile.getOriginalFilename() + "하");
		if (mfile.getOriginalFilename().equals("")) {
			saveName = img;
		} else {
			saveName = uuid + "_" + mfile.getOriginalFilename();
			File saveFile = new File(UPLOAD_PATH, saveName); // 저장할 폴더 이름, 저장할 파일 이름

			try {
				mfile.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘

			} catch (IOException e) {
				e.printStackTrace();
				return null;
			}
		}
		System.out.println(saveName);
		// 저장할 File 객체를 생성(껍데기 파일)

		return saveName;
	}

	@RequestMapping(value = "/deleteReview", method = RequestMethod.GET)
	public String deleteReview(int num) {
		reviewService.deleteReview(num);
		return "redirect:goReviewMain";

	}

	@RequestMapping(value = "/goEditReview", method = RequestMethod.POST)
	public String goEditReview(ReviewVO vo, Model model) {
		model.addAttribute("vo", vo);
		return "review/editReview";
	}

	@RequestMapping(value = "/editReview", method = RequestMethod.POST)
	public String editReview(ReviewVO vo, MultipartFile mfile, String img) {

		String file = saveFile(mfile, img);
		vo.setImg(file);
		reviewDao.updateReview(vo);
		return "redirect:goReviewMain";
	}

	@RequestMapping(value = "/insertRepl", method = { RequestMethod.POST, RequestMethod.GET })
	public String insertRepl(ReplVO v, ReviewVO vo, HttpSession session, RedirectAttributes redirect) {
		v.setId((String) session.getAttribute("id"));
		v.setRnum(vo.getNum());
		reviewDao.addRepl(v);
		List<ReplVO> list = reviewDao.getReplList(vo);
		redirect.addAttribute("num", vo.getNum());
		return "redirect:/goReviewDetail";
	}

	@RequestMapping(value = "/deleteRepl", method = { RequestMethod.POST, RequestMethod.GET })
	public String deleteRepl(ReviewVO vo, HttpSession session, RedirectAttributes redirect, int rpnum) {
		reviewDao.deleteRepl(rpnum);
		redirect.addAttribute("num", vo.getNum());
		return "redirect:/goReviewDetail";
	}

	@RequestMapping(value = "/updateRepl", method = { RequestMethod.POST, RequestMethod.GET })
	public String updateRepl(ReviewVO vo, HttpSession session, RedirectAttributes redirect, int rpnum, String rpcon) {
		System.out.println("왔다");
		System.out.println(rpnum);
		ReplVO v = new ReplVO();
		v.setContent(rpcon);
		v.setNum(rpnum);
		reviewDao.updateRepl(v);
		redirect.addAttribute("num", vo.getNum());
		return "redirect:/goReviewDetail";
	}
}
