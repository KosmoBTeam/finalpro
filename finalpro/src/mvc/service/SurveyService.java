package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import mvc.dao.SurveyDao;

@Service
@Transactional
public class SurveyService {
	@Autowired
	private SurveyDao surveyDao;

}
