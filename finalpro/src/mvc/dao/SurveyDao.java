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

	// surveyclientform : 설문지 폼에 출력 될 데이터 값
	public List<SurveyViewVO> surveyView(int num) {
		return ss.selectList("survey.surveylist", num);
	}
	public List<SurveyViewVO> surveyView2() {
		return ss.selectList("survey.surveylist2");
	}
	// MyBatis에 정의한 update구문을 실행
	// 사용자가 답한 설문조사의 비율을 산출하기 위해 선택한수록 cnt값이 올라가도록 업데이트구문실행
	public void surveyClientUpdatecnt(SurveyViewVO vo) {
		ss.update("survey.updatecnt", vo);

	}

	public String getLoc(SurveyViewVO vo) {
		// TODO Auto-generated method stub
		return ss.selectOne("survey.getLoc", vo);
	}
}