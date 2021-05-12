<%@page import="java.sql.*,java.io.*" %>
<%@page import="com.mysql.jdbc.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%
            String lname="",lpass="",s="";
            lname=request.getParameter("lname");
            lpass=request.getParameter("lpass");
          
             Class.forName("org.h2.Driver");
            Connection con=DriverManager.getConnection('jdbc:h2:tcp://localhost/~/test" user="sa" password="" ');
            Statement st=con.createStatement();
            
            PreparedStatement s=con.prepareStatement("insert into USER values(?,?) "); 
            
            s.setString(1,lname);
            s.setString(2,lpass);
            s.executeUpdate();
%>
</body>
</html>
