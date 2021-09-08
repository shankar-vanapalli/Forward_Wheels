
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=0">

<style>
*{
margin:0;
padding:0;
font-family:Century Gothic;
}
header{
background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(Pics/bike.jpg);
height:100vh;
background-size:cover;
background-position:center;
}
ul{
float:right;
list-style-type:none;
margin-top:25px;
}
ul li{
display :inline-block;
}
ul li a{
text-decoration:none;

color:yellow;
font-family:roboto;
padding: 5px 20px;
border:1px solid transparent;
transition:0.9s ease;
}

ul li a:hover{
background-color:black;
color:white;
}
.tab{
max-width:1200px;
margin:auto;
}
ul li.active a{
background-color:black;
color:yellow;

}
.title{
	position:absolute;
	top:50%;
	left:50%;
	transform.translate(-50%,-50%);
}
.title h1{
	color:black;
	font-size:30px;
}
.button{
	position:absolute;
	top:50%;
	left:40%;
	transform.translate(-50%,-50%);
}
.btn{
border:0.5px solid black;
padding:10px 30px;
color:yellow;
font-family:roboto;

text-decoration:none;
transition: 0.9s ease;
}
.btn:hover{
background-color:black;
color:white;

}
</style>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");

response.setHeader("Pragma","no-cache");        
response.setDateHeader("Expire", 0); 
String email=(String)session.getAttribute("session-id");
if(email==null){
out.println(email);
response.sendRedirect("http://localhost:8088/Wheel_share/logout.jsp");
 }
 %>
<header>
<div class="tab">
<ul>
<li class="active"><a href="menu.jsp">Home</a></li>
<li><a href="Profile_view.jsp">Profile</a></li>
<li><a href="Vehicle_view.jsp">Vehicle Details</a></li>
<li><a href="history.jsp">Post History</a></li>
<li><a href="logout.jsp">Logout</a></li>
</ul>
</div>

<div class="button">
<a href ="post.jsp" class="btn">Post</a>

<a href="req.html" class="btn">Request</a>
</div>

</header>

</body>
</html>
