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
		// TODO �Զ����ɵķ������
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO �Զ����ɵķ������
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean flag = false; 
		/** ��������ServletPath */
		String servletPath = request.getServletPath();
		/**  �ж������Ƿ���Ҫ���� */
        for (String s : IGNORE_URI) {
            if (!servletPath.contains(s)) {
                flag = true;
                break;
            }
        }
        /** �������� */
        if (!flag){
        	/** 1.��ȡsession�е��û�  */
        	User user = (User) request.getSession().getAttribute(SpringMvcConstants.USER_SESSION);
        	/** 2.�ж��û��Ƿ��Ѿ���¼ */
        	if(user == null){
        		 /** ����û�û�е�¼����ת����¼ҳ�� */
        		request.setAttribute("message", "���ȵ�¼�ٷ�����վ!");
        		request.getRequestDispatcher(SpringMvcConstants.LOGIN).forward(request, response);
        		return flag;
        	}else{
        		 flag = true;
        	}
        }
        return flag;
	}

}
