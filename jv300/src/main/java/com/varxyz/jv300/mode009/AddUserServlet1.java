package com.varxyz.jv300.mode009;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.varxyz.jv300.mod007.User;

@WebServlet("/mode009/add_user.do")
public class AddUserServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService;
	
	public void init() {
		userService = new UserService(new UserDao());
		
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//1. 폼 파라메터 얻기
		String userId = request.getParameter("userId");
		String passwd = request.getParameter("passwd");
		String userName = request.getParameter("userName");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String ssn = request.getParameter("ssn");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		
		//2. 유효성 검증 및 변환
		List<String> errorMsgs = new ArrayList<>();
		if(userId == null || userId.length() == 0) {
			errorMsgs.add("id는 필수입력 정보입니다.");
			
		}
		if(passwd == null || passwd.length() == 0) {
			errorMsgs.add("passwd는 필수입력 정보입니다.");
		}
		
		RequestDispatcher dispatcher = null;
		if(errorMsgs.size() > 0) {
			request.setAttribute("error", errorMsgs);
			dispatcher = request.getRequestDispatcher("/error/error.jsp");
			//add_user.do와 동일 경로에 있는 페이지로 이동
			dispatcher.forward(request, response);
			return;
			
		}
		User user = new User();
		user.setUserId(userId);
		user.setPasswd(passwd);
		user.setUserName(userName);
		user.setSsn(ssn);
		user.setEmail(email1 + "@"+ email2);
		user.setAddr(addr1 + " "+ addr2);
		
		//3. 비즈니스 서비스 호출
		userService.addUser(user);
		request.setAttribute("user", user);
		
		//4.NextPage
		request.setAttribute("userName", userName);
		dispatcher = request.getRequestDispatcher("/sucess/sucess.jsp");
		dispatcher.forward(request, response);
		
	}

}

