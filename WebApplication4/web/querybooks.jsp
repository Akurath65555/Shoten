
<jsp:useBean id="user" scope="session" class="com.beans.User" />
<title>Search</title>
    <style>
    input[type=button], input[type=submit], input[type=reset] {
                background-color: #d3993f;
                border: none;
                color: white;
                padding: 16px 32px;
                text-decoration: none;
                margin: 4px 2px;
                cursor: pointer;
                alignment-adjust: central;
              }
    body{ background: url("Images/notebook-336634_1280.jpg");background-size:cover}
      #books {
          font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }

        #books td, #books th {
          border: 1px solid #ddd;
          padding: 8px;
        }

        #books tr:nth-child(even){background-color: #f2f2f2;}
        #books tr:nth-child(odd){background-color: #c48827;}
        #books tr:hover {background-color: #ddd;}

        #books th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #4CAF50;
          color: white;
          
        }
</style>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <body>
    <div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
        <button class="w3-bar-item w3-button w3-large" onclick="w3_close()">Close &times;</button>
        <!--<a href="gohome.jsp" class="w3-bar-item w3-button">HOME</a>
        <a href="changeprofile.jsp" class="w3-bar-item w3-button">Update/See User Details</a>
        <a href="querybooks.jsp" class="w3-bar-item w3-button">Search Books</a>
        <a href="ordershistory.jsp" class="w3-bar-item w3-button">Orders History</a>
        <a href="add.html" class="w3-bar-item w3-button">Sell/Rent a Book</a>
        <a href="printlist.jsp" class="w3-bar-item w3-button">Printing Shops Nearby</a>
        <a href="see_sent_requests.jsp" class="w3-bar-item w3-button" >View Print Requests</a>
        <a href="view_sold_books.jsp" class="w3-bar-item w3-button">My Sales</a>
        <a href=logout.jsp class="w3-bar-item w3-button"> Logout </a> -->           
        
        <a href="gohome.jsp" class="w3-bar-item w3-button">HOME</a>
        <a href="changeprofile.jsp" class="w3-bar-item w3-button">My Account</a>
        <a href="querybooks.jsp" class="w3-bar-item w3-button">Search Books</a>
        <a href="ordershistory.jsp" class="w3-bar-item w3-button">My Orders</a>
        <a href="add.html" class="w3-bar-item w3-button">Sell/Rent a Book</a>
        <a href="printlist.jsp" class="w3-bar-item w3-button">Printing Shops Nearby</a>
        <a href="see_sent_requests.jsp" class="w3-bar-item w3-button" >My Print Requests</a>
        <a href="view_sold_books.jsp" class="w3-bar-item w3-button">My Books For Sale</a>
        <a href=logout.jsp class="w3-bar-item w3-button"> Logout </a>            
    </div>
        
    <div id="main">

        <div class="w3-teal">
            <div style="background-color: #c48827">
            <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
            <div class="w3-container">
                 <h1>Search Page</h1>
            </div>
            </div>
        </div>

        <div class="w3-container">
        <form action="querybooks.jsp" method="post" >
            <table id="books">
                <tr>                    
                    <td>Category
                    <select name="cat">
                        <option value="all">All
                        <option value="Rent">Rent
                        <option value="Sale">Sale 
                   </select><br>
                    
                    <td><input type=text name=title size=20 placeholder="Title">                                                  
                    <td><input type=text size=20 name=author placeholder="Author">
                    <td><input type=text name=fromprice size=10 placeholder="Price From">
                    <td>
                    <td><input type=text name=toprice size=10 placeholder="Price TO">
                </tr>
            </table>
            <p><input type=submit value="Search">
        </form>

        <%
         String cat = request.getParameter("cat");
         if ( cat == null)
          return;

         String cond = "1=1";

         if (!cat.equals("all") )
             cond = cond + " and cat = '" + cat + "'";

         String title = request.getParameter("title");

         if ( !title.equals(""))
            cond = cond + " and title like '%" + title + "%'";


         String author = request.getParameter("author");

         if ( !author.equals(""))
            cond = cond + " and author like '%" + author + "%'";


         String fromprice = request.getParameter("fromprice");

         if ( !fromprice.equals(""))
            cond = cond + " and price >= " + fromprice;

         String toprice = request.getParameter("toprice");

         if ( !toprice.equals(""))
            cond = cond + " and price <= " + toprice;
         

         request.setAttribute("cond", cond);

        %>

        <jsp:include  page="listbooks.jsp" flush="true"/>
    </div>

    </div>

    <script>
        function w3_open() {
          document.getElementById("main").style.marginLeft = "25%";
          document.getElementById("mySidebar").style.width = "25%";
          document.getElementById("mySidebar").style.display = "block";
          document.getElementById("openNav").style.display = 'none';
        }
        function w3_close() {
          document.getElementById("main").style.marginLeft = "0%";
          document.getElementById("mySidebar").style.display = "none";
          document.getElementById("openNav").style.display = "inline-block";
        }
    </script>
