<html>
<head>
<title>Password</title>
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

<%
try
{
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");

response.setHeader("Pragma","no-cache");        
response.setDateHeader("Expire", 0);

String s1=request.getParameter("npwd2").trim();
String s3=request.getParameter("tseca").trim();

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con=DriverManager.getConnection("jdbc:odbc:sha");

Statement st=con.createStatement();
String qry="update register set Password='"+s1+"' where Security_Ans='"+s3+"'";
int x=st.executeUpdate(qry);
if(x>0)
out.println("Password Updated Successfully");
else
out.println("Security Answer Not Matched");
st.close();

con.close();

}

catch(Exception e)

{
out.println(e);

}

%>
<br><br>
Back to Login--><a href="index.html">Click me</a>



</body>
</html>
</html>