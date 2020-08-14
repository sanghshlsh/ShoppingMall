package kr.co.inter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInter extends HandlerInterceptorAdapter {

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String memberId = (String) session.getAttribute("memberId");
		int memberGrade = -1;
		if(session.getAttribute("memberGrade") != null)
			memberGrade = (int) session.getAttribute("memberGrade");
		String uri = request.getRequestURI();
		String queryString = request.getQueryString();
		if(queryString == null) {
			queryString = "";
		} else {
			queryString = "?" + queryString;
		}
		
		if(request.getMethod().equals("GET")) {
			String path = uri + queryString;
			session.setAttribute("path", path);				
		}

		if (memberId == null || memberGrade < 8) {
			response.sendRedirect("/member/login.do");
			return false;
		}
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}

	
}
