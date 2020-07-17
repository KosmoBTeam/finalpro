package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mvc.dao.ReviewDao;

@Service
@Transactional
public class ReviewService {
	@Autowired
	private ReviewDao reviewDao;
	
	public void deleteReview(int num) {
		reviewDao.deleteAllRepl(num);
		reviewDao.deleteReview(num);
	}
}
