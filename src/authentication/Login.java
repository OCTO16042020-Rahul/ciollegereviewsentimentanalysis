package authentication;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Database.DatabaseConnection;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String query = "select * from user where username = '" + username + "'";
		ResultSet rs = (ResultSet) db.getResultSet(query);
		try {
			if (rs.next()) {
				String uid = rs.getString("id");
				String fname = rs.getString("fullname");
				String email = rs.getString("email");
				String uname = rs.getString("username");
				String passwd = rs.getString("password");
				
				if(passwd.equals(password)){
					if(uname.equals("admin")){
						session.setAttribute("uid", uid);
						session.setAttribute("fname", fname);
						session.setAttribute("uname", uname);
						response.sendRedirect("admin/college.jsp");
					}else{
						session.setAttribute("uid", uid);
						session.setAttribute("fname", fname);
						session.setAttribute("uname", uname);
						session.setAttribute("email", email);
						response.sendRedirect("college/Criteria.jsp");
					}
				}
				else {
					out.println("<script type=\"text/javascript\">");
					out.println("alert('wrong username or password')");
					out.println("location=\"index.jsp\"");
					out.println("</script>");
				}
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('No User Found of this username')");
				out.println("location=\"index.jsp\"");
				out.println("</script>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
