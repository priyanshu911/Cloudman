<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Signup</title>
</head>

<body>
<%!
String user;
String pass;
Connection con;
PreparedStatement pst;
%>
<%
String username = request.getParameter("user");
String mail = request.getParameter("email");
String phone = request.getParameter("phone");
String password = request.getParameter("password");

   Class.forName("com.mysql.jdbc.Driver");
    final String url="jdbc:mysql://localhost:3306/cloudman";    //database
    final String user="root";                                   //password sql
    final String pass="google";  
    con = DriverManager.getConnection(url,user,pass);     
    pst=con.prepareStatement("insert into registration "
                                 + "values ( (?),(?),(?),(?) )");
	pst.setString(1,username);
        pst.setString(2,mail);
        pst.setString(3,phone);
        pst.setString(4,password);
	int val = pst.executeUpdate();
	session.setAttribute("user", username);
        File f1 = new File("C:/UploadedFiles/" + username + "/");
        if(!f1.exists())
            f1.mkdirs();
   
   if(val==1)
   { 
      out.println("Register Confirmation <br/>");
      out.println("you are successfully registered, we are happy to help you. Thank you <br/>"); 
        out.println("your UserName is: "+ username +" <br/>"); 
        out.println("your Email Address is: "+ mail +" <br/>"); 
        out.println("your Password is: "+ password +" <br/>"); 
    out.println("your Contact Number is : " + phone   +" <br/>"); 
    out.println("<h1> <a href = index.jsp > Homepage </a> </h1>");      
   }
 %>
     
   
    
</body>
</html>