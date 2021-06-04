package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.LoginBean;
import com.bean.UserBean;
import com.dao.LoginDao;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("loginMessage", "");
		RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("login")!=null) {
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			
			LoginBean loginBean=new LoginBean();
			loginBean.setUsername(username);
			loginBean.setPassword(password);
			
			LoginDao loginDao=new LoginDao();
			
			UserBean user=loginDao.isValidLogin(loginBean);
			
			if(user!=null ) {
				HttpSession httpSession=request.getSession();
				
				httpSession.setAttribute("username", username);
				httpSession.setAttribute("user", user);
								
				request.setAttribute("loginMessage", "");
				response.sendRedirect("index.jsp");
			} else {
				request.setAttribute("loginMessage", "Sai tên đăng nhập hoặc mật khẩu.");
				RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
		} else {
			request.setAttribute("loginMessage", "");
			RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
	}

}
