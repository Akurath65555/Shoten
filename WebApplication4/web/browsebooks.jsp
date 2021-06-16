<%@page import="com.beans.Log"%>
<html>
<style>
h2{color:navy;font:700 20pt arial}
h4 {color:brown;font:700 11pt verdana}
td {font:10pt verdana}
a {font:12pt verdana;color:navy}
body{background-color: beige}

</style>

<body>
<%//if(Log.loggedin_uid==0)response.sendRedirect("login.html?fail=failed");%>
<%//if(Log.loggedin_uid!=0)%>
<form action="querybooks.jsp?cond=1=1" method="post" >
  

<a href="querybooks.jsp">Query Books </a> &nbsp;&nbsp;<!--redirect query to querybooks-->
<a href="gohome.jsp">Home </a>

</form>

<%/*;
 String cat = request.getParameter("cat");
 if ( cat == null)
    request.setAttribute("cond","1=1");
else
  if (!cat.equals("all") )
   request.setAttribute("cond", "cat='" + cat + "'");
 

%>
 
<jsp:include  page="listbooks.jsp" flush="true"/>


</body>
</html>   