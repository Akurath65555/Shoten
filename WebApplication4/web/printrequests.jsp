<jsp:useBean id="printer" scope="session" class="com.beans.Printing" />
<jsp:useBean id="puser" scope="session" class="com.beans.PrintUser" />
<%@page import="java.sql.*"%>


<!DOCTYPE html>

<html>
    <style>
    a.topic {font:700 11pt verdana;color:white}
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
    <body>
         <a href='printlogout.jsp'><input type=submit value="Logout"></a>
         <a href='changeprintuserdetails.jsp'><input type=submit value="My Shop Details"></a>
    <center><br>
            <h2> Welcome  </h2>


               <h3><br>Print User Home </h3>
    </center><br><h3><font color=white>Pending Print Requests</font></h3>
    <%
        
        String act = request.getParameter("act");
        String pid = request.getParameter("pid");

      if ( act != null )
      {
       if( act.equals("reject"))
       {
          printer.Cancel(pid);
       }   

       if ( act.equals("confirm"))
       {
         printer.Confirm(pid);
       }}
      %>
<table width="100%" cellpadding=2 border=1 id="books">
            
<%
          Connection con = printer.getConnection();
          PreparedStatement ps = con.prepareStatement("Select * from trial_schema.printlog WHERE (reqStatus = ? and sid = ?)");
          ps.setString(1, Integer.toString(0));
          ps.setString(2, Integer.toString(puser.getPuid()));
          //ps.setString(1,"0");
          
          ResultSet rs = ps.executeQuery();
          int count=0;
          //ResultSet temp =rs;
          //if(temp.next()){
          while(rs.next())
          {
              if(count==0){
%>          
        <tr>
                <th> Print Details
                <th> Quoted Price
                <th> Pages
                <th>&nbsp;
                <th>&nbsp;
            </tr><%;}%>
        <tr>
            <td> <%= rs.getString("printDetails") %>
            <td> <%= rs.getString("quotedPrice") %>
            <td> <%= rs.getString("pages") %>
            <td> <a href = "printrequests.jsp?act=reject&pid=<%=rs.getString("pid")%>">Reject</a>     
            <td> <a href = "printrequests.jsp?act=confirm&pid=<%=rs.getString("pid")%>">Confirm</a>     

        </tr>

     <%
              count++;}

              rs.close();
              ps.close();
              con.close();
              if(count==0){
     %>
     <h2>No requests to be approved</h2><%;}%>
</table><br><br>
    <form action="pastprintorders.jsp" method="post">
        <input type="submit" value="View Past Orders">
    </form>
   
    
    </body>

</html>


