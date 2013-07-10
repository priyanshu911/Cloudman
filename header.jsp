<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <title>
        Cloudman
    </title>
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <script>
        function showDiv() {
            var ele = document.getElementById("welcomeDiv");
            if(ele.style.display == "block") {
                    ele.style.display = "none";
            }
            else {
                ele.style.display = "block";
            }
        }

    </script>
</head>

<div id="templatemo_header_wrapper">
	<div id="templatemo_header">
    
        <div class="header_left">
            <div id="site_title">
                <a href="index.jsp" target="_parent">
                    <img src="images/templatemo_logo.png" alt="Cloudman" />
                    <!-- <span>Free CSS Template</span> -->
                </a>
            </div>
        </div><!-- end of header left -->
        
        <div class="header_right">
        
            <div id="search_box">
            
                <form action="#" method="get">
                    <input style="background:#cccccc; " type="text" value="" name="Files" size="10" id="input_field" title="Files" />
                    <input type="submit" name="login" value="Search Files" alt="login" id="submit_btn" />
                </form>
                
                <div class="cleaner"></div>
            </div> 
        
            <div id="templatemo_menu">
            
                <ul>
                    <li><a href="index.jsp" class="current">HOME</a></li>
                    <c:if test="${user ne null}">
                        <li><a href="upload.jsp" >Drive</a></li>
                    </c:if>
                        
                    <c:if test="${user eq null}">
                        <li><a href="registration.jsp" >Registration</a></li>
                    </c:if>
                        
                    <li><a href="about.jsp">ABOUT</a></li>
                    <li><a href="about.jsp">CONTACT</a></li>
                    
                    <c:if test="${user ne null}">
                        <li><a href="#" onclick="showDiv();">${user}</a></li>
                        
                    </c:if>
                    <c:if test="${user eq null}">
                        <li><a href="login.jsp">Login</a></li>
                    </c:if>
                </ul>    	
            
                <c:if test="${user ne null}">
                    <div id="welcomeDiv"  style="display:none; position: relative; left: 425px; bottom: 20px; ">
                        <ul>
                            <li><a href="logout.jsp" style="color:#000000">Logout</a></li>
                        </ul>
                    </div>
                </c:if>
            </div>
            
        </div> <!-- end of header right -->
    
    	<div class="cleaner"></div>
    </div> <!-- end of header -->
</div> <!-- end of header wrapper -->