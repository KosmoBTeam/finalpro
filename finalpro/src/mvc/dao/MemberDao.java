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
//���̵� üũ�� ��ȯ���� 1�̳� 0�̴�. 1�̸� �ߺ���, 0�̸� ��밡��
//MemberRestController���� Ajax��ſ����� ����
public int checkId(String id) {
    return ss.selectOne("mvo.idchk", id);
}
//ȸ�����Զ����� �Էµ� ������ ȸ�����̺� insert������.
public void insertMember(MemberVO vo) {
    ss.insert("mvo.add", vo);
}
//�α��ξ��̵�� �н����带 vo�� ��Ƽ� ���ڰ����� �����Ͽ� �ش�ȸ���� �н����带 ������ ��� ������ ��� vo�� ��ȯ�� 
public MemberVO loginSession(MemberVO vo) {
    return ss.selectOne("mvo.loginSession", vo);
}
//-------------------------------------
//ȸ��Ż��ÿ� ȸ�����̺��� ��� ������ �����Ѵ�.
//Ʈ�����ó���� ���� deleteAllMy~�� ���� �޼ҵ�� ���� MemberService���� ���ȴ�.
public void delete(String id) {
    ss.delete("mvo.delete",id);
}
public void deleteAllMyReserve(String id) {
	ss.delete("mvo.deleteAllMyReserve", id);
}
public void deleteAllMyReview(String id) {
	ss.delete("mvo.deleteAllMyReview", id);
}
//�̷��� ������ ��Ʈ�� Ʈ����� ó���ȴ�.
//-------------------------------------

//ȸ������ ������ update������ Ȱ���Ͽ���.
public void editMember(MemberVO vo) {
    ss.update("mvo.editMember", vo);
}
//������������ Ư�� ���೻���� ������
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