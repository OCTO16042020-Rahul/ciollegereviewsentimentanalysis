<%@page import="java.sql.ResultSet"%>
<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.*;"%>
<%
	DatabaseConnection db = new DatabaseConnection();
	db.dbconnection();
	String jee="";
	String id = request.getParameter("id");
	String branch = request.getParameter("branch");
	String query = "select * from college where id='" + id + "'";
	ResultSet rs = db.getResultSet(query);
	if (rs.next()) {
		jee= rs.getString("jeemain"+branch);
	}
%>
<input type="text" name=jeemainmarks id="jeemainmarks<%=id %>" style = "width:100px" value="<%=jee%>">