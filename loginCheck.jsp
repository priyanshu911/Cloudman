<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%!
String user;
String pass;
Connection con;
PreparedStatement pst;
%>
<%
String email = request.getParameter("email");
String pass = request.getParameter("password");
out.println(email + "</br>");
out.println(pass + "</br>");
//pass = request.getParameter("password");
try
        {
    Class.forName("com.mysql.jdbc.Driver");
    final String url="jdbc:mysql://localhost:3306/cloudman";
    final String user="root";
    final String password="google";
    con = DriverManager.getConnection(url,user,password);
    //con=DriverManager.getConnection("jdbc:odbc:online_shopping");
    pst=con.prepareStatement("select * from registration where email = ? and Password = ?");
	pst.setString(1,email);
        pst.setString(2,pass);
	ResultSet rs = pst.executeQuery();
        if(rs.next())
        {
                String us = rs.getString("name");
                session.setAttribute("user", us);
                response.sendRedirect("index.jsp");
        }
        else
            response.sendRedirect("error.html");
	
    %>
    
             
    <%}catch(Exception e){
        out.println("Exception"+e);
        }
    %>

</body>
</html>