<html>

<style>
h3 {font:700 12pt verdana;color:maroon}
a  {font:12pt verdana;color:navy}
body{background: url("Images/registerthumbs.jpg");background-size: cover}

</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body bgcolor="wheat">
<center>

<jsp:useBean id="user" class="com.beans.User" scope="session" />

<jsp:setProperty  name="user" property="*" />

<%
 String result = user.registerUser();

 if ( result == null) {%>
 <div class="page-wrap d-flex flex-row align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center">
                        <span class="display-1 d-block">Registration Success...<br><br><br></span>
                        <div class="mb-4 lead"><font size="5pt">Please</font><a href="login.html" class="btn btn-link"><font size="5pt">Login</font></a><font size="5pt">again to use Shoten</font></div>
                        
                        
                    </div>  
                </div>
            </div>
        </div>
     <%;}
 else
     out.println("<h3>Sorry! Registration Failed With Error : <p> " + result + "</h3> <p> <a href=register.html>Try Again </a> ");

%>

</center>
</body>
</html>
     
    
   
