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

String s1=request.getParameter("svn");
String s2=request.getParameter("svt");

String s3=request.getParameter("svna");

String s4=request.getParameter("sins");
String s5=(String)session.getAttribute("session-id");
    
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con=DriverManager.getConnection("jdbc:odbc:sha");

Statement st=con.createStatement();

String qry="update register set VehicleNumber='"+s1+"',VehicleType='"+s2+"',VehicleName='"+s3+"',LicenseID='"+s4+"' where Email='"+s5+"'";
st.executeUpdate(qry);
out.println("Updated Successfully..!");


st.close();

con.close();

}

catch(Exception e)

{
out.println(e);

}

%>
<br><br>
Back to Homepage--><a href="menu.jsp">Click me</a>

</body>
</html>