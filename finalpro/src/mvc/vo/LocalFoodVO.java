package mvc.vo;

//������Ű�� ������ �Ĵ� �׸� ���� ������ ����ִ� VO
//���̺� �̸��� food
public class LocalFoodVO {
   private int num, locnum;
   private String title, img, address, tel, detail, mapx, mapy;

   public int getNum() {
      return num;
   }

   public void setNum(int num) {
      this.num = num;
   }

   public String getMapx() {
      return mapx;
   }

   public void setMapx(String mapx) {
      this.mapx = mapx;
   }

   public String getMapy() {
      return mapy;
   }

   public void setMapy(String mapy) {
      this.mapy = mapy;
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