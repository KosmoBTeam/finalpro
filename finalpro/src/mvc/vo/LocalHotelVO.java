package mvc.vo;

//국내패키지 여행의 호텔 항목에 관한 내용이 담겨있는 VO
//테이블 이름은 hotel
//hotel_reserve와 연결되어 있다.
public class LocalHotelVO {

	private int num, locnum, pay;
	private String title, img, address, tel, detail, honame;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getLocnum() {
		return locnum;
	}

	public void setLocnum(int locnum) {
		this.locnum = locnum;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getHoname() {
		return honame;
	}

	public void setHoname(String honame) {
		this.honame = honame;
	}
}