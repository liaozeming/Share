package com.lzm.interceptor;


import com.lzm.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Interceptor1 implements HandlerInterceptor{

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String requestURI = request.getRequestURI();
		//如何实现一个字符串是否包含数组中的任一元素
		if(!requestURI.contains("login") ){
			User user = (User) session.getAttribute("user");
			if (null == user) {
//	/没有登陆，转向登陆界面
				request.getRequestDispatcher("/To_login.action").forward(request,response);
				return false;
			}
		}
		return true;
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("方法后 1");
		
	}
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("页面渲染后 1");
		
	}



}
