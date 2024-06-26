<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid" .equals(msg))
{%>
<Center><font color="red" size="5"> Successfully updated</font></Center>
<%  
}
%>
<%

if("invalid" .equals(msg))
{%>
<Center><font color="red" size="5">failed to update</font></Center>
<%  
}
%>
<%

if("deleted" .equals(msg))
{%>
<Center><font color="red" size="5">sucessfully deleted</font></Center>
<%  
}
%>

<br>
<center>
<table id="customers">
<tr>
<th>ID</th>
<th>Name</th>
<th>City</th>
<th>Category</th>
<th>mobile number</th>
<th>Gender</th>
<th>Email</th>
<th>Blood group</th>
<th>Address</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<tr>
<% 
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from workers");
	while(rs.next())
	{
%>
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
<td><%=rs.getString(8) %></td>
<td><%=rs.getString(9) %></td>
<td><a href="updateWorker.jsp?id=<%=rs.getString(1)%>">Edit</a></td>
<td><a href="deleteWorker.jsp?id=<%=rs.getString(1)%>">Delete</a></td>
</tr>
<%
	}
}
catch(Exception e)
{
	System.out.println(e);
	}
%>
</table>
</center>


</body>
</html>