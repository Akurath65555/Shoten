<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <style>
                // <<td {font:10pt verdana}
                // th {font:700 10pt verdana}
                // h2 {font:700 16pt arial}
                //a {font:700 10pt verdana;color:darkgreen}
                body{ background: url("Images/texture-1362879_1280.jpg");background-size:cover}
                h2 { color: #3a2b04; font-family: 'Trocchi', serif; font-size: 45px; font-weight: normal; line-height: 48px; margin: 0; }
                h3{color: #3a2b04; font-family: 'Trocchi', serif; font-size: 32px; font-weight: normal; line-height: 48px; margin: 0; }
                //customers is a tag to style table 
                #customers {
                  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                  border-collapse: collapse;
                  width: 100%;
                }
                #customers td, #customers th {
                  border: 1px solid #ddd;
                  padding: 8px;
                }
                #customers tr:nth-child(even){background-color: #f2f2f2;}#customers tr:nth-child(odd){background-color: #c6a34f;}

                #customers tr:hover {background-color: #ddd;}

                #customers th {
                  padding-top: 12px;
                  padding-bottom: 12px;
                  text-align: left;
                  background-color: #a06e20;
                  color: white;
                }

                //container is a tag to represent Total amount on home.jsp
                #container {
                    background-color: #a06e20;
                    height: 40px;
                    width: 200px;
                    margin: 50px auto;
                    border: 3px dashed #701d4d;


                    /*shadow*/
                    -webkit-box-shadow: 10px 10px 10px #000;
                    -moz-box-shadow: 10px 10px 10px #000;
                    box-shadow: 10px 10px 10px #000;
                    alignment-adjust: central;

                    /*rounded corners*/
                    -webkit-border-radius: 20px;
                    -moz-border-radius: 20px;
                    border-radius: 20px;
                }
                // modifies the input buttons
                input[type=button], input[type=submit], input[type=reset] {
                    background-color: #a06e20;
                    border: none;
                    color: white;
                    padding: 16px 32px;
                    text-decoration: none;
                    margin: 4px 2px;
                    cursor: pointer;
                    alignment-adjust: central;
                  }
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
        #books tr:nth-child(odd){background-color: #e2c393;}
        #books tr:hover {background-color: #ddd;}

        #books th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #d3993f;
          color: white;
          
        }
        h3{
                color: black; font-family: 'Trocchi', serif; font-size: 32px; font-weight: normal; line-height: 48px; margin: 0; 
            }

        </style>
    </head>
