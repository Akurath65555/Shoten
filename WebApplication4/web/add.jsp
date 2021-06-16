<html>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Page</title>
    
        <style>
            h3 {font:700 12pt verdana;color:maroon}
            a  {font:12pt verdana;color:navy}
            body{background-color: wheat}
        </style>
    </head>
<body>
    <center>
        <jsp:useBean id="user" scope="session" class="com.beans.User" />
        <jsp:useBean id="book" class="com.beans.Book" scope="session" />

        <jsp:setProperty  name="book" property="*" />

        <%
         String result = book.add(user);

         if ( result == null) {
             //response.sendRedirect("home.jsp"); 
             %>
             <div class="page-wrap d-flex flex-row align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center">
                        <span class="display-1 d-block">Book Added...</span>
                        <div class="mb-4 lead">
                            Your book has been added  for Sale/Rent and you can find your books for selling on <a href="view_sold_books.jsp" class="btn btn-link">this</a> link..<br>                       
                            <a href = "home.jsp" class="btn btn-link">CLICK HERE TO GO HOME</a>
                        </div>
                        
                    </div>  
                </div>
            </div>
        </div>
                     
<%
         }
         else
             out.println("<h3>Sorry! Adding the book  Failed With Error : <p> " + result + "</h3> <p> <a href=add.html>Try Again </a> ");

        %>

    </center>
</body>
</html>
     
    