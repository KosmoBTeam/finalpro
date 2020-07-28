package mvc.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.vo.SurveyViewVO;

@Repository
public class SurveyDao {

	@Autowired
	private SqlSessionTemplate ss;

	// surveyclientform : ������ ���� ��� �� ������ ��
	public List<SurveyViewVO> surveyView(int num) {
		return ss.selectList("survey.surveylist", num);
	}
	public List<SurveyViewVO> surveyView2() {
		return ss.selectList("survey.surveylist2");
	}
	// MyBatis�� ������ update������ ����
	// ����ڰ� ���� ���������� ������ �����ϱ� ���� �����Ѽ��� cnt���� �ö󰡵��� ������Ʈ��������
	public void surveyClientUpdatecnt(SurveyViewVO vo) {
		ss.update("survey.updatecnt", vo);

	}

	public String getLoc(SurveyViewVO vo) {
		// TODO Auto-generated method stub
		return ss.selectOne("survey.getLoc", vo);
	}
}