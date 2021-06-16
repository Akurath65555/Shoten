<jsp:useBean id="book"  scope="session"  class="com.beans.Book"/>
<jsp:useBean id="user" scope="session" class="com.beans.User" />

<jsp:setProperty name="book" property="*" />

<%
   book.setPrice(request.getParameter("price"));

%>

<html>
    <style>
    h2{color: #491702;font:700 38pt arial}
    h3{color: #423207;font:700 25pt arial}
    td {font:10pt verdana}
    a {font:10pt verdana;color: #491702}
    body{font:10pt verdana; background: url("Images/texture-1362879_1280.jpg");background-size:cover}
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
               td,  th {
              border: 1px solid #ddd;
              padding: 8px;
            }

             tr:nth-child(even){background-color: #d6b786;}
             tr:nth-child(odd){background-color: #c48827;}

             tr:hover {background-color: #ddd;}

             th {
              padding-top: 12px;
              padding-bottom: 12px;
              text-align: left;
              background-color: #59112d;
              color: white;
            }
    </style>

<body>

    <h2>Change Book Details</h2>
    <form action="updatedBook.jsp?sno=<%=request.getParameter("sno")%>" method="post"><center>
            <h3>Enter Details to Change</h3>
        <table>
            <tr>
                <td>
                ISBN
                <td>
                <input type=text name=isbn size=30 value <%=book.getIsbn()%> >
            </tr>

            <tr>
                <td>Title
                <td>
                    <input type=text name=title size=30 value <%=book.getTitle()%> >
                </td>
            </tr>

            <tr>
                <td>
                Author
                <td>
                <input type=text  name=author  size=30 value <%=book.getAuthor()%>>
            </tr>
            <tr>
                <td>
                Publisher
                <td>
                <input type=text  name=pub  size=30 value <%=book.getPub()%> >
            </tr>
            <tr>
                <td>
                Category
                <td>
                <input type=text  name=cat  size=30 value <%=book.getCat()%> >
            </tr>
            <tr>
                <td>
                Price
                <td>
                <input type=text  name=newprice  size=30 value <%=book.getPrice()%> >
            </tr>
            <tr>
                <td>
                Quantity
                <td>
                <input type=text  name=qty  size=30 value <%=book.getQty()%> >
            </tr>
            
        </table>

        

        <p>


        <input type=submit value="Update Book">
        <input type=reset value="Reset"> <br><a href="gohome.jsp"><font color=white size="5pt">Home</font></a>
        <br><br><br><br><br><font color=white size="3pt">Instructions: Enter only the fields you want to modify leave other fields as is</font>
        </center>
    </form>


    <%

      // do it if any invoked by itself
      if ( request.getParameter("title") == null)
        return;
      if ( request.getParameter("author") == null)
        return;
      if ( request.getParameter("pub") == null)
        return;
      if ( request.getParameter("cat") == null)
        return;
      if ( request.getParameter("price") == null)
        return;
      if ( request.getParameter("qty") == null)
        return;


    %>


</body>
</html>   