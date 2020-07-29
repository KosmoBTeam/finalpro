package mvc.vo;

public class HotelRoomImgVO {
   private int hnum , pay;
   private String img,roomtype;
   
   public int getPay() {
      return pay;
   }

   public void setPay(int pay) {
      this.pay = pay;
   }

   
   
   public int getHnum() {
      return hnum;
   }

   public void setHnum(int hnum) {
      this.hnum = hnum;
   }

   

   public String getImg() {
      return img;
   }

   public void setImg(String img) {
      this.img = img;
   }

   public String getRoomtype() {
      return roomtype;
   }

   public void setRoomtype(String roomtype) {
      this.roomtype = roomtype;
   }
}