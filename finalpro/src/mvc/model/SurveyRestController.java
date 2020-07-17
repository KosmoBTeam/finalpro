package mvc.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import mvc.dao.SurveyDao;

@RestController
public class SurveyRestController {
	@Autowired
	private SurveyDao surveyDao;
	/*
	 * JSON 데이터를 다루기 위해서만 사용되는 것이 맞다(UI용도로써 사용하면 안된다.) AJAX 서버로써 사용하기 가장 좋고 우수하다.
	 */

}
