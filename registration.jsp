<jsp:include page="header.jsp" />
<head>
<meta charset="utf-8">
<title>Registration</title>
<script type="text/javascript">
 function validate()
{                
    var user = document.getElementById("user").value;
    if(document.myForm.user.value==""||document.myForm.user.value==" " || user.length<4){
        alert("Enter valid username");
        return (false);
    }

    var regexp=/^[_a-z 0-9_]+(\.[_a-z 0-9_]+)*@[_a-z 0-9_]+(\.[_a-z 0-9_]+)*(\.[a-z]{2,3})$/
    var r1=document.myForm.email.value.match(regexp);
    if(r1==null){
        alert("enter valid e-mail id");
        return (false);
    }

    var regexp1=/^(\d{10,11})$/
    if(document.myForm.phone.value.match(regexp1)==null){
        alert("enter valid phone number");
        return (false);
    }
                    
    var pass = document.getElementById("password").value;
    if(document.myForm.password.value==""||document.myForm.password.value==" " || pass.length<3){
        alert("Enter valid password");
        return (false);
    }
};
</script>
<link rel="stylesheet" type="text/css" href="css/login.css" />
<script type="text/javascript" src="js/login_placeholder.js"></script>
</head>

<body>
<%
    if(session.getAttribute("user")!=null)
    {
        out.println("Already Logged in as " + session.getAttribute("user"));
        //response.sendRedirect("index.jsp");
    }
%>
    
<form id="slick-login"  name="myForm" action="createAccount.jsp" method="post" onsubmit="javascript:return validate()">
    <label for="username">username</label><input type="text" name="user" id="user" class="placeholder" placeholder="Your Name">
    <label for="email">email</label><input type="text" name="email" class="placeholder" placeholder="E-mail">
    <label for="phone">phone</label><input type="text" name="phone" class="placeholder" placeholder="Contact No">
    <label for="password">password</label><input type="password" name="password" id="password" class="placeholder" placeholder="password">
    <input type="submit" value="Sign Up">
</form>
</body>
</html>