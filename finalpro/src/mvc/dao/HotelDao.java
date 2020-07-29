package mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.vo.HotelDetailVO;
import mvc.vo.HotelRadioVO;
import mvc.vo.HotelReserve2VO;
import mvc.vo.HotelRoomImgVO;
import mvc.vo.PageVO;


@Repository
public class HotelDao {
   @Autowired
   private SqlSessionTemplate ss;

   public void addHotel(HotelReserve2VO vo) {
       // ȣ�ڿ��� ���� insert��
      ss.insert("hvo.addhotel", vo);
   }

   public HotelReserve2VO resList(int hrnum) {
      // ȣ�� �������������� ��� ȣ���� ������ ��ȯ�ϴ� ����Ʈ��
      return ss.selectOne("hvo.reslist", hrnum);
   }

   public List<HotelRadioVO> hotelRadioList(int num) {
      //�ش� ȣ���� �������� ������ ��� ���̺��� ������ ������ư�� �����Ű�� ���� ����Ʈ
      return ss.selectList("hvo.radioList", num);
   }

   public List<HotelReserve2VO> resList2(HotelReserve2VO vo) {
      // ���������� �ش� ������ ��� ���� ǥ�ÿ� ����Ʈ��
      return ss.selectList("hvo.reslist2", vo);
   }

   public HotelReserve2VO resList3() {
      // ȣ�� ���� ���� ������ ǥ�ÿ� ����Ʈ��
      return ss.selectOne("hvo.reslist3");
   }
   
   public HotelDetailVO dlist(int num)  {
      // ȣ�� ���������� ����Ʈ
      return ss.selectOne("hvo.hdetail", num);
   }
   
   public List<HotelRoomImgVO> imgList(int num){
      return ss.selectList("hvo.hrimg",num);
   }
   //ȣ�� ����¡ ó��
   public int total(PageVO vo) {
	  return ss.selectOne("hvo.total", vo);
	   }

}