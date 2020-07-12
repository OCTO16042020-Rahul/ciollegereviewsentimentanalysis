package authentication;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DatabaseConnection;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String fullname = request.getParameter("fullname");
		String Email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");  

        DatabaseConnection db = new DatabaseConnection();
   		db.dbconnection();

        String queryText = "insert into user values('0','"+fullname+"','"+Email+"', '"+ username+"','"+ password+"')";
        int i = db.getUpdate(queryText);
        if(i==0)
        {
        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('Please provide all values')");
        	out.println("location=\"index.jsp\"");
        	out.println("</script>");
        }
        else
        {
        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('Register Successfully,Please Proceed for Login')");
        	out.println("location=\"index.jsp\"");
        	out.println("</script>");
        }
	}
}
