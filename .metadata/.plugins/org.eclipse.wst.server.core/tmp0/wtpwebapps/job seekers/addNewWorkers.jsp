<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.corba.se.spi. orbutil.fsm.Guard.Result"%>
<%@page import="java.sql.Statement"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@include file="header.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 30px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid" .equals(msg))
{
%>
<center><font color="red" size="5"> Suscessfully updated</font></center>
<%} %>
<%

if("invalid" .equals(msg))
{
%>
<center><font color="red" size="5">Some Went Wrong!..</font></center>
<%} %>
<% 
int id=1;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from workers");
	if(rs.first())
	{
		id=rs.getInt(1);
		id=id+1;
	}%>
	<div Class="container">
	<h1 style ="color:red;">Worker ID: <%out.println(id); %></h1>
	<% 	
}
catch(Exception e)
{}
%>
<div Class="container">
<form action="addNewWorkerAction.jsp" method="post">
<input type="hidden" name="id" value="<% out.println(id); %>">
<h2>Name</h2>
<input type="text" placeholder="Enter  Name" name="name">
<hr>
<h2>City</h2>
<input type="text" placeholder="Enter  city" name="city">
<hr>
<h2>Category</h2>
<input type="text" placeholder="Enter  category" name="category">
<hr>
<h2>Mobile Number</h2>
<input type="number" placeholder="Enter  mobile number" name="mobilenumber">
<hr>
<h2>Genter</h2>
<input type="text" placeholder="Enter the Email" name="gender">
<hr>
<h2>Email</h2>
<input type="email"placeholder="Enter  email" name="email">
<hr>
<h2>Blood Group</h2>
<input type="text"placeholder="Enter  bloodgroup" name="bloodgroup">
<h2>Address</h2>
<input type="text"placeholder="Enter  Address" name="address">
<br>
<center><button type="submit" Class="button">save</button></center>

</form>
</div>
</div>
<br>
<h3><center> thank you...</center></h3>
</body>
</html>