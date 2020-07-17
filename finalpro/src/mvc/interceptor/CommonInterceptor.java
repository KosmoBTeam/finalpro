package mvc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Signature;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
@Component
public class CommonInterceptor extends Interceptor {
	  protected Log log = LogFactory.getLog(CommonInterceptor.class);
	  
	    @Override
	    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
	            throws Exception {
	        if (log.isDebugEnabled()) {
	            log.debug("===================       START       ===================");
	            log.debug(" Request URI \t:  " + request.getRequestURI());
	        }
	        // 부모클래스인 Interceiptor의 preHandle을 호출한다.
	        return super.preHandle(request, response, handler);
	    }
	 
	    @Override
	    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
	            ModelAndView modelAndView) throws Exception {
	        if (log.isDebugEnabled()) {
	            log.debug("===================        END        ===================\n");
	        }
	    }

}
