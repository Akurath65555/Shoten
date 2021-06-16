<%-- 
    Document   : print_login
    Created on : 7 Apr, 2019, 12:04:34 PM
    Author     : udit
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <jsp:useBean id="puser" scope="session" class="com.beans.PrintUser" />
        <jsp:setProperty name="puser" property="*" />
        <%
            puser.login();
            //out.print(puser.isLogged()+" "+puser.getUsername()+"  "+puser.getPassword()+"  "+puser.getAddress());
            if(puser.isLogged())
            response.sendRedirect("printrequests.jsp"); 
        %>
        <%
            if(!puser.isLogged())
        %>
       
       <div class="page-wrap d-flex flex-row align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center">
                        <span class="display-1 d-block">Oops...</span>
                        <div class="mb-4 lead">Invalid Username or Password.  Login Failed . Please Retry.</div>
                        <a href="print_login.html" class="btn btn-link">Try Again</a>
                        Are you a Student??Then <a href="firstpage.html">Click Here</a>
                    </div>  
                </div>
            </div>
        </div>
        <%;%>
    </body>
</html>
