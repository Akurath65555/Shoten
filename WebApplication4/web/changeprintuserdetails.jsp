<jsp:useBean id="puser"  scope="session"  class="com.beans.PrintUser"/>

<jsp:setProperty name="puser" property="*" />


<%
   if (!puser.isLogged())
      response.sendRedirect("print_login.html");

%>


<html>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        body{ background: url("Images/texture-1362879_1280.jpg");background-size:cover}
        h2 { color: #efe3d5; font-family: 'Trocchi', serif; font-size: 45px; font-weight: normal; line-height: 48px; margin: 0; }
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
        h2{color:bottlegreen;font:700 16pt arial}
        h3{color:#ffffff;font:700 22pt arial}
        td {font:10pt verdana}
        a {font:10pt verdana;color:bottlegreen}
        body {font:10pt verdana;background-color: beige}
        input[type=button], input[type=submit], input[type=reset] {
                background-color: #38280f;
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
       
           
    <h1>Update Shop Details</h1>
<Center>
    <form action="changeprintuserdetails.jsp" method="post">
        <h3>Shop Details </h3>
        <table>
            <tr>
                <td>
                Email Address
                <td>
                <input type=text name=email size=30 value="<%=puser.getEmail()%>">
            </tr>

            <tr>
                <td>Shop Address
                <td>
                <textarea name=address rows=3 cols=30><%=puser.getAddress()%></textarea>
                </td>
            </tr>

            <tr>
                <td>
                Phone Number
                <td>
                <input type=text  name=phonenum  size=30 value="<%=puser.getPhonenum()%>">
            </tr>
            <tr>
                <td>
                Price Per page
                <td>
                <input type=text  name=ppp  size=30 value="<%=puser.getPpp()%>">
            </tr>
            <tr>
                <td>
                Shop Name
                <td>
                <input type=text  name=name  size=30 value="<%=puser.getName()%>">
            </tr>
        </table>

        <h3>Password </h3>

        <table>
            <tr>
                <td>
                New Password
                <td>
                <input type=password name=password size=20>
            </tr>
            <tr>
                <td>
                Confirm Password
                <td>
                <input type=password name=password2 size=20>
            </tr>

        </table>

        <p>


        <input type=submit value="Update Profile">
        
    </form>
</center>


    <%

      // do it if any invoked by itself
      //if ( request.getParameter("email") == null)
        //return;

      String res = puser.updateProfile( request.getParameter("password") );

      if ( res == null){
         
      %>
<center><font color=white>Profile Updated Successfully.</font></center>
      <%;}
      else{
          out.println("Error : " + res);}
      %>

<center><font color=white>Click <a href=printrequests.jsp>here</a> to continue...</font></center>
     



</body>
</html>   

















<!--
<html>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
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
        <ul>
             <li><a href="gohome.jsp">Home</a></li>       
            <li><a href="changeprofile.jsp">Update/See User Details</a></li>           
            <li><a href="querybooks.jsp">Search Books</a></li>
            <li><a href="ordershistory.jsp">Orders History</a></li>
            <li><a href="add.html">Sell/Rent a Book</a></li>
            <li><a href="view_sold_books.jsp">My Sales</a></li>
            <li><a href="printlist.jsp">Printing Shops Nearby</a></li>
            
            <li style="float:right"><a href=logout.jsp> Logout </a></li>
            
        </ul>
<center><h2>Change Profile </h2></center>
<Center>
    <form action="changeprofile.jsp" method="post">
        <h3>Personal Details </h3>
        <table>
            <tr>
                <td>
                Email Address
                <td>
                <input type=text name=email size=30 value=<%//=user.getEmail()%>>
            </tr>

            <tr>
                <td>Mailing Address
                <td>
                <textarea name="address" rows=3 cols=30><%//=user.getAddress()%></textarea>
                </td>
            </tr>

            <tr>
                <td>
                Phone Number
                <td>
                <input type=text  name=phone  size=30 value='<%//=user.getPhone()%>'>
            </tr>
        </table>

        <h3>Password </h3>

        <table>
            <tr>
                <td>
                New Password
                <td>
                <input type=password name=pwd size=20>
            </tr>
            <tr>
                <td>
                Confirm Password
                <td>
                <input type=password name=pwd2 size=20>
            </tr>

        </table>

        <p>


        <input type=submit value="Update Profile">
        
    </form>
</center>

    <%
/*
      // do it if any invoked by itself
      if ( request.getParameter("email") == null)
        return;

      String res = user.updateProfile( request.getParameter("pwd") );

      if ( res == null)
          out.println("Profile Updated Successfully.");
      else
          out.println("Error : " + res);

      out.println("Click <a href=home.jsp>here</a> to continue...");  
*/
    %>


</body>
</html>   
    
    
    
    
    
    
    
    
    