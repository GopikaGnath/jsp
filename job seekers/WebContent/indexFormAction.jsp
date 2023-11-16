<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String skills=request.getParameter("skills");
String status ="pending";
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into workerreq values(?,?,?,?,?)");

	ps.setString(1, name);
	ps.setString(2, mobilenumber);
	ps.setString(3, email);
	ps.setString(4, skills);
	ps.setString(5, status);
	ps.executeUpdate();
	response.sendRedirect("index.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("index.jsp?msg=invalid");
}
%>