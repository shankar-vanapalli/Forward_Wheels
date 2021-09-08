<!DOCTYPE html>
<html>
<head>

<title>Forgot Password JSP</title>
<script type="text/javascript" language="javascript">
function checkPassword(form) { 
                npwd1 = form.npwd1.value; 
                npwd2 = form.npwd2.value; 
  
      
                if (npwd1 == '') 
                    alert ("Please enter Password"); 
                      
       
                else if (npwd2 == '') 
                    alert ("Please enter confirm password"); 
                      
            
                else if (npwd1 != npwd2) { 
                    alert ("Password did not match Please try again") 
                    return false; 
                } 
  
                else{
		
			
			return true;           
} 
}
        </script>

<style type="text/css"> 
 	
	*{
	box-sizing:border-box;
}
body{
	font-family:'Nunito',sans-serif;
	color:black;
	background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(Pics/bg.jpg);
	height:100vh;
	margin:0;
	padding:0;
}
form{
	max-width:350px;
	margin:10px auto;
	padding:10px 0px;
	background:grey;
	border-radius:10px;
	
}
h1{
margin:0 0 30px 0;
text-align:center;
}
input[type="text"],
input[type="email"],
input[type="tel"],
input[type="password"],
textarea,
select{
	background:rgba(255,255,255,0.1);
	border:none;
	font-size:18px;
	height:auto;
	margin:0;
	outline:0;
	padding:8px;
	width:100%;
	background-color:#e8eeef;
	color:none;
	box-shadow:0 1px 0 rgb(0,0,0,0.3) inset;
	margin-bottom:10px;
		
}
input:focus, textarea:focus{
	box-shadow: 0 0 5px rgba(81,203,238,1);
	border:1px solid rgba(81,203,238,1);
}
select{
	padding:6px;
	height:32px;
	border-radius:2px;
}
fieldset{
	margin-bottom:30px;
	border:none;
}
legend{
	display:block;
	margin-bottom:8px;
}
.section{
	background-color:cyan;
	color:black;
	height:30px;
	width:30px;
	display:inline-block;
	font-size:0.8em;
	margin-right:4px;
	line-height:30px;
	text-align:center;
	text-shadow:0 1px 0 rgba(255,255,255,0.2);
	border-radius:100%;
	cursor:pointer;
}
label{
	display:block;
	margin-bottom:8px;

}
.btn{
	padding:10px 10px 10px 10px;
	
	margin:0px 108px;
	color:black;
	background-color:cyan;
	font-size:18px;
	text-align:center;
	font-style:normal;
	border-radius:5px;
	width:40%;
	align:center;
	border:1px solid transparent;
	border-width:1px 1px 3px;
	box-shadow:0 1px 0 rgba(255,255,255,0.1) inset;
	cursor:pointer;

}





        </style>  
</head>

<body>
<%@ page import="java.sql.*"%>
<h1>Forgot Password</h1>
<form onSubmit = "return checkPassword(this)" action="forgot_pwd.jsp">
<fieldset>
<label class="" for="tsa">Security Question</label>
<select name="tsa" required>
<option value="">--Select--</option>
<%
try{

String s1=request.getParameter("stemail");
 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con=DriverManager.getConnection("jdbc:odbc:sha");

Statement st=con.createStatement();
String qry="select Security_Que from register where Email='"+s1+"'";

ResultSet rs=st.executeQuery(qry);
while(rs.next()){ 
%>

<option><%=rs.getString("Security_Que")%></option>

<%
}

}
catch(Exception e)
{
	out.println(e);

}
%>
</select>

<label class="" for="tseca">Answer</label>
<input type="text" name="tseca" required autocomplete="off">

<label class="" for="tpwd">Password</label>
<input type="password" name="npwd1" required >
<label class="" for="tpwd1">Confirm Password</label>
<input type="password" name="npwd2" required >
</fieldset>


<button type="submit" class="btn">Update</button></form>
</body>
</html>