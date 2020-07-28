package mvc.vo;

public class HotelDetailVO {
   private int num,locnum;
   private String address,tel,foodplace,title,img;
   private double mapx,mapy;
   
   public String getImg() {
      return img;
   }
   public void setImg(String img) {
      this.img = img;
   }
   
   
   public String getTitle() {
      return title;
   }
   public void setTitle(String title) {
      this.title = title;
   }
   
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
   public String getFoodplace() {
      return foodplace;
   }
   public void setFoodplace(String foodplace) {
      this.foodplace = foodplace;
   }
   public double getMapx() {
      return mapx;
   }
   public void setMapx(double mapx) {
      this.mapx = mapx;
   }
   public double getMapy() {
      return mapy;
   }
   public void setMapy(double mapy) {
      this.mapy = mapy;
   }
}