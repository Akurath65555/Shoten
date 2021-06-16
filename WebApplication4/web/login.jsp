<%-- 
    Document   : login
    Created on : Apr 5, 2019, 2:54:11 AM
    Author     : Amatya Sharma
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
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="user" scope="session" class="com.beans.User" />
        <jsp:setProperty name="user" property="*" />
        <%
            user.login();
            //out.print(user.isLogged()+" "+user.getUname()+"  "+user.getPwd()+"  "+user.getAddress());
            if(user.isLogged())
            response.sendRedirect("home.jsp"); 
        %>
        <%
            if (! user.isLogged())
        %>
        <!--<h3>Invalid Login. Click <a href=login.html>here</a> to try again! </h3>-->
        

        <div class="page-wrap d-flex flex-row align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center">
                        <span class="display-1 d-block">Oops...</span>
                        <div class="mb-4 lead">Invalid Username or Password.  Login Failed . Please Retry.</div>
                        <a href="login.html" class="btn btn-link">Try Again</a>
                        <br>Are you a printing shop??Then <a href="firstpage.html">Click Here</a>
                    </div>  
                </div>
            </div>
        </div>

        <%;%>
    </body>
</html>
