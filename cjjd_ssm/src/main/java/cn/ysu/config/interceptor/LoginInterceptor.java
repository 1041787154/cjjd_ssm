package cn.ysu.config.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.ysu.main.model.LoginUserModel;

public class LoginInterceptor implements HandlerInterceptor{
	
	/**
	 * 在DispatcherServlet之前执行
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		/* 获取请求的URL */
		String url = request.getRequestURI();
		System.out.println("url is :" + url);
		/* 获取session登录情况 */
		HttpSession session = request.getSession();
		LoginUserModel loginUser = (LoginUserModel)session.getAttribute("login_user");
		if(loginUser != null) {
			return true;
		}
		request.getRequestDispatcher("/login").forward(request, response);
		return false;
	}
	
	/**
	 * 在controller执行之后的DispatcherServlet之后执行
	 */
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object arg2, ModelAndView arg3)
			throws Exception {
	}
	
	/**
	 * 在页面渲染完成返回客户端之前执行
	 */
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception arg3)
			throws Exception {
	}

}
