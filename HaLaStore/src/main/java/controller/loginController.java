/*
 * package controller;
 * 
 * import jakarta.servlet.RequestDispatcher; import
 * jakarta.servlet.ServletException; import
 * jakarta.servlet.annotation.WebServlet; import
 * jakarta.servlet.http.HttpServlet; import
 * jakarta.servlet.http.HttpServletRequest; import
 * jakarta.servlet.http.HttpServletResponse; import
 * jakarta.servlet.http.HttpSession; import model.user;
 * 
 * import java.io.IOException; import java.util.List;
 * 
 * import database.userDAO;
 * 
 * @WebServlet("/login") public class loginController extends HttpServlet {
 * private static final long serialVersionUID = 1L;
 * 
 * 
 * public loginController() { super(); } protected void doGet(HttpServletRequest
 * request, HttpServletResponse response) throws ServletException, IOException {
 * // TODO Auto-generated method stub
 * response.getWriter().append("Served at: ").append(request.getContextPath());
 * }
 * 
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * System.out.println("Hihihiiiiiiiiii"); String email =
 * request.getParameter("email"); String password =
 * request.getParameter("password"); request.setAttribute("email", email);
 * request.setAttribute("password", password); String url = ""; String error =
 * ""; userDAO userDao = new userDAO(); user user = userDao.userlogin(email,
 * password);
 * 
 * if(user != null) { HttpSession session = request.getSession();
 * session.setAttribute("user", user);
 * response.sendRedirect("/HaLaStore/Servlet_home"); } else { error +=
 * "Bạn đã nhập sai email hoặc mật khẩu <br/>"; request.setAttribute("error",
 * error); request.getRequestDispatcher("/view/jsp/login.jsp").forward(request,
 * response); }
 * 
 * }
 * 
 * }
 */