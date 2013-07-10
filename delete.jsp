<%@page import="java.io.*,java.net.*"%>

<%!
    public static String getMimeType(String fileUrl)
    throws java.io.IOException, MalformedURLException 
        {
            String type = null;
            URL u = new URL(fileUrl);
            URLConnection uc = null;
            uc = u.openConnection();
            type = uc.getContentType();
            return type;
        }
%>

<%
    String file=request.getParameter("f");
    File f = new File (file);
    f.delete();
    response.sendRedirect("index.jsp");
%>