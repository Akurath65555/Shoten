<jsp:useBean  id="user"  scope="session" class="com.beans.User"/>
<%@ page import="java.sql.*"%>
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
        <title>Sold-List</title>
    </head>
    <body>
<h3>Search Results </h3>

<table id="books">
    <tr>
        <th>&nbsp;
        <th>ISBN
        <th>Title
        <th>Author
        <th>Publisher
        <th>category
        <th>Price
        <th>Quantity
        <th>SellerID
        <th>View Seller
    </tr>
    <%

      String cond = (String) request.getAttribute("cond");
      if ( cond == null)
         cond = "1 = 1";

      Connection  con  = user.getConnection();
      Statement st= con.createStatement();

      ResultSet rs = st.executeQuery("SELECT sno,isbn,title,author,pub,cat,price,qty,uid FROM trial_schema.sell_books where "+cond);
      while (rs.next())
      {     

    %>
    <tr>
        <td>
            <!--<form action="addbook.jsp" sno=<%=rs.getString(1)%>><input type="submit" name="add" value=<%=rs.getString(1)%>>  <%=rs.getString(1)%>Add TO Cart</form>
        -->
        <a href="addbook.jsp?sno=<%=rs.getString("sno")%>" >Add TO Cart </a>
        <td><%=rs.getString("isbn")%>
        <td><%=rs.getString("title")%>
        <td><%=rs.getString("author")%>
        <td><%=rs.getString("pub")%>
        <td><%=rs.getString("cat")%>
        <td><%=rs.getString("price")%>
            
        <td><%=rs.getString("qty")%>
        <td><%=rs.getString("uid")%>
        <td><a href="viewbookseller.jsp?sid=<%=rs.getString("uid")%>" >View Seller</a>
            
    </tr>

    <%
      }
      rs.close();
      st.close();
      con.close();
    %>

</table>
    </body>





  
  