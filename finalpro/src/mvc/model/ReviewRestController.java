package mvc.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import mvc.dao.ReviewDao;

@RestController
public class ReviewRestController {
	@Autowired
	private ReviewDao reviewDao;
	/*
	 * JSON �����͸� �ٷ�� ���ؼ��� ���Ǵ� ���� �´�(UI�뵵�ν� ����ϸ� �ȵȴ�.) AJAX �����ν� ����ϱ� ���� ���� ����ϴ�.
	 */

}