<body>
    <jsp:useBean id="user" scope="session"  class="com.beans.User" />
    <jsp:useBean id="scart" scope="session"  class="com.beans.ShoppingCart" />
    <%@ page import="java.util.*"%>
    
    <%
      
      String act = request.getParameter("act");

      if ( act != null ){
        if( act.equals("Checkout")){
          response.sendRedirect("checkout.html");
        }   

        if ( act.equals("remove")){
            scart.remove( request.getParameter("sno"));
        //out.println(request.getParameter("sno")); // just a test case run
       }
      }

    %>

    <div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
        <div style="background-color: #a06e20"><button class="w3-bar-item w3-button w3-large" onclick="w3_close()">Close &times;</button></div>

                <!--<a href="changeprofile.jsp" class="w3-bar-item w3-button">Update/See User Details</a>
                <a href="querybooks.jsp" class="w3-bar-item w3-button">Search Books</a>
                <a href="ordershistory.jsp" class="w3-bar-item w3-button">Orders History</a>
                <a href="add.html" class="w3-bar-item w3-button">Sell/Rent a Book</a>
                <a href="printlist.jsp" class="w3-bar-item w3-button">Printing Shops Nearby</a>
                <a href="see_sent_requests.jsp" class="w3-bar-item w3-button" >View Print Requests</a>
                <a href="view_sold_books.jsp" class="w3-bar-item w3-button">My Sales</a>
                <a href=logout.jsp class="w3-bar-item w3-button"> Logout </a>    
                
                <a href="gohome.jsp" class="w3-bar-item w3-button">HOME</a>-->
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
            <div style="background-color: #a06e20">
                <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
                <div class="w3-container" >

                <h1>Home :  Shoten</h1>
                </div>
            </div>
        </div>

        <div class="w3-container">

            <center>
                <h2><br> Welcome <b><jsp:getProperty name="user" property="uname"/> </b> </h2>


                   <h3><br>Shopping Cart </h3>
            </center>
            <form action="home.jsp" method="get">

                <%
                ArrayList<String[]> Orders = scart.listOrder(user);

                if(Orders.size()>0){%>
                    <table id="books">  
                            <tr>
                                <th>ISBN
                                <th>Author
                                <th>Title
                                <th>Publisher
                                <th>Category
                                <th>Price                                     
                                <th>Quantity
                                <th>SellerID
                                <th>&nbsp;<th>&nbsp;
                            </tr>
                <%;}
                else{%>
                <center><h2><font color=white size="5pt">Your cart seems empty!!<a href="querybooks.jsp">Shop Now</a></h2></center>
                    <%;}
                    int total = 0;
                    
                    for(String[] Item :Orders){

                        total+=( Integer.parseInt(Item[6]) * Integer.parseInt(Item[7])) ;
                                              %>
                        
                            <tr>
                                <td><%=Item[1]%>
                                <td><%=Item[2]%>
                                <td><%=Item[3]%>
                                <td><%=Item[4]%>
                                <td><%=Item[5]%>
                                <td><%=Item[6]%>
                                <td><%=Item[7]%>
                                <td><%=Item[8]%>
                                <td align="center"><a href="home.jsp?act=remove&sno=<%=Item[0]%>" > Remove</a>
                                <td><a href="viewbookseller.jsp?sid=<%=Item[8]%>" >View Seller</a></td>
                            </tr>

                    <%
                    }
                
                    %>
                </table>
                <%if(Orders.size()>0){%>
                <div id="container" align="center"><font color=white>Amount Payable: Rs<%=total%></font></div>                            
                <p>
                    <center>
                        <input type=submit value="Checkout"  name="act">
                    </center>
                <%;}%>
            </form>
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
</html>






<!-- Below are some redundant unstylised codes ..basically the older versions ...-->





<!--<//%@page import="com.beans.Log"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <style>
       // <<td {font:10pt verdana}
       // th {font:700 10pt verdana}
       // h2 {font:700 16pt arial}
        //a {font:700 10pt verdana;color:darkgreen}
        body{ background: url("https://www.pixelstalk.net/wp-content/uploads/2016/06/Book-Desktop-Wallpapers-HD.jpg");background-size:cover}
        h2 { color: #efe3d5; font-family: 'Trocchi', serif; font-size: 45px; font-weight: normal; line-height: 48px; margin: 0; }
            #customers {
              font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }
            
            h3{
                color: #fff7f7; font-family: 'Trocchi', serif; font-size: 32px; font-weight: normal; line-height: 48px; margin: 0; 
            }

            #customers td, #customers th {
              border: 1px solid #ddd;
              padding: 8px;
            }

            #customers tr:nth-child(even){background-color: #f2f2f2;}#customers tr:nth-child(odd){background-color: #c974ab;}

            #customers tr:hover {background-color: #ddd;}

            #customers th {
              padding-top: 12px;
              padding-bottom: 12px;
              text-align: left;
              background-color: #680b41;
              color: white;
            }

                    ul {
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
            }
            
            #container {
                background-color: #e58b9f;
                height: 20px;
                width: 200px;
                margin: 50px auto;
                border: 3px dashed #701d4d;
                

                /*shadow*/
                -webkit-box-shadow: 10px 10px 10px #000;
                -moz-box-shadow: 10px 10px 10px #000;
                box-shadow: 10px 10px 10px #000;
                alignment-adjust: central;

                /*rounded corners*/
                -webkit-border-radius: 20px;
                -moz-border-radius: 20px;
                border-radius: 20px;
            }

            input[type=button], input[type=submit], input[type=reset] {
                background-color: #b54c74;
                border: none;
                color: white;
                padding: 16px 32px;
                text-decoration: none;
                margin: 4px 2px;
                cursor: pointer;
                alignment-adjust: central;
              }

        </style>
    </head>
    <//jsp:useBean id="user" scope="session"  class="com.beans.User" />
    <//jsp:useBean id="scart" scope="session"  class="com.beans.ShoppingCart" />
    <//%@ page import="java.util.*"%>
    
    <%/*
      //if(request.getParameter("back")==1)response.sendRedirect("querybooks.jsp");
      String act = request.getParameter("act");

      if ( act != null )
      {
       if( act.equals("Checkout"))
       {
          response.sendRedirect("checkout.html");
       }   

       if ( act.equals("remove"))
       {
        scart.remove( request.getParameter("sno"));
        //out.println(request.getParameter("sno"));
       }
       /*
       else 
        if ( act.equals("Update Cart"))
        {

          String isbn[] = (String []) request.getParameterValues("isbn");
          String qty[] = (String []) request.getParameterValues("qty");

          for (int i = 0 ;i < isbn.length ;i ++)
             scart.updateQty(isbn[i], Integer.parseInt( qty[i]));

        }
        
         if ( act.equals("Clear Cart"))
              scart.clearAll();
       } */// end of outer if
