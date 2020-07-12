<%@page import="java.sql.ResultSet"%>
<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.*;"%>
<%
	DatabaseConnection db = new DatabaseConnection();
	db.dbconnection();
	String cutoff="";
	String id = request.getParameter("id");
	String branch = request.getParameter("branch");
	String query = "select * from college where id='" + id + "'";
	ResultSet rs = db.getResultSet(query);
	if (rs.next()) {
		cutoff= rs.getString("cetcutoff"+branch);
	}
%>
<input type="text" name="cutoffmarks" id="cutoffmarks<%=id %>" style = "width:100px" value="<%=cutoff%>">