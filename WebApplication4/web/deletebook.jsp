<jsp:useBean id="admin" scope="session" class="com.beans.Admin" />

<%
    admin.removeBook(request.getParameter("sno"));
    response.sendRedirect("adminhome.jsp?cat=Books");
%>