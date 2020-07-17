package mvc.vo;
//국내패키지 여행의 식당 항목에 관한 내용이 담겨있는 VO
//테이블 이름은 food
public class LocalFoodVO {
private int num,locnum;
private String title, img, address, tel, detail;
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

}