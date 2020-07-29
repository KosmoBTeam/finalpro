package mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.vo.PackageVO;

@Repository
public class PackageDao {
   
   @Autowired
   private SqlSessionTemplate ss;
   
   public PackageVO inHotel() {
      return ss.selectOne("pvo.inhotel");
   }
   
   public PackageVO inAct() {
      return ss.selectOne("pvo.inact");
   }
   
   public PackageVO inFood() {
      return ss.selectOne("pvo.infood");
   }
   
   public PackageVO daeHotel() {
      return ss.selectOne("pvo.daehotel");
   }
   
   public PackageVO daeAct() {
      return ss.selectOne("pvo.daeact");
   }
   
   public PackageVO daeFood() {
      return ss.selectOne("pvo.daefood");
   }
   
   public PackageVO seoHotel() {
      return ss.selectOne("pvo.seohotel");
   }
   
   public PackageVO seoAct() {
      return ss.selectOne("pvo.seoact");
   }
   
   public PackageVO seoFood() {
      return ss.selectOne("pvo.seofood");
   }
}