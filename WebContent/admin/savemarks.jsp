<%@page import="java.sql.ResultSet"%>
<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.*;"%>
<%
	DatabaseConnection db = new DatabaseConnection();
	db.dbconnection();
	String jee="";
	String id = request.getParameter("id");
	String branch = request.getParameter("branch");
	String jeemainmarks = request.getParameter("jeemainmarks");
	String cutoffmarks = request.getParameter("cutoffmarks");
	
	String query = "update college set jeemain"+branch+"='"+jeemainmarks+"', cetcutoff"+branch+"='"+cutoffmarks+"' where id='" + id + "'";
	db.getUpdate(query);
%>
success