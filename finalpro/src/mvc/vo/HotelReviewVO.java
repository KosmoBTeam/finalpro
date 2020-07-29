package mvc.vo;

public class HotelReviewVO {
   private int cnt, locnum, num;
   private String honame, title, img;

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

   public int getCnt() {
      return cnt;
   }

   public void setCnt(int cnt) {
      this.cnt = cnt;
   }

   public String getHoname() {
      return honame;
   }

   public void setHoname(String honame) {
      this.honame = honame;
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

}