//      }


    %>
    <body>
         <ul>
                    
            <li><a href="changeprofile.jsp">Update/See User Details</a></li>
            
            <li><a href="querybooks.jsp">Search Books</a></li>
            <li><a href="ordershistory.jsp">Orders History</a></li>
            <li><a href="add.html">Sell/Rent a Book</a></li>
            <li><a href="view_sold_books.jsp">My Sales</a></li>
            <li><a href="printlist.jsp">Printing Shops Nearby</a></li>
            <li><a href="see_sent_requests.jsp?bid=<%//=Integer.toString(Log.loggedin_uid)%>" >View Print Requests</a></li>
            <li style="float:right"><a href=logout.jsp> Logout </a></li>
            
        </ul>
            
            
        
    <center>
        <h2><br> Welcome <b><//jsp:getProperty name="user" property="uname"/> </b> </h2>
           
                    
           <h3><br>Shopping Cart </h3></center>
                    <form action="home.jsp" method="get">
                   
                                    
                                <table id="customers">  
                                        <tr>
                                        <th>ISBN
                                        <th>Author
                                        <th>Title
                                        
                                        <th>Publisher
                                        <th>Category
                                        <th>Price                                     
                                        <th>Quantity
                                        <th>SellerID
                                        <th>&nbsp;<th>&nbsp;
                                        </tr>
                                        <%//jsp:useBean id="scart" scope="session" class="com.beans.ShoppingCart" /%>
                                        <%
                                         //com.beans.ShoppingCart order = new com.beans.ShoppingCart();                       
 /*                                        ArrayList<String[]> Orders = scart.listOrder();
                                         if(Orders==null)out.println("error");
                                         
                                         int total = 0;
                                                
                                         for(String[] Item :Orders)
                                         {
                                           //item = (com.beans.Item) itr.next();
                                           total+=( Integer.parseInt(Item[6]) * Integer.parseInt(Item[7])) ;*/
                                        %>

                                        <tr>
                                            <td><%//=Item[1]%>
                                            <td><%//=Item[2]%>
                                            <td><%//=Item[3]%>
                                            <td><%//=Item[4]%>
                                            <td><%//=Item[5]%>
                                            <td><%//=Item[6]%>
                                            <td><%//=Item[7]%>
                                            <td><%//=Item[8]%>
                                            <td align="center"><a href="home.jsp?act=remove&sno=<%//=Item[0]%>" > Remove</a>
                                            <td><a href="viewbookseller.jsp?sid=<%//=Item[8]%>" >View Seller</a></td>
                                        </tr>

                                        <%
                                         //}
                                        %>
                                        
                                     
                                        
                                        


                                    </table>
                                    <div id="container" align="center">Amount Payable: Rs<%//=total%></div>                            
                                        <p>
                                        <center><input type=submit value="Checkout"  name="act"></center>

                      </form>

    </body>
</html>-->
                                        
                                 