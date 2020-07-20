package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mvc.dao.MemberDao;

@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDao memberDao;

	//회원탈퇴시에 트랜잭션 처리를 함
	public void deleteMember(String id) {
		// 여기에 예약된 호텔 지우는 dao메소드 설정
		memberDao.deleteAllMyRepl(id);
		memberDao.deleteAllMyReview(id);
		memberDao.deleteAllMyReserve(id);
		memberDao.deleteAllMySurvey(id);
		memberDao.delete(id);
	}
}
