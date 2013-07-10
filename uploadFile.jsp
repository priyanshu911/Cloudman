<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if(session.getAttribute("user")==null)
                response.sendRedirect("login.jsp");
    String user = (String)session.getAttribute("user");
    
    String extension = "a";
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    if (!isMultipart) {
    } else {
           FileItemFactory  factory = new DiskFileItemFactory();
           ServletFileUpload upload = new ServletFileUpload(factory);
           List items = null;
           try {
                   items = upload.parseRequest(request);
           } catch (FileUploadException e) {
                   e.printStackTrace();
           }
           Iterator itr = items.iterator();
           while (itr.hasNext()) {
           FileItem item = (FileItem) itr.next();
           if (item.isFormField()) {
           } else {
                   try {
                           String itemName = item.getName();
                           int i = itemName.lastIndexOf(".");
                           String name = itemName.substring(0,i);
                           extension = itemName.substring(i);
                           
                           File savedFile = new File("C:/UploadedFiles/" + user + "/" + itemName);
                           File snapFile  = new File("C:/Users/Priyanshu Chauhan/Desktop/upload" + extension);
                           item.write(savedFile);  
                           item.write(snapFile);
                   } catch (Exception e) {
                           e.printStackTrace();
                   }
              }
           }
   }
   response.sendRedirect("Processed?extension=" + extension.substring(1));       //eliminate . like .exe to exe
%>