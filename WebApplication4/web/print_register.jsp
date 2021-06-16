<html>

<style>
h3 {font:700 12pt verdana;color:maroon}
a  {font:12pt verdana;color:navy}
</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body bgcolor="wheat">
<center>

<jsp:useBean id="puser" class="com.beans.PrintUser" scope="session" />

<jsp:setProperty  name="puser" property="*" />

<%
 String result = puser.registerUser();

 if ( result == null) {%>
 <div class="page-wrap d-flex flex-row align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center">
                        <span class="display-1 d-block">egistration Success...</span>
                        <div class="mb-4 lead">Now </div>
                        <a href="print_login.html" class="btn btn-link">Login</a>
                        Are you a Shop??Then <a href="firstpage.html">Click Here</a>
                    </div>  
                </div>
            </div>
        </div>
     <%;}
     else{
     out.println("<h3>Sorry! Registration Failed With Error : <p> " + result + "</h3> <p> <a href=print_register.html>Try Again </a> ");}

%>

</center>
</body>
</html>
     
    
   
