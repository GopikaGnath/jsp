<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="logo 1.png"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="silde 1.jpg" >
  <img class="mySlides"  src="slid 2.jpg" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>


<body>
  <br>
 <%
String msg=request.getParameter("msg");
if("valid" .equals(msg))
{%>
<Center><font color="red" size="5">Form Submitted Successfully you will get notified with in 24 hours</font></Center>
<%  
}
%>
<%
  
if("invalid" .equals(msg))
{%>
<Center><font color="red" size="5">invalid data</font></Center>
<%  
 }
 %>
 
 <Center><h1> enter the details.....</h1></Center>
 <form action="indexFormAction.jsp"  method="post">
 <Center>
 <input type="text" name="name" placeholder="Enter Name" required>
 <input type="text" name="mobilenumber" placeholder="Enter Mobilenumber" required>
 <input type="mail" name="email" placeholder="Enter email" required>
 <input type="text" name="skills" placeholder="Enter the skills" required>
 <button class ="button1"><span>Submit</span></button>
 </Center>
 </form>
  
</body>
</html>

