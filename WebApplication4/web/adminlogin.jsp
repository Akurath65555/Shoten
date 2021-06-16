
<%-- 
    Document   : adminlogin
    Created on : 8 Apr, 2019, 5:11:50 AM
    Author     : udit
--%>

<html>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:useBean id="admin" scope="session" class="com.beans.Admin" />
    <jsp:setProperty name="admin" property="*" />
    <%
        String uname ,pwd;
        uname = request.getParameter("uname");
        pwd = request.getParameter("pwd");
        if(uname.equals("adminid") && pwd.equals("adminpwd"))
            response.sendRedirect("adminhome.jsp");
    
        else
   
    %>

    <div class="page-wrap d-flex flex-row align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center">
                        <span class="display-1 d-block">Oops...</span>
                        <div class="mb-4 lead">Invalid Username or Password.  Login Failed . Please Retry.</div>
                        <a href="adminlogin.html" class="btn btn-link">Try Again</a>
                        <br>Not an admin? <a href="firstpage.html">Go Back</a>
                    </div>  
                </div>
            </div>
        </div>

</html>