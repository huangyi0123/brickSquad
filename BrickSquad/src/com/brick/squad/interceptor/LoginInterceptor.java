package com.brick.squad.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.brick.squad.pojo.User;

class LoginInterceptor implements HandlerInterceptor {

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		User user = null;
		user = (User) session.getAttribute("user");
		// 用户登录后放行
		if (user != null) {
			return true;
		}
		// 拦截后跳转
		else {
			request.setAttribute("userNoLogion", "0");
			request.setAttribute("msg", "请先登录");
			request.getRequestDispatcher("/index.jsp").forward(request,
					response);
			return false;
		}

	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}

}
