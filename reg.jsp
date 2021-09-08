<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width-device-width, initial-scale=1.0">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">

<style type="text/css">
*{
	margin:0;
	padding:0;
}
.pos{
	font-size:20px;
	color:white;
	background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(Pics/b.jpg);
	text-align:center;
	
}
.pos a{
	
	text-decoration:none;
	font-size:18px;
	color:white;
	cursor:pointer;
	
}


</style>


</head>
<body class="pos">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%




try

{

response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");

response.setDateHeader ("Expire", 0); 
response.setHeader("Pragma","no-cache"); 

String s1=request.getParameter("sname");

String s2=request.getParameter("semail");



String s3=request.getParameter("snumber");

String s4=request.getParameter("sarea");
String s5=request.getParameter("scity");
String s6=request.getParameter("sadh");
String s7=request.getParameter("span");
String s8=request.getParameter("spwd");
String s9=request.getParameter("secq");
String s10=request.getParameter("seca");


Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con=DriverManager.getConnection("jdbc:odbc:sha");

Statement st=con.createStatement();

String qry="insert into register values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')";
st.executeUpdate(qry);
out.println("Registered Successfully..!");

st.close();

con.close();

}

catch(Exception e)

{
out.println("Sorry, You are an Existing User!!!");

}

%>
<br><br>
Back to Login--><a href="index.html">Click me</a>

</form>
</body>

</html>
