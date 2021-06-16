<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<jsp:useBean id="book"  scope="session"  class="com.beans.Book"/>

<jsp:setProperty name="book" property="*" />

<%
   String res = request.getParameter("newprice");
   Connection con=book.getConnection();
   PreparedStatement ps =null;
   //out.println(res);
   //if(res.equals(""))
   
   
   
   
    if(res.equals(""))
    {
       ps =con.prepareStatement("UPDATE sell_books set isbn = ? ,title=?,author = ? ,pub = ? , cat = ?  ,qty = ? WHERE sno=?");
    ps.setString(1, request.getParameter("isbn"));
    ps.setString(2, request.getParameter("title"));
    ps.setString(3, request.getParameter("author"));
    ps.setString(4, request.getParameter("pub"));
    ps.setString(5, request.getParameter("cat"));
    //ps.setString(6, request.getParameter("price"));
    ps.setString(6, request.getParameter("qty"));
    ps.setString(7, request.getParameter("sno"));
    
    ps.executeUpdate();
    
          out.println("Book Details Updated Successfully.");
          response.sendRedirect("view_sold_books.jsp");
    } 
    else{
          

    
     ps =con.prepareStatement("UPDATE sell_books SET isbn = ? ,title=?,author = ? ,pub = ? , cat = ? ,price = ? ,qty = ? WHERE sno = ? ");
    ps.setString(1, request.getParameter("isbn"));
    ps.setString(2, request.getParameter("title"));
    ps.setString(3, request.getParameter("author"));
    ps.setString(4, request.getParameter("pub"));
    ps.setString(5, request.getParameter("cat"));
    ps.setString(6, request.getParameter("newprice"));
    ps.setString(7, request.getParameter("qty"));
    ps.setString(8, request.getParameter("sno"));
    
    ps.executeUpdate();
    
    out.println("Book Details Updated Successfully.");
          response.sendRedirect("view_sold_books.jsp");

    }
%>