</body>


<!--Redundant Code ...Older Versions-->

<!--
<!--<html>

    <style>
    h2{color:navy;font:700 20pt arial}
    h4 {color:brown;font:700 11pt verdana}
    td {font:700 10pt verdana}
    a {font:700 10pt verdana;color:darkgreen}
    body{background-color: beige}
    </style>

    <body>

        <h2>Query Books</h2>
        <form action="querybooks.jsp" method="post" >
            <table>
                <tr>
                    <td>
                    Category
                    <td> 
                    <select name="cat">
                        <option value="all">All
                        <option value="Rent">Rent
                        <option value="Sale">Sale 
                   
                    </select><br>
                    Title Contains 
                    <input type=text name=title size=20>
                </tr>

                <tr>
                    <td>
                    Author Name Contains
                    <td>
                    <input type=text size=20 name=author>
                    Price From
                    <input type=text name=fromprice size=10>
                    To
                    <td>
                    <input type=text name=toprice size=10>
                </tr>
            </table>
            <p>
                <input type=submit value="Query">
                <a href="gohome.jsp">Home Page </a>

        </form>

        <%
         /*String cat = request.getParameter("cat");
         if ( cat == null)
          return;

         String cond = "1=1";

         if (!cat.equals("all") )
             cond = cond + " and cat = '" + cat + "'";

         String title = request.getParameter("title");

         if ( !title.equals(""))
            cond = cond + " and title like '%" + title + "%'";


         String author = request.getParameter("author");

         if ( !author.equals(""))
            cond = cond + " and author like '%" + author + "%'";


         String fromprice = request.getParameter("fromprice");

         if ( !fromprice.equals(""))
            cond = cond + " and price >= " + fromprice;

         String toprice = request.getParameter("toprice");

         if ( !toprice.equals(""))
            cond = cond + " and price <= " + toprice;
         

         request.setAttribute("cond", cond);*/

        %>

        <//jsp:include  page="listbooks.jsp" flush="true"/>

    </body>
</html>   -->


<!--

<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>ul {
              list-style-type: none;
              margin: 0;
              padding: 0;
              overflow: hidden;
              background-color: #680b41;
            }

            li {
              float: left;
              border-right:1px solid #bbb;
            }

            li:last-child {
              border-right: none;
            }

            li a {
              display: block;
              color: white;
              text-align: center;
              padding: 14px 16px;
              text-decoration: none;
            }

            li a:hover:not(.active) {
              background-color: #111;
            }

            .active {
              background-color: #4CAF50;
            }</style>
<body>

<div class="w3-sidebar w3-bar-block w3-collapse w3-card w3-animate-left" style="width:250px;" id="mySidebar">
  <button class="w3-bar-item w3-button w3-large w3-hide-large" onclick="w3_close()">Close &times;</button>
  <ul><li><a href="gohome.jsp">Home Page </a></li></ul>
  <form action="querybooks.jsp" method="post" >
            <table>
                <tr>
                   
                    Category
                    <select name="cat">
                        <option value="all">All
                        <option value="Rent">Rent
                        <option value="Sale">Sale 
                   
                    </select>
            </tr><tr><td></tr>
                
                <tr>
                    <input type=text name=title placeholder=Title>
                </tr>

                <tr>
                   
                    <input type=text size=20 name=author placeholder=Author>
                 <tr>   <td>
                    <input type=text name=fromprice size=10 placeholder=Price-From>
                    <td>
                    <input type=text name=toprice size=10 placeholder=Price-To>
                
            </table>
            <p>
                <input type=submit value="Search">
                

        </form>
</div>

<div class="w3-main" style="margin-left:250px">
<div class="w3-teal">
  <button class="w3-button w3-teal w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
    <h1>My Page</h1>
  </div>
</div>

<div class="w3-container">
   <%/*
         String cat = request.getParameter("cat");
         if ( cat == null)
          return;

         String cond = "1=1";

         if (!cat.equals("all") )
             cond = cond + " and cat = '" + cat + "'";

         String title = request.getParameter("title");

         if ( !title.equals(""))
            cond = cond + " and title like '%" + title + "%'";


         String author = request.getParameter("author");

         if ( !author.equals(""))
            cond = cond + " and author like '%" + author + "%'";


         String fromprice = request.getParameter("fromprice");

         if ( !fromprice.equals(""))
            cond = cond + " and price >= " + fromprice;

         String toprice = request.getParameter("toprice");

         if ( !toprice.equals(""))
            cond = cond + " and price <= " + toprice;
         

         request.setAttribute("cond", cond);

        */%>
</div>
   <//jsp:include  page="listbooks.jsp" flush="true"/>
</div>

<script>
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>
     
</body>
</html>



-->