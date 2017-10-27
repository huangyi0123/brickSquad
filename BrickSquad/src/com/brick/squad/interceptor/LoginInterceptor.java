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
	
		String urlString = request.getRequestURI();// 取得当前请求
		// 放行
		if (urlString.indexOf("toIndex") > 0
				|| urlString.indexOf("toRegister") > 0
				|| urlString.indexOf("toUpdatePassword") > 0
				|| urlString.indexOf("toRegister") > 0
				|| urlString.indexOf("logout") > 0
				|| urlString.indexOf("toLogin") > 0
				|| urlString.indexOf("login") > 0
				|| urlString.indexOf("toUserAccountAuthentication") > 0) {
			return true;
		}
		// 每有一次请求，判断用户是否登录
		HttpSession session = request.getSession();
		User user = null;
		user = (User) session.getAttribute("user");

		if (user != null) {
			return true;
		}

		/*
		 * request.setAttribute("msg", "请先登录"); request.getRequestDispatcher(
		 * "/ui/frontEnd_manage/index.jsp").forward( request, response);
		 */
		//拦截后跳转
		else {
			response.sendRedirect(request.getContextPath()
					+ "/frontEnd_manage/index.jsp");
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
