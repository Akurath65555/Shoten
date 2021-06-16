<%-- 
    Document   : view_seller
    Created on : 7 Apr, 2019, 10:45:06 PM
    Author     : udit
--%>
<%@ page import="java.sql.*"%>

<jsp:useBean id="Sid" scope="session" class="com.beans.PrintUser" />
<!--
<%
  /* Connection con = Sid.getConnection();
    PreparedStatement ps = con.prepareStatement("SELECT * FROM trial_schema.print_user WHERE puid = ?");
    ps.setString(1, request.getParameter("sid"));
    
    ResultSet rs = ps.executeQuery();
    
    if(rs.next()*/
    //{
        %>
        <p> NAME         : <%//=rs.getString("name") %> </p>
        <p> ADDRESS      : <%//=rs.getString("address") %> </p>
        <p> CONTACT INFO : <%//=rs.getString("phonenum") %> </p>
        <p> EMAIL         : <%//=rs.getString("email") %> </p>
        
        
        
    <%//}%><a href="gohome.jsp">HOME</a>
    
    -->
   <%-- 
    Document   : view_seller
    Created on : 7 Apr, 2019, 10:45:06 PM
    Author     : udit
--%>

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
          width: 30%;
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

<%
    Connection con = Sid.getConnection();
    PreparedStatement ps = con.prepareStatement("SELECT * FROM trial_schema.print_user WHERE puid = ?");
    ps.setString(1, request.getParameter("sid"));
    
    ResultSet rs = ps.executeQuery();
    
    if(rs.next())
    {
        %>
        <center><br><br>
        <table id="books">
            <tr><th>Seller Details</th><th>&nbsp;
        <tr> <td>NAME         : <td><%=rs.getString("name") %> </tr>
        <tr> <td>ADDRESS      : <td><%=rs.getString("address") %></tr>
        <tr> <td>CONTACT INFO : <td><%=rs.getString("phonenum") %> </tr>
        <tr> <td>EMAIL         : <td><%=rs.getString("email") %> </tr>
        </table></center>   
        
        
    <%}%>
    <center><br><form action="printlist.jsp" method="post"><input type="submit" value="Back to Search"></form></center>
    
    
   