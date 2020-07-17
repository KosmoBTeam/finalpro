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
	// 패키지여행 페이지의 식당항목에 대한 리스트를 반환함
	public List<LocalFoodVO> localfoodList(int locnum) {
		return ss.selectList("lvo.locfood", locnum);
	}

	//	패키지여행 페이지의 호텔항목에 대한 리스트를 반환함
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
	// 최초메인페이지에서 최신 4개의 지역페이지를 띄우는 리스트임
	public List<LocalVO> mainLocalList() {
		return ss.selectList("lvo.mainLocalList");

	}
}