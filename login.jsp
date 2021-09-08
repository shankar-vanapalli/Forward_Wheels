<%@ page language='java' import='java.sql.*' %>


<%
     try
      {
	
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");

response.setHeader("Pragma","no-cache");        
response.setDateHeader("Expire", 0);
	String t1=request.getParameter("temail").trim();
	String t2=request.getParameter("tpwd").trim();
		
session.setAttribute("session-id",t1);
	if(t1.length()!=0)
	 {
	         if(t2.length()!=0)
	          {
		
		 	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:sha");
		Statement stmt=cn.createStatement();
String str="Select Email,Password from register where Email='"+t1+"' and Password='"+t2+"'";
		ResultSet rs=stmt.executeQuery(str);
		int c=0;
		if(rs.next())
		 {
		          c++;
			session.setAttribute("sname",rs.getString(1));
			
		 }

		stmt.close();
		cn.close();

		if(c==0)
		 {
              session.setAttribute("msg","Invalid Email/Password Entered...");
	           response.sendRedirect("ErrorPage.jsp");
		 }
		else
		 {
			response.sendRedirect("menu.jsp");
		 }
           	               
	          }
	         else
	          {
	           session.setAttribute("msg","PassWord is Not Specified...");
	           response.sendRedirect("ErrorPage.jsp");
	          }
	 }
	else
	 {
	           session.setAttribute("msg","UserName is Not Specified...");
	           response.sendRedirect("ErrorPage.jsp");
	 }
      }
     catch(Exception e)
      {
	           session.setAttribute("msg","Error in Validating the Page...");
	           response.sendRedirect("ErrorPage.jsp");
      }
%>



