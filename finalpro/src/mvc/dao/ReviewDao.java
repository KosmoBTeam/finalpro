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

	// ����ڰ� �Է��� �ıⰡ insert�ȴ�.
	public void insertReview(ReviewVO vo) {
		ss.insert("rvo.reviewinsert", vo);
	}
	
	//----------------------------------------
	// ���� �������� ���� �˻���(SearchValue)�� �˻�����(SearchType)��
	// PageVO�� ��� vo�� ���ڰ����� �޾�
	// �ı�Խ��ǿ� ��� ��� �ı⸮��Ʈ�� ��ȯ�ȴ�.
	// PageVO�� ����Ͽ� ����¡ ó���� �˻������ �����Ͽ���.
	public List<ReviewVO> reviewList(PageVO vo) {
		return ss.selectList("rvo.reviewList", vo);
	}
	// reviewList�� ���� ���Ͽ� ���� review_table�� �����ϴ�
	// ��� ���� ���� ��ȯ�޾� ��� �׸��� ���� ��ȯ�Ѵ�.
	public int total(PageVO vo) {
		return ss.selectOne("rvo.total", vo);
	}
	//----------------------------------------
	
	//��ȸ���� 1 �÷��ִ� ������Ʈ ������ �����Ѵ�.
	public void pluscnt(int num) {
		ss.update("rvo.pluscnt", num);

	}
	//�ش� ��ȣ�� �ıⵥ���͸� �����Ѵ�.
	public void deleteReview(int num) {
		ss.delete("rvo.deleteReview", num);
	}
	//�ı��� ������ �����Ͽ� ������Ʈ��
	public void updateReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		ss.update("rvo.updateReview", vo);
	}
	//���� ������������ �ֽ� 5���� �ı⸮��Ʈ�� ��ȯ��
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
