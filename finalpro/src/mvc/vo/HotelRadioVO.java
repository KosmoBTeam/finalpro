package mvc.vo;

//호텔번호에 따른 호텔 방종류와 가격이 담겨있는 VO.
//테이블 이름은 hotelRadio
public class HotelRadioVO {
	private int num, pay;
	String roomtype;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public String getRoomtype() {
		return roomtype;
	}

	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
}
