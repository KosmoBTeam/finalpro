package mvc.model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import mvc.dao.MemberDao;
import mvc.vo.MemberVO;

@RestController
public class MemberRestController {
	@Autowired
	private MemberDao memberDao;
	/*
	 * JSON �����͸� �ٷ�� ���ؼ��� ���Ǵ� ���� �´�(UI�뵵�ν� ����ϸ� �ȵȴ�.) 
	 * AJAX �����ν� ����ϱ� ���� ���� ����ϴ�.
	 */
	
	//���̵� �ߺ������� �޼ҵ�
	//����ǥ������ �̿��Ͽ� Ư�����ϸ� ���̵� �����ϵ��� �Ͽ���(ex: 5~12�ڹ��� ���� ������ �� ���ڸ� ����)
	//��밡�� : 0, �ߺ��� : 1, �߸������� : -1 
	@RequestMapping(value = "/checkId")
	public int checkId(String id) {
		String idPattern = "^[A-Za-z0-9]{5,12}$";
		Matcher matcher = Pattern.compile(idPattern).matcher(id);
		int cnt = memberDao.checkId(id);
		if(!matcher.matches()) {
			cnt=-1;
		}
		return cnt;
	}
	@RequestMapping(value = "/checkPwd")
	public int checkPwd(MemberVO vo,String nowpwd) {
		int cnt = memberDao.checkPwd(vo);
		System.out.println(cnt);
		return cnt;
	}
}
