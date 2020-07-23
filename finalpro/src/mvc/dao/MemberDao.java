package mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.vo.HotelReserve2VO;

import mvc.vo.MemberVO;

@Repository
public class MemberDao {
@Autowired
private SqlSessionTemplate ss;
//아이디 체크용 반환값은 1이나 0이다. 1이면 중복됨, 0이면 사용가능
//MemberRestController에서 Ajax통신용으로 사용됨
public int checkId(String id) {
    return ss.selectOne("mvo.idchk", id);
}
//회원가입란에서 입력된 정보를 회원테이블에 insert시켜줌.
public void insertMember(MemberVO vo) {
    ss.insert("mvo.add", vo);
}
//로그인아이디와 패스워드를 vo에 담아서 인자값으로 전달하여 해당회원의 패스워드를 제외한 모든 정보가 담긴 vo로 반환함 
public MemberVO loginSession(MemberVO vo) {
    return ss.selectOne("mvo.loginSession", vo);
}
//-------------------------------------
//회원탈퇴시에 회원테이블의 모든 정보를 삭제한다.
//트랜잭션처리를 위해 deleteAllMy~가 붙은 메소드와 같이 MemberService에서 사용된다.
public void delete(String id) {
    ss.delete("mvo.delete",id);
}
public void deleteAllMyReserve(String id) {
	ss.delete("mvo.deleteAllMyReserve", id);
}
public void deleteAllMyReview(String id) {
	ss.delete("mvo.deleteAllMyReview", id);
}
//이렇게 세개가 세트로 트랜잭션 처리된다.
//-------------------------------------

//회원정보 수정용 update구문을 활용하였다.
public void editMember(MemberVO vo) {
    ss.update("mvo.editMember", vo);
}
//마이페이지의 특정 예약내용을 삭제함
public void deleteReserve(HotelReserve2VO vo) {
	ss.delete("mvo.deleteReserve", vo);
}
public void deleteAllMySurvey(String id) {
	ss.delete("mvo.deleteSurvey", id);
	
}
public void deleteAllMyRepl(String id) {
	ss.delete("mvo.deleteRepl", id);
	
}
public void changePwd(MemberVO vo) {
	 ss.update("mvo.changePwd", vo);
}
public int checkPwd(MemberVO vo) {
	return ss.selectOne("mvo.chkPwd", vo);
}
}