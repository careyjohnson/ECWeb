package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.UserBean;
import com.dao.RegisterDao;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		
		UserBean user=new UserBean();
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		
		RegisterDao registerDao=new RegisterDao();
		UserBean createdUser=registerDao.createNewUser(user);
		if(createdUser==null) {
			request.setAttribute("registerMessage", "Tên đăng nhập đã được sử dụng.");
			RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}else {
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("username", username);
			httpSession.setAttribute("user", user);
			
			request.setAttribute("loginMessage", "");
			response.sendRedirect("index.jsp");
		}
	}

}
