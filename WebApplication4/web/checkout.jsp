<%-- 
    Document   : checkout
    Created on : 9 Apr, 2019, 3:24:48 AM
    Author     : udit
--%>

<%@ page import="java.sql.*"%>
<jsp:useBean id="user" scope="session" class="com.beans.User" />
<%
    int amount = 0;
    
    
    String address = request.getParameter("address");
    String pay_met = request.getParameter("pay_met");
    Connection con = user.getConnection();
    String daddress = "";
    PreparedStatement ps = null;
    PreparedStatement ps1 = null;
    PreparedStatement ps2 = null;
    ps2 = con.prepareStatement("SELECT price FROM buy_books where buid = ? and isincart = ?");
    ps2.setString(1,Integer.toString(user.getUserid()));
    ps2.setString(2, Integer.toString(1));
    ResultSet rs2 = ps2.executeQuery();
    while(rs2.next())
    {
        amount+= Integer.parseInt(rs2.getString("price"));
    }
    
    if(address.equals("Use Default Address"))
    {
        ps1 = con.prepareStatement("SELECT address FROM users where userid = ?");
        ps1.setString(1,Integer.toString(user.getUserid()));
        ResultSet rs = ps1.executeQuery();
        if(rs.next())
        {
            daddress = rs.getString("address");
        }
        ps = con.prepareStatement("UPDATE trial_schema.buy_books set  daddress = ?, paymode= ? ,isincart = ? WHERE (buid = ? and isincart = ?)");
        ps.setString(1,daddress);
        ps.setString(2,pay_met);
        ps.setString(3,Integer.toString(0));
        ps.setString(4,Integer.toString(user.getUserid()));
        ps.setString(5,Integer.toString(1));
        ps.executeUpdate();
    }
    else
    {
        ps = con.prepareStatement("UPDATE trial_schema.buy_books set daddress =?, paymode=? ,isincart = ? WHERE (buid = ? and isincart = ?)");
        ps.setString(1,request.getParameter("daddress"));
        ps.setString(2,pay_met);
        ps.setString(3,Integer.toString(0));
        ps.setString(4,Integer.toString(user.getUserid()));
        ps.setString(5,Integer.toString(1));
        ps.executeUpdate();
    }
    
 %>
 
 <html>
     
     <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Page</title>
    </head>
    <body>
        <div class="page-wrap d-flex flex-row align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center">
                        <span class="display-1 d-block">Order Placed...</span>
                        <div class="mb-4 lead">
                            Your order has been placed and you can find your orders on <a href="ordershistory.jsp" class="btn btn-link">this</a> link..<br>                       
                            <a href = "home.jsp" class="btn btn-link">CLICK HERE TO GO HOME</a>
                        </div>
                        
                    </div>  
                </div>
            </div>
        </div>

        <%;%>
    </body>
 </html>     