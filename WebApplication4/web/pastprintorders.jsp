<%-- 
    Document   : pastprintorders
    Created on : 9 Apr, 2019, 5:20:45 AM
    Author     : udit
--%>


<jsp:useBean id="printer" scope="session" class="com.beans.Printing" />
<jsp:useBean id="puser" scope="session" class="com.beans.PrintUser" />
<%@page import="java.sql.*"%>

<html>
    <head>
        <style>a.topic {font:700 11pt verdana;color:white}
    td {font:10pt verdana}
    th {font:700 10pt verdana;background-color:green;color:white}
    //body{background-color: beige}
    #books {
          font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }

        #books td, #books th {
          border: 1px solid #ddd;
          padding: 8px;
        }

        #books tr:nth-child(even){background-color: #dae1e5;}
        #books tr:nth-child(odd){background-color: #92c8e8;}
        #books tr:hover {background-color: #ddd;}

        #books th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #65b0d8;
          color: white;
          
        }
        input[type=button], input[type=submit], input[type=reset] {
                background-color: #51addb;
                border: none;
                color: white;
                padding: 16px 32px;
                text-decoration: none;
                margin: 4px 2px;
                cursor: pointer;
                alignment-adjust: central;
              }
    body{ background: url("Images/printhome.jpg");background-size:cover}
    h2 { color: #3a2b04; font-family: 'Trocchi', serif; font-size: 45px; font-weight: normal; line-height: 48px; margin: 0; }
            #customers {
              font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }
            
            h3{
                color: #3a2b04; font-family: 'Trocchi', serif; font-size: 32px; font-weight: normal; line-height: 48px; margin: 0; 
            }
</style>
    </head><h3><font color= white > Confirmed Orders :</font></h3>
   
    <table width="100%" cellpadding=2 border=1 id="books">
            <tr>
                <th> Print Details
                <th> Quoted Price
                <th> Pages
                  
                
            </tr>
<%
          Connection con = printer.getConnection();
          PreparedStatement ps = con.prepareStatement("Select * from trial_schema.printlog WHERE (reqStatus = ? and sid = ?)");
          ps.setString(1, Integer.toString(1));
          ps.setString(2, Integer.toString(puser.getPuid()));
          //ps.setString(1,"0");
          
          ResultSet rs = ps.executeQuery();
          //ResultSet temp =rs;
          //if(temp.next()){
          while(rs.next())
          {
%>          

<tr>
    <td> <%= rs.getString("printDetails") %>
    <td> <%= rs.getString("quotedPrice") %>
    <td> <%= rs.getString("pages") %>
        
</tr>

     <%
              }//}

              rs.close();
              ps.close();
              con.close();

     %>
    </table><br><br><br>
    <h3><font color= white >Rejected Requests :</font></h3>
    
    <table width="100%" cellpadding=2 border=1 id="books">
            <tr>
                <th> Print Details
                <th> Quoted Price
                <th> Pages
                
            </tr>
<%
          Connection con1 = printer.getConnection();
          PreparedStatement ps1 = con1.prepareStatement("Select * from trial_schema.printlog WHERE (reqStatus = ? and sid = ?)");
          ps1.setString(1, Integer.toString(2));
          ps1.setString(2, Integer.toString(puser.getPuid()));
          //ps.setString(1,"0");
          
          ResultSet rs1 = ps1.executeQuery();
          //ResultSet temp =rs;
          //if(temp.next()){
          while(rs1.next())
          {
%>          

<tr>
    <td> <%= rs1.getString("printDetails") %>
    <td> <%= rs1.getString("quotedPrice") %>
    <td> <%= rs1.getString("pages") %>
    
        
</tr>

     <%
              }//}

              rs.close();
              ps.close();
              con.close();

     %>
    </table><br><br><br>
    <a href="printrequests.jsp"><input type="submit" value="Pending"></a>
 
    
</html>