<jsp:useBean  id="user" class="com.beans.User" scope="session" />

<%
   if  (  user.isLogged() )
       response.sendRedirect("home.jsp");
  else
      response.sendRedirect("login.html");
%>
