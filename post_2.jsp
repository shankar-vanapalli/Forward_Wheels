<!DOCTYPE html>
<html>
<head>
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
<%@ page import="java.util.Date"%>
<%
try

{

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");

response.setHeader("Pragma","no-cache");        
response.setDateHeader("Expire", 0);

String s1=request.getParameter("str");
String s2=request.getParameter("city");

String s3=request.getParameter("num").trim();
session.setAttribute("session-id2",s3);
String s4=request.getParameter("ttt").trim();



String s5=request.getParameter("time");
String s6=request.getParameter("cost");
Date date=new Date();

String s7=date.toString(); 
    
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con=DriverManager.getConnection("jdbc:odbc:sha");

Statement st=con.createStatement();

String qry="insert into posting values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')";
st.executeUpdate(qry);
out.println("Posted Successfully..!");


st.close();

con.close();

}

catch(Exception e)

{
out.println("Sorry, You have to delete your Previous Postings!!!");

}

%>
<br><br>
Back to HomePage--><a href="menu.jsp">Click me</a>

</body>
</html>