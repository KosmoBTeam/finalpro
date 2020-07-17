package mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.vo.LocalActVO;
import mvc.vo.LocalFoodVO;
import mvc.vo.LocalVO;
import mvc.vo.LocalHotelVO;

@Repository
public class LocalDao {
	@Autowired
	private SqlSessionTemplate ss;

	/*
	 * public List<LocalVO> localList(int locnum){ return
	 * ss.selectList("lvo.loc",locnum); }
	 */
	// ��Ű������ �������� �Ĵ��׸� ���� ����Ʈ�� ��ȯ��
	public List<LocalFoodVO> localfoodList(int locnum) {
		return ss.selectList("lvo.locfood", locnum);
	}

	//	��Ű������ �������� ȣ���׸� ���� ����Ʈ�� ��ȯ��
	public List<LocalHotelVO> localhotelList(int locnum) {
		return ss.selectList("lvo.lochotel", locnum);
	}
	// ��Ű������ �������� ��Ƽ��Ƽ�׸� ���� ����Ʈ�� ��ȯ��
	public List<LocalActVO> localactList(int locnum) {
		return ss.selectList("lvo.locact", locnum);
	}
	// ��Ű������ ������������ ������ ���� ����Ʈ�� ��ȯ��
	public List<LocalVO> localList() {
		return ss.selectList("lvo.locinfo");
	}
	// localDetail�� ������ �̵��ÿ� �ش� ������ �����Ǿ� �ִ� ��ȣ�� ���ڷ� �޾Ƽ� �����̸����� ��ȯ��
	public String localName(int locnum) {
		return ss.selectOne("lvo.locname", locnum);
	}
	// hotelController���� ���Ǳ� ���� DB�� ����Ǿ� �ִ� ��� ȣ���� �׸��� ������
	public List<LocalHotelVO> localhotelAllList() {
		return ss.selectList("lvo.localhotelAllList");

	}
	// ���ʸ������������� �ֽ� 4���� ������������ ���� ����Ʈ��
	public List<LocalVO> mainLocalList() {
		return ss.selectList("lvo.mainLocalList");

	}
}