<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}
</style>
</head>
<body>
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="logo 1.png"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>
<body>
<br>
	<br>
<%
String msg=request.getParameter("msg");
if("invalid".equals(msg))
{%>
<center><font color="red" size="5">Invalid Username/password</font></center>
<%
}
%>
<form action="adminLoginAction.jsp" method="post">
<div class="container">
<center><h2>Username</h2></center>
<input type="text" placeholder="Enter Username" name="username" required>
<center><h2>Password</h2></center>
<input type="password" placeholder="Enter Password" name="password" required>
<center><button type="submit" Class="button">submit</button></center>
</form>
</div>
</body>
</html>