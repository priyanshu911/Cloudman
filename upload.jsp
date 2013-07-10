<%@ page import="java.io.*"%>
<%@ page language="java" %>

<%
    String user = "";
    try{
            if(session.getAttribute("user")==null)
                response.sendRedirect("login.jsp");
            user = (String)session.getAttribute("user");
    }
    catch(Exception e){
                System.out.println("Error");
    }
 %>
 <jsp:include page="header.jsp" />
 <center> <h1>Welcome ${user} ! </h1> 
    <a href="logout.jsp">Logout</a>
 </center>
 </br>
 
<head><title>Upload page</title></head></p> <p><body>
 <form action="uploadFile.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1">
   <center>
<table border="0" bgcolor=#ccFDDEE>
       <tr>
               <td align="center"><b>File Upload</td>
           </tr>
       <tr>
               <td>
                       Specify file:<input name="file" type="file" id="file">
                   <td>
           </tr>
    </table>
        <center>
 </form>
    <br/>
<table>
    <h2> Your Files : </h2> 
    <tr><th>File Name</th><th>Download File</th><th>Delete File</th></tr>
    <tr></tr><tr></tr>
<%
        File f = new File("C:/UploadedFiles/" + user );
        File[] files = f.listFiles();
        for(int i=0;i<files.length;i++){
            String name=files[i].getName();
            String path=files[i].getPath();
            if(!path.contains("SnapsFolder")){
%>

<tr>
    <td><%=name%></td>
    <td><a href="download.jsp?f=<%=path%>">Download File</a></td>
    <td><a href="delete.jsp?f=<%=path%>">Delete File</a></td>
    <!-- <td><a href="view.jsp?f=<%=path%>">View File</a></td> -->
</tr>
     <%
        }}
     %>
</table>
</html>
</HTML>
