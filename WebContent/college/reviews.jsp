<%@page import="java.sql.ResultSet"%>
<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.*;"%>

<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />

	<%
	String cname = (String)session.getAttribute("cname");
	%>
	<h1>Student Reviews <br> <%=cname %></h1>
	<div class="container">
			<%
			DatabaseConnection db = new DatabaseConnection();
			db.dbconnection();
			String id = (String)session.getAttribute("id");
			
			String subject= "";
			
			String query = "select distinct subject from commentanalysis where id='"+id+"'";
			ResultSet rs = db.getResultSet(query);
			int gridcount = 0; 
			while (rs.next()) {
				subject = rs.getString("subject");
				gridcount++;
				if(gridcount>3){
					gridcount = 1;
				}
			%>
		<div class="grid<%=gridcount %>">
		
		<%
		System.out.println("=====================================================================");
		String ratequery = "select "+subject+" from collegerating where id = '" + id + "'";
		System.out.println(subject);
		System.out.println(id);
		System.out.println("rate query"+ratequery);
        ResultSet rr = db.getResultSet(ratequery);
        if(rr.next()){
        String[] rate = rr.getString(subject).split(",");

        double prate = Double.valueOf(rate[0]);
        double nrate = Double.valueOf(rate[1]);
        
        String pvrate = String.format("%.01f", prate);
        String nvrate = String.format("%.01f", nrate);
        
		%>
<%-- 		<span> [&nbsp;<%=pvrate%>&nbsp;/ &nbsp;<%=nvrate %>&nbsp;]</span> --%>
		<h2><%=subject%> &nbsp; [<%=pvrate%>/<%=nvrate %>]</h2>
		<div class="para">
		<%
        }
			String comment= "";
			String prate= "";
			String nrate= "";
			String query1 = "select comment ,prate,nrate from commentanalysis where id='"+id+"' and subject = '"+subject+"'";
			ResultSet rs1 = db.getResultSet(query1);
			
			while (rs1.next()) {
				comment = rs1.getString("comment");
				prate = rs1.getString("prate");
				nrate = rs1.getString("nrate");
			%>
			<p><%=comment %> &nbsp;<b style="position:relative; float:right;right:0"> <%=prate %>/<%=nrate %></b> </p>
			<%	
				}
			%>
			</div>
			<div class="sign text-center">
			</div>
		</div>
			<%
				}
			%>
		<div class="clear"></div>
	</div>