
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <style>
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
        #books tr:nth-child(odd){background-color: #e2c393;}
        #books tr:hover {background-color: #ddd;}

        #books th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #d3993f;
          color: white;
          
        }
        </style>
        <title>Sold-List</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <%@page import="java.util.Iterator"%>
        <%@page import="java.util.ArrayList"%>
        <jsp:useBean id="user" scope="session" class="com.beans.User" />
        <jsp:useBean id="book" scope="session" class="com.beans.Book" />
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
            <a href=logout.jsp class="w3-bar-item w3-button"> Logout </a>-->
            
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

    <div class="w3-teal"><div style="background-color: #a37525">
      <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
      <div class="w3-container">
        <h1>Books put on Sale/Rent By Me</h1>
      </div></div>
    </div>
    
    <div class="w3-container">
        <table id="books">
                
            
                <%
                int count=0;
                Connection  con  = user.getConnection();
                PreparedStatement st= con.prepareStatement("SELECT * FROM trial_schema.sell_books where uid = ?");
                st.setString(1,Integer.toString(user.getUserid()));
                ResultSet rs = st.executeQuery();
                 while (rs.next()){  
                     if(count==0){
                %>
                <tr>
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>&nbsp;
                 </tr> <%;}%>
                <tr>
                    <td><%=rs.getString("isbn") %></td>
                    <td><%=rs.getString("title") %></td>
                    <td><%=rs.getString("author") %></td>
                    <td><%=rs.getString("pub") %></td>
                    <td><%=rs.getString("cat") %></td>
                    <td><%=rs.getString("price") %></td>
                    <td><%=rs.getString("qty") %></td>
                    <td><a href="updateBook.jsp?sno=<%=rs.getString("sno")%>&isbn==<%=rs.getString("isbn")%>&title==<%=rs.getString("title")%>&author==<%=rs.getString("author")%>&pub==<%=rs.getString("pub")%>&cat==<%=rs.getString("cat")%>&price=<%=rs.getString("price")%>&qty==<%=rs.getString("qty")%>" >Update Details</a>
            
                </tr>
                <%count++;}
                if(count==0){%>
                <center><h2><font color="brown" size="6pt">You have no books put for sale or rent ....<a href="add.html"><font size=6pt>Try Selling Now</font></a></font></h2></center>
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




<!-- redundant code.....previous version-->

<!--
<%//@page import="com.beans.Log"%>
<%//@page import="java.sql.PreparedStatement"%>
<%//@page import="java.sql.ResultSet"%>
<%//@page import="java.sql.Statement"%>
<%//@page import="java.sql.Connection"%>
<html>
    <head>
        <style>
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

        #books tr:hover {background-color: #ddd;}

        #books th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #4CAF50;
          color: white;
        }
        </style>
        <title>Sold-List</title>
    </head>
    <body>
        <%//@page import="java.util.Iterator"%>
        <%//@page import="java.util.ArrayList"%>

        <//jsp:useBean id="book" scope="session" class="com.beans.Book" />
        
        

            <table id="books">
                <tr>
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>&nbsp;
                 </tr> 

                <%
            // ArrayList<String[]> List = book.sold_books();
             //if(List!=null)System.out.println("Error");
             /*Iterator<String[]> iterator = List.iterator();  // Iterator interface
             int count=0;*/
             //for (String[] Book : List)
             //{
             //String[] Book = List.get(count);
             //count++; */
              
      /*
                Connection  con  = book.getConnection();
                PreparedStatement st= con.prepareStatement("SELECT * FROM trial_schema.sell_books where uid = ?");
                st.setString(1,Integer.toString(Log.loggedin_uid));
                ResultSet rs = st.executeQuery();
      while (rs.next())
      {     
              */
             %>
             <tr><td><%//=rs.getString("isbn") %></td>
                 <td><%//=rs.getString("title") %></td>
                 <td><%//=rs.getString("author") %></td>
                 <td><%//=rs.getString("pub") %></td>
                 <td><%//=rs.getString("cat") %></td>
                 <td><%//=rs.getString("price") %></td>
                 <td><%//=rs.getString("qty") %></td>
                 <td><a href="updateBook.jsp?sno=<%//=rs.getString("sno")%>&isbn==<%//=rs.getString("isbn")%>&title==<%//=rs.getString("title")%>&author==<%//=rs.getString("author")%>&pub==<%//=rs.getString("pub")%>&cat==<%//=rs.getString("cat")%>&price=<%//=rs.getString("price")%>&qty==<%//=rs.getString("qty")%>" >Update Details</a>
            
             </tr>
             <%
             //}
               
            %>
            
            </table><a href="gohome.jsp">HOME</a>
    </body>
</html>
