package mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.vo.HotelRadioVO;
import mvc.vo.HotelReserve2VO;
import mvc.vo.PageVO;


@Repository
public class HotelDao {
	@Autowired
	private SqlSessionTemplate ss;

	public void addHotel(HotelReserve2VO vo) {
		 // ȣ�ڿ��� ���� insert��
		ss.insert("hvo.addhotel", vo);
	}

	public List<HotelReserve2VO> resList(HotelReserve2VO vo) {
		// ȣ�� �������������� ��� ȣ���� ������ ��ȯ�ϴ� ����Ʈ��
		return ss.selectList("hvo.reslist", vo);
	}

	public List<HotelRadioVO> hotelRadioList(int num) {
		//�ش� ȣ���� �������� ������ ��� ���̺��� ������ ������ư�� �����Ű�� ���� ����Ʈ
		return ss.selectList("hvo.radioList", num);
	}

	public List<HotelReserve2VO> resList2(HotelReserve2VO vo) {
		// ���������� �ش� ������ ��� ���� ǥ�ÿ� ����Ʈ��
		return ss.selectList("hvo.reslist2", vo);
	}

	public List<HotelReserve2VO> resList3(HotelReserve2VO vo) {
		// ȣ�� ���� ���� ������ ǥ�ÿ� ����Ʈ��
		return ss.selectList("hvo.reslist3", vo);
	}

	public int total(PageVO vo) {
		// TODO Auto-generated method stub
		return ss.selectOne("hvo.total", vo);
	}
}
