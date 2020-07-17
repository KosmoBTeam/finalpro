package mvc.vo;
//국내패키지 여행의 메인페이지의 지역항목에 관한 내용이 담겨있는 VO
//테이블 이름은 local
public class LocalVO {
private int locnum;
private String loc,img;
public int getLocnum() {
return locnum;
}
public void setLocnum(int locnum) {
this.locnum = locnum;
}
public String getLoc() {
return loc;
}
public void setLoc(String loc) {
this.loc = loc;
}
public String getImg() {
return img;
}
public void setImg(String img) {
this.img = img;
}

}