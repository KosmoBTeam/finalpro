package mvc.dao;

import java.util.LinkedList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.vo.PageVO;
import mvc.vo.ReplVO;
import mvc.vo.ReviewVO;

@Repository
public class ReviewDao {
	@Autowired
	private SqlSessionTemplate ss;

	// 사용자가 입력한 후기가 insert된다.
	public void insertReview(ReviewVO vo) {
		ss.insert("rvo.reviewinsert", vo);
	}
	
	//----------------------------------------
	// 현재 페이지의 값과 검색값(SearchValue)과 검색형태(SearchType)를
	// PageVO에 담아 vo를 인자값으로 받아
	// 후기게시판에 띄울 모든 후기리스트가 반환된다.
	// PageVO를 사용하여 페이징 처리와 검색기능을 구현하였다.
	public List<ReviewVO> reviewList(PageVO vo) {
		return ss.selectList("rvo.reviewList", vo);
	}
	// reviewList를 띄우기 위하여 현재 review_table에 존재하는
	// 모든 행의 수를 반환받아 모든 항목의 수를 반환한다.
	public int total(PageVO vo) {
		return ss.selectOne("rvo.total", vo);
	}
	//----------------------------------------
	
	//조회수를 1 올려주는 업데이트 구문을 실행한다.
	public void pluscnt(int num) {
		ss.update("rvo.pluscnt", num);

	}
	//해당 번호의 후기데이터를 삭제한다.
	public void deleteReview(int num) {
		ss.delete("rvo.deleteReview", num);
	}
	//후기의 내용을 수정하여 업데이트함
	public void updateReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		ss.update("rvo.updateReview", vo);
	}
	//최초 메인페이지의 최신 5개의 후기리스트를 반환함
	public List<ReviewVO> mainReviewList() {
		// TODO Auto-generated method stub
		return ss.selectList("rvo.reviewMainList");
	}

	public List<ReplVO> getReplList(ReviewVO vo) {
		// TODO Auto-generated method stub
		return ss.selectList("rvo.replList",vo);
	}

	public void addRepl(ReplVO v) {
		ss.insert("rvo.addreple", v);
		
	}

	public ReviewVO getReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return ss.selectOne("rvo.getreview",vo);
	}

	public void deleteRepl(int rpnum) {
		ss.delete("rvo.deleteRepl", rpnum);
		
	}

	public void updateRepl(ReplVO v) {
		ss.update("rvo.updateRepl", v);
	}

	public void deleteAllRepl(int num) {
		ss.delete("rvo.replAlldel", num);
		
	}

	public List<ReviewVO> review5List() {
		// TODO Auto-generated method stub
		return ss.selectList("rvo.review5List");
	}

}
