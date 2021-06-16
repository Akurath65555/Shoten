
<jsp:useBean id="user"  scope="session"  class="com.beans.User"/>
<%@page import="java.sql.*"%>

<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
    a.topic {font:700 11pt verdana;color:white}
    td {font:10pt verdana}
    th {font:700 10pt verdana;background-color:green;color:white}
    body{background-color: beige}
    body{ background: url("Images/checkout.jpg");background-size:cover}
    h2 { color: #efe3d5; font-family: 'Trocchi', serif; font-size: 45px; font-weight: normal; line-height: 48px; margin: 0; }
    td,  th {
              border: 1px solid #ddd;
              padding: 8px;
            }

             tr:nth-child(even){background-color: #f2f2f2;}
             tr:nth-child(odd){background-color: #e5cf95;}

             tr:hover {background-color: #ddd;}

    th {
              padding-top: 12px;
              padding-bottom: 12px;
              text-align: left;
              background-color: #c48827;
              color: white;
            }
    //h2{color:bottlegreen;font:700 16pt arial}
    h3{color:navy;font:700 12pt arial}
    td {font:10pt verdana}
    a {font:10pt verdana;color: #ba953d}
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
        
        <!--<a href="gohome.jsp" class="w3-bar-item w3-button">HOME</a>
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
                  <h1>Orders History</h1></div></div>
         
        </div>


        <div class="w3-container">
    

        <%
          Connection con = user.getConnection();
          PreparedStatement ps = con.prepareStatement("Select * from trial_schema.buy_books WHERE (buid = ? and isincart = ?)");
          ps.setString(1, Integer.toString(user.getUserid()));
          ps.setString(2,"0");
          
          ResultSet rs = ps.executeQuery();          
        

        int count=0;
            
               while ( rs.next())
               {
                   if(count==0){
            %>
            <table width="100%" cellpadding=2 border=1>
            <tr>
                <th> ISBN
                <th> Author
                <th> Title
                <th> Publisher
                <th>Category
                <th> Price
                <th> Quantity
                <th> SellerID
                <th> Delivery Addresss
                <th> Payment Mode
            </tr><%;}%>

            <tr>
                <!--<td> <a href="orderitems.jsp?ordid=<%//=rs.getInt(1)%>&status=<%//=rs.getString(5)%>"> <%//=rs.getInt(1)%> </a>-->
                <td> <%= rs.getString(1)%>
                <td> <%= rs.getString(2)%>
                <td> <%= rs.getString(3)%>
                <td> <%= rs.getString(4)%>
                <td> <%= rs.getString(5)%>
                <td> <%= rs.getString(6)%>
                <td> <%= rs.getString(7)%> 
                <td> <%= rs.getString(8)%>
                <td> <%= rs.getString("daddress")%>
                <td> <%= rs.getString("paymode")%>
                
            </tr>

            <%
              count++;}
               

              rs.close();
              ps.close();
              con.close();
              if(count==0){
            %>
            <center><h2><font color="brown" size="6pt">You haven't ordered anything yet ....<a href="querybooks.jsp"><font size=6pt>Order Now!!</font></a></font></h2></center>
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



<!--Redundant Codes-->

<!--Redundant Codes

<!-- <//%@page import="com.beans.Log"%>
<//jsp:useBean id="user"  scope="session"  class="com.beans.User"/>
<//%@page import="java.sql.*"%>

<html>
    <style>
    a.topic {font:700 11pt verdana;color:white}
    td {font:10pt verdana}
    th {font:700 10pt verdana;background-color:green;color:white}
    body{background-color: beige}
    body{ background: url("https://images.unsplash.com/photo-1467951591042-f388365db261?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");background-size:cover}
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
    </style>

    <body>
        <h1>Orders History </h1>

        <div style="background-color:green}">

        <table width="100%">

            <tr align="center">
                <td>
                <a class="topic" href="ordershistory.jsp?type=a">All Orders </a>
                <td>
                <a class="topic" href="ordershistory.jsp?type=n">New Orders </a>
                <td>
                <a class="topic" href="ordershistory.jsp?type=p">Processed Orders</a>
                <td>
                <a class="topic" href="ordershistory.jsp?type=d">Dispatched Orders</a>
                <td>
                <a class="topic" href="ordershistory.jsp?type=c">Completed Orders </a>
            </tr>
        </table>
        </div>

        <%
         /* String type = request.getParameter("type");
          String  cmd = "select ordid, orddate, totamt,decode(status,'n','New','p','Processed','d','Dispatched','Completed') textstatus,status from orders where userid = " + user.getUserid();

          if ( type != null)
          {

          if ( type.equals("n"))
             cmd += " and status = 'n'";
          else
            if ( type.equals("p"))
              cmd += " and status = 'p'";
          else
            if ( type.equals("d"))
              cmd += " and status = 'd'";
            else
              if ( type.equals("c"))
                 cmd +=  " and status = 'c'";

          }*/


          /*Connection con = user.getConnection();
          PreparedStatement ps = con.prepareStatement("Select * from trial_schema.buy_books WHERE (buid = ? and isincart = ?)");
          ps.setString(1, Integer.toString(Log.loggedin_uid));
          ps.setString(2,"0");
          
          ResultSet rs = ps.executeQuery();
          */
         
              
          

          //ResultSet rs = st.executeQuery(cmd);

        %>

        <table width="100%" cellpadding=2 border=1>
            <tr>
                <th> ISBN
                <th> Author
                <th> Title
                <th> Publisher
                <th>Category
                <th> Price
                <th> Quantity
                <th> SellerID
            </tr>

            <%
               //while ( rs.next())
               //{
            %>

            <tr>-->
                <!--<td> <a href="orderitems.jsp?ordid=<//%=rs.getInt(1)%>&status=<//%=rs.getString(5)%>"> <%//=rs.getInt(1)%> </a>-->
             <!--   <td> <//%= rs.getString(1)%>
                <td> <//%= rs.getString(2)%>
                <td> <//%= rs.getString(3)%>
                <td> <//%= rs.getString(4)%>
                <td> <//%= rs.getString(5)%>
                <td> <//%= rs.getString(6)%>
                <td> <//%= rs.getString(7)%> 
                <td> <//%= rs.getString(8)%>-->
            <!--</tr>--><%
             // }

            //  rs.close();
             // ps.close();
             // con.close();

            %>
            <!--
    </table>
            <a href="home.jsp">HOME</a>


-->



            
    


  