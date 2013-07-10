<jsp:include page="header.jsp" />
<head>
<meta charset="utf-8">
<title>Login</title>
<script type="text/javascript">
 function validate()
    {                
    var regexp=/^[_a-z 0-9_]+(\.[_a-z 0-9_]+)*@[_a-z 0-9_]+(\.[_a-z 0-9_]+)*(\.[a-z]{2,3})$/
    var r1=document.myForm.email.value.match(regexp);
        if(r1==null)
                    {
                    alert("enter valid e-mail id");
                    return (false);
                    }

    var pass = document.getElementById("password").value;
    if(document.myForm.password.value==""||document.myForm.password.value==" " || pass.length<3)
    {
                alert("Enter valid password");
                    return (false);
    }
};
</script>
<link rel="stylesheet" type="text/css" href="css/login.css" />
<script type="text/javascript" src="js/login_placeholder.js"></script>
</head>

<body>

    
<h1>
<%
    if(session.getAttribute("user")!=null)
    {
        out.println("Already Logged in as " + session.getAttribute("user"));
        //response.sendRedirect("index.jsp");
    }
%>
</h1>
    
<form id="slick-login"  name="myForm" action="loginCheck.jsp" method="post" onsubmit="javascript:return validate()">
    <label for="username">username</label><input type="text" name="email" class="placeholder" placeholder="email">
    <label for="password">password</label><input type="password" name="password" id="password" class="placeholder" placeholder="password">
    <input type="submit" value="Log In">
</form>
</body>
</html>