<%-- 
    Document   : adminlistusers
    Created on : 8 Apr, 2019, 6:34:37 AM
    Author     : udit
--%>

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
        <title>Users</title>
    </head>
    <body>
        <h3><font color=white>List Of Users Registered</font> </h3>

<table id="books">
    <tr>
        <th>USERID
        <th>USERNAME
        <th>EMAIL
        <th>ADDRESS
        <th>CONTACT INFO
       
        <th>&nbsp;   
    </tr>
    <%

    
      Connection  con  = user.getConnection();
      PreparedStatement st= con.prepareStatement("SELECT * FROM trial_schema.users");

      ResultSet rs = st.executeQuery();
      
      while (rs.next())
      {

    %>
    <tr>
           
        <td><%=rs.getString("userid")%>
        <td><%=rs.getString("uname")%>
        <td><%=rs.getString("email")%>
        <td><%=rs.getString("address")%>
        <td><%=rs.getString("phone")%>
        
        <td><a href="deleteuser.jsp?sno=<%=rs.getString("userid")%>" >Delete User from System </a></td>
            
    </tr>

    <%
      }
      rs.close();
      st.close();
      con.close();
    %>

</table>
    </body>
