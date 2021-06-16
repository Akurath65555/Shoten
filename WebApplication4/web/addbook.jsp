<jsp:useBean  id="shoppingcart"  class="com.beans.ShoppingCart"  scope="session" />
<jsp:useBean  id="user"  class="com.beans.User"  scope="session" />

<%
  // check whether user has logged in, otherwise send user to login page
  //out.println( user.isLogged());

  if (!user.isLogged())
   response.sendRedirect("login.html");

  // read data about item
  
  String  sno1 = request.getParameter("sno");
  out.println(sno1);
  
  shoppingcart.addItem(sno1,user);%>
  
<%
  
  response.sendRedirect("home.jsp");

%>

  