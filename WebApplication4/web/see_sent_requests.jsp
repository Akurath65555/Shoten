
<jsp:useBean id="user"  scope="session"  class="com.beans.User"/>
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
          background-color: #684a15;
          color: white;
          
        }
        h2{color:bottlegreen;font:700 16pt arial}
        h3{color:navy;font:700 12pt arial}
        td {font:10pt verdana}
        a {font:10pt verdana;color:bottlegreen}
        body {font:10pt verdana}
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
                <a href=logout.jsp class="w3-bar-item w3-button"> Logout </a>    -->      
                
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
            <h1>Past Orders</h1>
          </div></div>
        </div>
        <div class="w3-container">

            <%

              Connection con = user.getConnection();
              PreparedStatement ps = con.prepareStatement("Select * from trial_schema.printlog WHERE (bid = ? )");
              ps.setString(1, Integer.toString(user.getUserid()));

              ResultSet rs = ps.executeQuery();

            %>

            <table width="100%" cellpadding=2 border=1 id="books">
                <tr>
                    <th> Request ID
                    <th> Print SHop ID
                    <th> Print Details
                    <th> Pages
                    <th> Price
                    <th>Status
                    <th> Print Shop Details
                </tr>

                <%
                   while ( rs.next())
                   {
                %>

                <tr>
                    <!--<td> <a href="orderitems.jsp?ordid=<%=rs.getInt(1)%>&status=<%=rs.getString(5)%>"> <%=rs.getInt(1)%> </a>-->
                    <td> <%= rs.getString("pid")%>
                    <td> <%= rs.getString("sid")%>
                    <td> <%= rs.getString("printDetails")%>
                    <td> <%= rs.getString("pages")%>
                    <td> <%= rs.getString("quotedPrice")%>
                        <%String status =rs.getString("reqStatus");
                        if(status.equals("0")){%>
                    <td> Pending</td>
                        <%;}
                            else if(status.equals("1")){
                        %>
                    <td>Approved</td>  
                    <%;}
                            else{%>
                    <td>Cancelled</td>
                        <% ;}%>

                    <td> <a href="view_seller.jsp?sid=<%=rs.getString("sid")%>" >View</a>
                </tr>

                <%
                  }

                  rs.close();
                  ps.close();
                  con.close();

                %>
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






  <!--redundant Code...........................................
<html>
    <style>
    a.topic {font:700 11pt verdana;color:white}
    td {font:10pt verdana}
    th {font:700 10pt verdana;background-color:green;color:white}
    body{background-color: beige}
     td,  th {
              border: 1px solid #ddd;
              padding: 6px;
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
            h3{
                color: #cc4545; font-family: 'Trocchi', serif; font-size: 32px; font-weight: normal; line-height: 48px; margin: 0; 
            }
               
    </style>

    <body>
        
        <h3>Orders History </h3>

        

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


         /* Connection con = user.getConnection();
          PreparedStatement ps = con.prepareStatement("Select * from trial_schema.printlog WHERE (bid = ? )");
          ps.setString(1, request.getParameter("bid"));
         // ps.setString(2,"0");
          
          ResultSet rs = ps.executeQuery();
          
         
              
          */

          //ResultSet rs = st.executeQuery(cmd);

        %>

        <table width="100%" cellpadding=2 border=1>
            <tr>
                <th> Request ID
                <th> Print SHop ID
                <th> Print Details
                <th> Pages
                <th> Price
                <th>Status
                <th> Print Shop Details
            </tr>

            <%
              //while ( rs.next())
              // {
            %>

            <tr>
                <!--<td> <a href="orderitems.jsp?ordid=<%//=rs.getInt(1)%>&status=<%//=rs.getString(5)%>"> <%//=rs.getInt(1)%> </a>-->
               <!-- <td> <%//= rs.getString("pid")%>
                <td> <%//= rs.getString("sid")%>
                <td> <%//= rs.getString("printDetails")%>
                <td> <%//= rs.getString("pages")%>
                <td> <%//= rs.getString("quotedPrice")%>
                    <%//String status =rs.getString("reqStatus");
                    //if(status.equals("0")){%>
                <td> Pending</td>
                    <%//;}
                        //else if(status.equals("1")){
                    %>
                <td>Approved</td>  
                <%//;}
                      //  else{%>
                <td>Cancelled</td>
                    <%// ;}%>
                 
                <td> <a href="view_seller.jsp?sid=<%//=rs.getString("sid")%>" >View</a>
            </tr>

            <%
             // }

             // rs.close();
             // ps.close();
            //  con.close();

            %>
            


    </table>-->
            <!--<a href="gohome.jsp">HOME</a>-->




