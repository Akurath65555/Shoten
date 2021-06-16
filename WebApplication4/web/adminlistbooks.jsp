<jsp:useBean  id="user"  scope="session" class="com.beans.User"/>
<%@ page import="java.sql.*"%>
    <head>
        <style>
        input[type=button], input[type=submit], input[type=reset] {
                background-color: #80e05e;
                border: none;
                color: white;
                padding: 16px 32px;
                text-decoration: none;
                margin: 4px 2px;
                cursor: pointer;
                alignment-adjust: central;
              }
    body{ background: url("Images/adminhome.png");background-size:cover}
      #books {
          font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }

        #books td, #books th {
          border: 1px solid #ddd;
          padding: 8px;
        }

        #books tr:nth-child(even){background-color: rgba(186, 186, 186,.8);color: #dff7d2}
        #books tr:nth-child(odd){background-color: rgba(91, 91, 91,0.9);color: #daf260}
        #books tr:hover {background-color: black;color: white}

        #books th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: center;
          background-color: #1b8778;
          color: white;
          
        }
        </style>
        <title>Sold-List</title>
    </head>
    <body>
<h3><font color=white>List Of Books For Sale/Rent</font> </h3>

<table id="books">
    <tr>
        <th>ISBN
        <th>Title
        <th>Author
        <th>Publisher
        <th>category
        <th>Price
        <th>Quantity
        <th>SellerID
        <th>&nbsp;   
    </tr>
    <%

    

      Connection  con  = user.getConnection();
      PreparedStatement st= con.prepareStatement("SELECT * FROM trial_schema.sell_books");

      ResultSet rs = st.executeQuery();
      while (rs.next())
      {

    %>
    <tr>
        
            <!--<form action="addbook.jsp" sno=<%//=rs.getString(1)%>><input type="submit" name="add" value=<%//=rs.getString(1)%>>  <%//=rs.getString(1)%>Add TO Cart</form>
        -->
        
        <td><%=rs.getString("isbn")%>
        <td><%=rs.getString("author")%>
        <td><%=rs.getString("title")%>
        <td><%=rs.getString("pub")%>
        <td><%=rs.getString("cat")%>
        <td><%=rs.getString("price")%>
        <td><%=rs.getString("qty")%>
        <td><%=rs.getString("uid")%>
        <td><a href="deletebook.jsp?sno=<%=rs.getString("sno")%>" >Delete book from System </a></td>
            
    </tr>

    <%
      }
      rs.close();
      st.close();
      con.close();
    %>

</table>
    </body>





  
  