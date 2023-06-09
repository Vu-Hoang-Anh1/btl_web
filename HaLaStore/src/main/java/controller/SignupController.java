/*
 * package controller;
 * 
 * import jakarta.servlet.RequestDispatcher; import
 * jakarta.servlet.ServletException; import
 * jakarta.servlet.annotation.WebServlet; import
 * jakarta.servlet.http.HttpServlet; import
 * jakarta.servlet.http.HttpServletRequest; import
 * jakarta.servlet.http.HttpServletResponse; import model.user;
 * 
 * import java.io.IOException; import java.io.PrintWriter; import
 * java.sql.SQLException;
 * 
 * import database.UserRepository; import database.userDAO;
 * 
 * @WebServlet("/sign-up") public class SignupController extends HttpServlet {
 * private static final long serialVersionUID = 1L;
 * 
 * public SignupController() { super(); }
 * 
 * protected void doGet(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * System.out.println("Hihihiiiiiiiiii"); String fullname =
 * request.getParameter("fullname"); String email =
 * request.getParameter("email"); String password =
 * request.getParameter("password"); String phoneNumber =
 * request.getParameter("phoneNumber"); String address =
 * request.getParameter("address"); request.setAttribute("fullname", fullname);
 * request.setAttribute("email", email); request.setAttribute("password",
 * password); request.setAttribute("phoneNumber", phoneNumber);
 * request.setAttribute("address",address);
 * 
 * String url = ""; String error = ""; userDAO userDAO = new userDAO();
 * if(userDAO.checkUser(email)) { error +=
 * "Email đã tồn tại, vui lòng chọn tên đăng nhập khác. <br/>"; }
 * request.setAttribute("error", error); if(error.length()>0) { url =
 * "/view/jsp/signup.jsp"; } else { user user = new user();
 * user.setFullname(fullname); user.setEmail(email); user.setPassword(password);
 * user.setPhoneNumber(phoneNumber); user.setAddress(address);
 * userDAO.signup(user); url = "/Servlet_home"; System.out.println("1213"); }
 * RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
 * rd.include(request, response); }
 * 
 * }
 */