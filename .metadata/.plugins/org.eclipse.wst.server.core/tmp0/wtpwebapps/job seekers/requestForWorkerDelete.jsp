<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
	Connection con =ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeLargeUpdate("delete from workerreq where mobilenumber='"+mobilenumber+"'");
	response.sendRedirect("requestForWorkers.jsp");
}
catch(Exception e)
{
	response.sendRedirect("requestForWorkers.jsp");
}
%>