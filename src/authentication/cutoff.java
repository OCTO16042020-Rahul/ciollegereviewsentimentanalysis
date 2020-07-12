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

import Database.DatabaseConnection;

/**
 * Servlet implementation class cutoff
 */
@WebServlet("/cutoff")
public class cutoff extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public cutoff() {
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
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String cid = request.getParameter("cid");
		String cutoff = request.getParameter("cutoffmarks");

		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		
		if(200>(Integer.parseInt(cutoff))){
		String query = "Update college set cutoff=" + cutoff + " where id=" + cid + "";
		int i = db.getUpdate(query);

		try {
			if (i == 1) {
				response.sendRedirect("admin/college.jsp");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Fail to update')");
				out.println("location=\"index.jsp\"");
				out.println("</script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}else{
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Please Enter Valid Cutoff marks')");
		out.println("location=\"admin/college.jsp\"");
		out.println("</script>");
	}
	}
}
