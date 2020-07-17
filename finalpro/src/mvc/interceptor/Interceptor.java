package mvc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter{
	 //모든 페이지가 이 클래스를 거쳐간다.
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpSession session = request.getSession();       
        //세션에서 로그인된 아이디값을 받는다.
        String userid = (String) session.getAttribute("id");
        if(userid == null){
        	//아이디 값이 null이면 bean설정파일에 등록된 페이지로 이동을 시도하면 로그인 화면이 뜨도록 설정한다.
        	//이동할때 원래 가고자했던 url의 문자열값을 파라미터로 전송한다.
            response.sendRedirect("goLogin?next="+request.getRequestURI());
            return false;
        }
        
        //id값이 존재할시 정상적으로 페이지로 이동한다.
        return true;
    }
}

