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

	//ȸ��Ż��ÿ� Ʈ����� ó���� ��
	public void deleteMember(String id) {
		// ���⿡ ����� ȣ�� ����� dao�޼ҵ� ����
		memberDao.deleteAllMyRepl(id);
		memberDao.deleteAllMyReview(id);
		memberDao.deleteAllMyReserve(id);
		memberDao.deleteAllMySurvey(id);
		memberDao.delete(id);
	}
}
