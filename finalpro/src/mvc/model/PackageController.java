package mvc.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mvc.dao.PackageDao;
import mvc.vo.PackageVO;

@Controller
public class PackageController {
      
   @Autowired
   private PackageDao packageDao;
   
      @RequestMapping(value = "gopackage", method = {RequestMethod.GET, RequestMethod.POST})
      public ModelAndView defaultpackage() {
         ModelAndView mov = new ModelAndView();
         PackageVO inhotelvo = packageDao.inHotel();
         PackageVO inactvo = packageDao.inAct();
         PackageVO infoodvo = packageDao.inFood();

         //인천호텔좌표
         	double mapx = inhotelvo.getMapx();
            double mapy = inhotelvo.getMapy();
            
            double ihx = Math.round(mapx*1000000)/1000000.0;
            double ihy = Math.round(mapy*1000000)/1000000.0;
            
            inhotelvo.setMapx(ihx);
            inhotelvo.setMapy(ihy);
            
         
         //인천 액트
          double mapx1 = inactvo.getMapx();
            double mapy1 = inactvo.getMapy();
            
            double iax = Math.round(mapx1*1000000)/1000000.0;
            double iay = Math.round(mapy1*1000000)/1000000.0;
            
            inactvo.setMapx(iax);
            inactvo.setMapy(iay);
         
         
         
         double mapx31 = infoodvo.getMapx();
            double mapy31 = infoodvo.getMapy();
            
            double ifx = Math.round(mapx31*1000000)/1000000.0;
            double ify = Math.round(mapy31*1000000)/1000000.0;
            
            infoodvo.setMapx(ifx);
            infoodvo.setMapy(ify);
            
         
         PackageVO daehotelvo = packageDao.daeHotel();
         PackageVO daeactvo = packageDao.daeAct();
         PackageVO daefoodvo = packageDao.daeFood();
         //대전호텔
         double mapx2 = daehotelvo.getMapx();
            double mapy2 = daehotelvo.getMapy();
            
            double dhx = Math.round(mapx2*1000000)/1000000.0;
            double dhy = Math.round(mapy2*1000000)/1000000.0;
            
            daehotelvo.setMapx(dhx);
            daehotelvo.setMapy(dhy);
            
         
         //대전 액트
          double mapx15 = daeactvo.getMapx();
            double mapy15 = daeactvo.getMapy();
            
            double dax = Math.round(mapx15*1000000)/1000000.0;
            double day = Math.round(mapy15*1000000)/1000000.0;
            
            daeactvo.setMapx(dax);
            daeactvo.setMapy(day);
         
         
         //daefood
         double mapx3124 = daefoodvo.getMapx();
            double mapy3124 = daefoodvo.getMapy();
            
            double dfx = Math.round(mapx3124*1000000)/1000000.0;
            double dfy = Math.round(mapy3124*1000000)/1000000.0;
            
            daefoodvo.setMapx(dfx);
            daefoodvo.setMapy(dfy);
         
         
         
         PackageVO seohotelvo = packageDao.seoHotel();
         PackageVO seoactvo = packageDao.seoAct();
         PackageVO seofoodvo = packageDao.seoFood();
         
         //seo호텔
         double mapx23 = seohotelvo.getMapx();
            double mapy23 = seohotelvo.getMapy();
            
            double shx = Math.round(mapx23*1000000)/1000000.0;
            double shy = Math.round(mapy23*1000000)/1000000.0;
            
            seohotelvo.setMapx(shx);
            seohotelvo.setMapy(shy);
            
         
         //seo액트
          double mapx152 = seoactvo.getMapx();
            double mapy152 = seoactvo.getMapy();
            
            double sax = Math.round(mapx152*1000000)/1000000.0;
            double say = Math.round(mapy152*1000000)/1000000.0;
            
            seoactvo.setMapx(sax);
            seoactvo.setMapy(say);
         
         
         //seofood
         double mapx31241 = seofoodvo.getMapx();
            double mapy31241 = seofoodvo.getMapy();
            
            double sfx = Math.round(mapx31241*1000000)/1000000.0;
            double sfy = Math.round(mapy31241*1000000)/1000000.0;
            
            seofoodvo.setMapx(sfx);
            seofoodvo.setMapy(sfy);
         
         mov.addObject("inhotelvo",inhotelvo);
         mov.addObject("inactvo",inactvo);
         mov.addObject("infoodvo",infoodvo);
         mov.addObject("daehotelvo",daehotelvo);
         mov.addObject("daeactvo",daeactvo);
         mov.addObject("daefoodvo",daefoodvo);
         mov.addObject("seohotelvo",seohotelvo);
         mov.addObject("seoactvo",seoactvo);
         mov.addObject("seofoodvo",seofoodvo);
         
         
         
         mov.setViewName("final/packageProduct");
         return mov;
      }
      
      
}