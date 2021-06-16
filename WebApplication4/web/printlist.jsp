<%-- 
    Document   : printlist
    Created on : 7 Apr, 2019, 9:55:52 PM
    Author     : udit
--%>

<jsp:useBean id="printer" scope="session" class="com.beans.PrintUser" />
<%@page import="java.sql.*"%>




<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
    body{background-color:beige}
    h2{color:greenyellow;font:700 20pt arial}
    h4 {color:brown;font:700 11pt verdana}
    td {font:10pt verdana}
    a {font:10pt verdana;color:navy}
    body{ background: url("Images/photo-1467951591042-f388365db261.jpeg");background-size:cover}
        h2 { color: #efe3d5; font-family: 'Trocchi', serif; font-size: 45px; font-weight: normal; line-height: 48px; margin: 0; }
        td,  th {
              border: 1px solid #ddd;
              padding: 8px;
            }

             tr:nth-child(even){background-color: #f4a177;}
             tr:nth-child(odd){background-color: #e8c1bb;}

             tr:hover {background-color: #ddd;}

             th {
              padding-top: 12px;
              padding-bottom: 12px;
              text-align: left;
              background-color: #59112d;
              color: white;
            }
        h2{color:bottlegreen;font:700 16pt arial}
        h3{color:navy;font:700 12pt arial}
        td {font:10pt verdana}
        a {font:10pt verdana;color:bottlegreen}
        body {font:10pt verdana;background-color: beige}
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

    <body>
            <div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
                <button class="w3-bar-item w3-button w3-large" onclick="w3_close()">Close &times;</button>
               <!-- <a href="gohome.jsp" class="w3-bar-item w3-button">HOME</a>
                <a href="changeprofile.jsp" class="w3-bar-item w3-button">Update/See User Details</a>
                <a href="querybooks.jsp" class="w3-bar-item w3-button">Search Books</a>
                <a href="ordershistory.jsp" class="w3-bar-item w3-button">Orders History</a>
                <a href="add.html" class="w3-bar-item w3-button">Sell/Rent a Book</a>
                <a href="printlist.jsp" class="w3-bar-item w3-button">Printing Shops Nearby</a>
                <a href="see_sent_requests.jsp" class="w3-bar-item w3-button" >View Print Requests</a>
                <a href="view_sold_books.jsp" class="w3-bar-item w3-button">My Sales</a>
                <a href=logout.jsp class="w3-bar-item w3-button"> Logout </a>  -->
                
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
                <div class="w3-teal"><div style="background-color: #a06e20">
                  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
                  <div class="w3-container">
                    <h1>Available Printing Shops</h1>
                  </div></div>
                </div>



                <div class="w3-container">

                    
                        <%
                                  Connection con = printer.getConnection();
                                  PreparedStatement ps = con.prepareStatement("Select * from trial_schema.print_user ");


                                  ResultSet rs = ps.executeQuery();
                                  int count=0;
                                  while(rs.next())
                                  {
                                      if(count==0){
                        %>          
                        <table width="100%" cellpadding=2 border=1>
                        <tr>
                            <th> Print Shop
                            <th> Price Per Page
                            <th> Address
                            <th> Email
                            <th> Contact Info
                            <th> Request                                   

                        </tr><%;}%>
                        <tr>
                            <td> <%= rs.getString("name") %>
                            <td> <%= rs.getString("ppp") %>
                            <td> <%= rs.getString("address") %>
                            <td> <%= rs.getString("email") %>
                            <td> <%= rs.getString("phonenum") %>


                            <td> <a href = "request_print.jsp?sid=<%=rs.getString("puid")%>&quotedPrice=<%=rs.getString("ppp")%>" >Request Print</a>     


                        </tr>

                        <%
                                 count++;}

                                 rs.close();
                                 ps.close();
                                 con.close();
                                 if(count==0){
                        %>
                        <center><h2><font color="brown" size="6pt">There are no printing shops available now ....<a href="gohome.jsp"><font size=6pt>Plaese try again</font></a></font></h2></center>
                        <%;}%>
                        </table>


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



<!--Redundant Code...........................-->

<!--

<!DOCTYPE html>

<html>
    <style>
    a.topic {font:700 11pt verdana;color:white}
    td {font:10pt verdana}
    th {font:700 10pt verdana;background-color:green;color:white}
    body{background-color: beige}
    </style>
    <body>
    <%
        
        //String act = request.getParameter("act");
        //String pid = request.getParameter("pid");

      /*if ( act != null )
      {
       if( act.equals("reject"))
       {
          printer.Cancel(pid);
       }   

       if ( act.equals("confirm"))
       {
         printer.Confirm(pid);
       }}*/
        %>
<table width="100%" cellpadding=2 border=1>
            <tr>
                <th> Print Shop
                <th> Price Per Page
                <th> Address
                <th> Email
                <th> Contact Info
                <th> Request                                   
                
            </tr>
<%
          /*Connection con = printer.getConnection();
          PreparedStatement ps = con.prepareStatement("Select * from trial_schema.print_user ");
          //ps.setString(1, Integer.toString(Log.loggedin_uid));
         // ps.setString(1,"0");
          
          ResultSet rs = ps.executeQuery();
          
          while(rs.next())*/
         // {
%>          

<tr>
    <td> <%//= rs.getString("name") %>
    <td> <%//= rs.getString("ppp") %>
    <td> <%//= rs.getString("address") %>
    <td> <%//= rs.getString("email") %>
    <td> <//%= rs.getString("phonenum") %>
    
        
    <td> <a href = "request_print.jsp?sid=<%//=rs.getString("puid")%>&quotedPrice=<%//=rs.getString("ppp")%>" >RequestPrint</a>     
    
        
</tr>

     <%
/*              }

              rs.close();
              ps.close();
              con.close();*/

     %>
    </table><a href="gohome.jsp">HOME</a>
    </body>

</html>
-->

