package springmvc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import springmvc.entity.User;
import springmvc.util.SpringMvcConstants;

public class AuthorizedInterceptor implements HandlerInterceptor {

	private static final String[] IGNORE_URI = {"/logSuccess"};
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO 自动生成的方法存根
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO 自动生成的方法存根
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean flag = false; 
		/** 获得请求的ServletPath */
		String servletPath = request.getServletPath();
		/**  判断请求是否需要拦截 */
        for (String s : IGNORE_URI) {
            if (!servletPath.contains(s)) {
                flag = true;
                break;
            }
        }
        /** 拦截请求 */
        if (!flag){
        	/** 1.获取session中的用户  */
        	User user = (User) request.getSession().getAttribute(SpringMvcConstants.USER_SESSION);
        	/** 2.判断用户是否已经登录 */
        	if(user == null){
        		 /** 如果用户没有登录，跳转到登录页面 */
        		request.setAttribute("message", "请先登录再访问网站!");
        		request.getRequestDispatcher(SpringMvcConstants.LOGIN).forward(request, response);
        		return flag;
        	}else{
        		 flag = true;
        	}
        }
        return flag;
	}

}
