<%-- 
    Document   : deleteuser
    Created on : 8 Apr, 2019, 6:43:37 AM
    Author     : udit
--%>

<jsp:useBean id="admin" scope="session" class="com.beans.Admin" />
<%
    admin.banUser(request.getParameter("sno"));
    response.sendRedirect("adminhome.jsp?cat=Users");
%>