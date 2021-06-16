
<html>
    <jsp:useBean id="print" scope="session" class="com.beans.Printing" />
    <jsp:useBean id="user" scope="session" class="com.beans.User" />
        <jsp:setProperty name="printer" property="*" />
        <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Page</title>
    
    <style>
    body{background-color:beige}
    h2{color:greenyellow;font:700 20pt arial}
    h4 {color:brown;font:700 11pt verdana}
    td {font:10pt verdana}
    a {font:10pt verdana;color:navy}

    </style></head>

    <body>
        
        
        
        <%  print.setBid(user.getUserid());
            print.setPages(Integer.parseInt(request.getParameter("pages")));
            print.setSid(Integer.parseInt(request.getParameter("sid")));
            print.setPrintDetails(request.getParameter("printDetails"));
            print.setQuotedPrice(Integer.parseInt(request.getParameter("quotedPrice")));
            //out.println("bid"+print.getBid()+print.getPages()+print.getQuotedPrice()+print.getReqStatus()+print.getSid());
            print.addPrint(user);
        %>
        <div class="page-wrap d-flex flex-row align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center">
                        <span class="display-1 d-block">Request Sent!...</span>
                        <div class="mb-4 lead">
                            Your request has been sent  to the corresponding Print shop and you can find your books for selling on View Requests Tab<br>                       
                            <br>Quoted Price=Rs <%=print.getQuotedPrice()*print.getPages()%><br>
                            <a href = "home.jsp" class="btn btn-link">CLICK HERE TO GO HOME</a>
                        </div>
                        
                    </div>  
                </div>
            </div>
        </div>
             
         
        <%
        
        %>
    </body>
</html>