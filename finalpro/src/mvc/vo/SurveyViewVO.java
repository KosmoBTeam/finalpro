package mvc.vo;
//설문조사 내용을 담은 VO
//관련 테이블은 survey_trip,surveycontent_trip
public class SurveyViewVO {
   private int num, code;
   private String sub, sdate;
   private int subcode, surveycnt;
   private String surveytitle;
   private String subtype;
   private String subtype1;
   private String subtype2;
   private String subtype3;
   private String subtype4;
   private String subtype5;
   private String subtype6;
   private String subtype7;
   private String subtype8;

   
   public int getNum() {
      return num;
   }
   public void setNum(int num) {
      this.num = num;
   }
   public int getCode() {
      return code;
   }
   public void setCode(int code) {
      this.code = code;
   }
   public String getSub() {
      return sub;
   }
   public void setSub(String sub) {
      this.sub = sub;
   }
   public String getSdate() {
      return sdate;
   }
   public void setSdate(String sdate) {
      this.sdate = sdate;
   }
   public int getSubcode() {
      return subcode;
   }
   public void setSubcode(int subcode) {
      this.subcode = subcode;
   }
   public int getSurveycnt() {
      return surveycnt;
   }
   public void setSurveycnt(int surveycnt) {
      this.surveycnt = surveycnt;
   }
   
   public String getSurveytitle() {
      return surveytitle;
   }
   public void setSurveytitle(String surveytitle) {
      this.surveytitle = surveytitle;
   }
public String getSubtype() {
	return subtype;
}
public void setSubtype(String subtype) {
	this.subtype = subtype;
}
public String getSubtype1() {
	return subtype1;
}
public void setSubtype1(String subtype1) {
	this.subtype1 = subtype1;
}
public String getSubtype2() {
	return subtype2;
}
public void setSubtype2(String subtype2) {
	this.subtype2 = subtype2;
}
public String getSubtype3() {
	return subtype3;
}
public void setSubtype3(String subtype3) {
	this.subtype3 = subtype3;
}
public String getSubtype4() {
	return subtype4;
}
public void setSubtype4(String subtype4) {
	this.subtype4 = subtype4;
}
public String getSubtype5() {
	return subtype5;
}
public void setSubtype5(String subtype5) {
	this.subtype5 = subtype5;
}
public String getSubtype6() {
	return subtype6;
}
public void setSubtype6(String subtype6) {
	this.subtype6 = subtype6;
}
public String getSubtype7() {
	return subtype7;
}
public void setSubtype7(String subtype7) {
	this.subtype7 = subtype7;
}
public String getSubtype8() {
	return subtype8;
}
public void setSubtype8(String subtype8) {
	this.subtype8 = subtype8;
}
   
   
}