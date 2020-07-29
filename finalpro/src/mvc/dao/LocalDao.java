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
   // 패키지여행 페이지의 식당항목에 대한 리스트를 반환함
   public List<LocalFoodVO> localfoodList(int locnum) {
      return ss.selectList("lvo.locfood", locnum);
   }

   // 패키지여행 페이지의 호텔항목에 대한 리스트를 반환함
   public List<LocalHotelVO> localhotelList(int locnum) {
      return ss.selectList("lvo.lochotel", locnum);
   }

   // 패키지여행 페이지의 액티비티항목에 대한 리스트를 반환함
   public List<LocalActVO> localactList(int locnum) {
      return ss.selectList("lvo.locact", locnum);
   }

   // 패키지여행 메인페이지의 지역에 관한 리스트를 반환함
   public List<LocalVO> localList() {
      return ss.selectList("lvo.locinfo");
   }

   // localDetail로 페이지 이동시에 해당 지역에 지정되어 있는 번호를 인자로 받아서 지역이름으로 반환함
   public String localName(int locnum) {
      return ss.selectOne("lvo.locname", locnum);
   }

   // hotelController에서 사용되기 위해 DB에 저장되어 있는 모든 호텔의 항목을 꺼내옴
   public List<LocalHotelVO> localhotelAllList() {
      return ss.selectList("lvo.localhotelAllList");
   }

   // 국내호텔 메인 사이드 바 리뷰 순 정렬.
   public List<HotelReviewVO> localreviewList() {
      return ss.selectList("lvo.reslist5");

   }

   // 최초메인페이지에서 최신 4개의 지역페이지를 띄우는 리스트임
   public List<LocalVO> mainLocalList() {
      return ss.selectList("lvo.mainLocalList");

   }

   public int getLocnum(String loc) {
      // TODO Auto-generated method stub
      return ss.selectOne("lvo.getLocnum", loc);
   }

   // 국내호텔 메인 UI 바뀐것.
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