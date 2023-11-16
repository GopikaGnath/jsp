<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
	Connection con =ConnectionProvider.getCon();
	PreparedStatement ps= con.prepareStatement("update workerreq set status='complited' where mobilenumber=?");
	ps.setString(1, mobilenumber);
	ps.executeUpdate();
	response.sendRedirect("requestForWorkers.jsp");
}
catch(Exception e)
{
	response.sendRedirect("requestForWorkers.jsp");
}
%>