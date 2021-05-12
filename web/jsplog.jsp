<%-- 
    Document   : jsplog
    Created on : 12 May, 2021, 6:22:31 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%
            String lname="",lpass="";
            lname=request.getParameter("lname");
            lpass=request.getParameter("lpass");
            Class.forName ("org.h2.Driver"); 
            Connection conn = DriverManager.getConnection ("jdbc:h2:tcp://localhost/~/test", "sa",""); 
            Statement st = conn.createStatement(); 
            st.executeUpdate("insert into user values('"+lname+"','"+lpass+"')"); 
            out.println("inserted");
            conn.close(); 

%>
</body>
</html>

