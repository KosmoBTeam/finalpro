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
	 * JSON 데이터를 다루기 위해서만 사용되는 것이 맞다(UI용도로써 사용하면 안된다.) 
	 * AJAX 서버로써 사용하기 가장 좋고 우수하다.
	 */
	
	//아이디 중복방지용 메소드
	//정규표현식을 이용하여 특정패턴만 아이디가 가능하도록 하였다(ex: 5~12자범위 내의 영문자 및 숫자만 가능)
	//사용가능 : 0, 중복됨 : 1, 잘못된형식 : -1 
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
