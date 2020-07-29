package mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.vo.HotelReviewVO;
import mvc.vo.HotelTotalVO;
import mvc.vo.LocalActVO;
import mvc.vo.LocalFoodVO;
import mvc.vo.LocalVO;
import mvc.vo.PageVO;
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

   // ��Ű������ �������� ȣ���׸� ���� ����Ʈ�� ��ȯ��
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

   // ����ȣ�� ���� ���̵� �� ���� �� ����.
   public List<HotelReviewVO> localreviewList() {
      return ss.selectList("lvo.reslist5");

   }

   // ���ʸ������������� �ֽ� 4���� ������������ ���� ����Ʈ��
   public List<LocalVO> mainLocalList() {
      return ss.selectList("lvo.mainLocalList");

   }

   public int getLocnum(String loc) {
      // TODO Auto-generated method stub
      return ss.selectOne("lvo.getLocnum", loc);
   }

   // ����ȣ�� ���� UI �ٲ��.
   public List<HotelTotalVO> localtotalList() {
      return ss.selectList("lvo.reslist4");
   }

   public List<LocalFoodVO> localfoodListp(PageVO vo) {
      // TODO Auto-generated method stub
      return ss.selectList("lvo.locfoodp", vo);
   }

   public List<LocalHotelVO> localhotelListp(PageVO vo) {
      // TODO Auto-generated method stub
      return ss.selectList("lvo.lochotelp", vo);
   }

   public List<LocalActVO> localactListp(PageVO vo) {
      // TODO Auto-generated method stub
      return ss.selectList("lvo.locactp", vo);
   }

   public int total(PageVO vo) {
      // TODO Auto-generated method stub
      return ss.selectOne("lvo.total", vo);
   }

   public int total1(PageVO vo) {
      // TODO Auto-generated method stub
      return ss.selectOne("lvo.total1", vo);
   }

   public int total2(PageVO vo) {
      // TODO Auto-generated method stub
      return ss.selectOne("lvo.total2", vo);
   }

   public List<LocalHotelVO> localtotalListwithp(PageVO vo) {
      // TODO Auto-generated method stub
      return ss.selectList("lvo.hotelmain", vo);
   }

   public int locno() {
      return ss.selectOne("lvo.locno");
   }
   public List<LocalHotelVO> lochotelall(PageVO vo) {
      // TODO Auto-generated method stub
      return ss.selectList("lvo.lochotelall", vo);
   }
   
}