package com.varxyz.jv300.mod010;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/mod010/login")
public class LoginSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserService userService;
	public void init() {
		userService = new UserService(new UserDao());
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("login.jsp").forward(request, response);;
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String passwd = request.getParameter("passwd");
		System.out.println(userId);
		System.out.println(passwd);
		
		
		//요청 파라메타 겁증
		//...
		if(!userService.isValidUser(userId,passwd)) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		
		HttpSession session = request.getSession(true);
		session.setAttribute("userId", userId);
		response.sendRedirect("mypage");
	}

}
