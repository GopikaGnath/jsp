<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String category=request.getParameter("category");
String avnot=request.getParameter("avnot");
String number=request.getParameter("number");
int number1=Integer.parseInt("number");

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	if(avnot.equals("available"))
		st.executeUpdate("update availability set number=number+'"+number1+"'where category='"+category+"'");
	else
		st.executeUpdate("update availability set number=number-'"+number1+"'where category='"+category+"'");
		response.sendRedirect("manage.jsp?msg.valid");
}
catch(Exception e)
{
	response.sendRedirect("manage.jsp?msg.invalid");
}
%>
