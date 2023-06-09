package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.user;

import java.io.IOException;

import database.userDAO;

@WebServlet("/userShopping")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hanhDong = request.getParameter("hanhDong");
		if (hanhDong.equals("login")) {
			Login(request, response);
		} else if (hanhDong.equals("logout")) {
			Logout(request, response);
		} else if (hanhDong.equals("signup")) {
			Signup(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private void Login(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.println("Hihihiiiiiiiiii");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			request.setAttribute("email", email);
			request.setAttribute("password", password);
			String error = "";
			userDAO userDao = new userDAO();
			user user = userDao.userlogin(email, password);

			if(user != null) {
				if(user.getEmail().equals("anh@gmail.com") && user.getPassword().equals("09112002")) {
					HttpSession session = request.getSession();
					session.setAttribute("user", user);
					response.sendRedirect("/HaLaStore/Servlet_qlsp");
				}
				else {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				response.sendRedirect("/HaLaStore/Servlet_home");
			}
			}
			else {
				error += "Bạn đã nhập sai email hoặc mật khẩu <br/>";
				request.setAttribute("error", error);
				request.getRequestDispatcher("/view/jsp/login.jsp").forward(request, response);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		}
	}

	private void Logout(HttpServletRequest request, HttpServletResponse response) {
		try {
			HttpSession session = request.getSession();
			// Huy bo session
			session.invalidate();
			response.sendRedirect("/HaLaStore/Servlet_home");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void Signup(HttpServletRequest request, HttpServletResponse response) {
		try {
			String fullname = request.getParameter("fullname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String phoneNumber = request.getParameter("phoneNumber");
			String address = request.getParameter("address");
			request.setAttribute("fullname", fullname);
			request.setAttribute("email", email);
			request.setAttribute("password", password);
			request.setAttribute("phoneNumber", phoneNumber);
			request.setAttribute("address",address);

			String error = "";
			userDAO userDAO = new userDAO();
			if(userDAO.checkUser(email)) {
				error += "Email đã tồn tại, vui lòng chọn tên đăng nhập khác. <br/>";
			}
			request.setAttribute("error", error);
			if(error.length()>0) {
				request.getRequestDispatcher("/view/jsp/signup.jsp").forward(request, response);
			}
			else {
				user user = new user();
				user.setFullname(fullname);
			    user.setEmail(email);
			    user.setPassword(password);
			    user.setPhoneNumber(phoneNumber);
			    user.setAddress(address);
				userDAO.signup(user);
				response.sendRedirect("/HaLaStore/Servlet_home");
				System.out.println("1213");
			}

		} catch (ServletException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}
	}



}
