<html>
<head>
<style type="text/css">
*{
	margin:0;
	padding:0;
}

.table-box{
	margin:20px auto;

}
.tale tr{
	display:table;
	width:330%;
	margin:5px auto;
	font-family:sans-serif;
	background:transparent;
	padding:10px 0;
	color:#555;
	font-size:16px;
	box-shadow:0 1px 4px 0 rgba(0,0,50,0.3);
	
}
.tale th{
	display:table-cell;
	width:10%;
	text-align:center;
	padding:4px 0;
	font-size:16px;
	border-right:1px solid #d6d4d4;
	vertical-align:middle;
	background:Grey;
	box-shadow:none;
	opacity:0.7;
	color:black;
	font-weight:500;
border-right:none;
}
.tale td{
	display:table-cell;
	width:10%;
	text-align:center;
	padding:4px 0;
	border-right:1px solid transparent;
	vertical-align:middle;
	color:black;
	background:white;
	box-shadow:none;
font-size:14px;
	font-weight:400;
border-right:none;

}
ul{
float:right;
list-style-type:none;
margin-top:10px;
}
ul li{
display :inline-block;
}
ul li a{
text-decoration:none;

color:black;
padding: 5px 20px;
border:1px solid transparent;
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
color:white;
}



</style>



</head>

<body class="tale">
<div class="table-box">
<%@ page language='java' import='java.sql.*' %>
<%
     try
      {

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");

response.setHeader("Pragma","no-cache");        
response.setDateHeader("Expire", 0);

String s1=request.getParameter("t1");


		 	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:sha");
		Statement stmt=cn.createStatement();


String str="Select FullName,Mobile,Address,City,Email,Aadhar from register where Mobile='"+s1+"'";
		ResultSet rs=stmt.executeQuery(str);

		
out.println("<table>"); 
out.println("<tr><th>Full Name</th><th>Mobile</th><th>Address</th><th>City</th><th>Email</th><th>Aadhar</th></tr>"); 
	while(rs.next()) 
 
	 { 

		out.println("<tr><td>"+rs.getString(1)+"</td>"); 
			out.println("<td>"+rs.getString(2)+"</td>"); 
	         
	         out.println("<td>"+rs.getString(3)+"</td>"); 
	         out.println("<td>"+rs.getString(4)+"</td>"); 
	         out.println("<td>"+rs.getString(5)+"</td>");
	         out.println("<td>"+rs.getString(6)+"</td></tr>");
                 
	     		 
	 }
out.println("</table>");


 
rs.close();

stmt.close();
cn.close();

	}

		catch(Exception e)
{
out.println(e);
}
%>
	<div class="tab">
<ul>


<li><a href="menu.jsp">Homepage</a></li>
</ul>
</div>


</body>
</html>