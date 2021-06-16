<html>
    <jsp:useBean id="print" scope="page" class="com.beans.Printing" />
    <jsp:useBean id="user" scope="session" class="com.beans.User" />
        <jsp:setProperty name="printer" property="*" />
    <style>
    body{ background: url("Images/photo-1467951591042-f388365db261.jpeg");background-size:cover}
    h2{color:greenyellow;font:700 20pt arial}
    h4 {color:brown;font:700 11pt verdana}
    td {font:10pt verdana}
    a {font:10pt verdana;color:navy}
    td,  th {
              border: 1px solid #ddd;
              padding: 8px;
            }

             tr:nth-child(even){background-color: #f4a177;}
             tr:nth-child(odd){background-color: #e8c1bb;}

             tr:hover {background-color: #ddd;}

             th {
              padding-top: 12px;
              padding-bottom: 12px;
              text-align: left;
              background-color: #59112d;
              color: white;
            }
        h2{color:bottlegreen;font:700 16pt arial}
        h3{color:navy;font:700 12pt arial}
        td {font:10pt verdana}
        a {font:10pt verdana;color:bottlegreen}
        body {font:10pt verdana;background-color: beige}
        input[type=button], input[type=submit], input[type=reset] {
                background-color: #b54c74;
                border: none;
                color: white;
                padding: 16px 32px;
                text-decoration: none;
                margin: 4px 2px;
                cursor: pointer;
                alignment-adjust: central;
              }
               ul {
              list-style-type: none;
              margin: 0;
              padding: 0;
              overflow: hidden;
              background-color: #680b41;
            }

            li {
              float: left;
              border-right:1px solid #bbb;
            }

            li:last-child {
              border-right: none;
            }

            li a {
              display: block;
              color: white;
              text-align: center;
              padding: 14px 16px;
              text-decoration: none;
            }

            li a:hover:not(.active) {
              background-color: #111;
            }

            .active {
              background-color: #4CAF50;
            }

    </style>

    <body>
        
        
        
        <%  
        String act = request.getParameter("act");
        if(act!=null){
        if(act.equals("submit")){
            print.addPrint(user);%>
            
            Done Price=<%=print.getQuotedPrice()*print.getPages()%>
        <%
        }}
        %>

        <h2>New Print Request</h2>
        <hr>
    <center>
        <form action="requested.jsp?quotedPrice=<%=request.getParameter("quotedPrice")%>&sid=<%=request.getParameter("sid")%>" method="post">
            <table>
                <tr>
                    <td>
                    Print Details
                    <td>
                    <input type=text name=printDetails size=20>
                </tr>
                <tr>
                    <td>
                    Pages
                    <td>
                    <input type=text name=pages size=20>
                </tr>
                
                
            <p>

                <!--<a href="request_print.jsp?quotedPrice=<%//=request.getParameter("quotedPrice")%>&pages=<%//=request.getParameter("pages")%>&printDetails=printDetails&sid=<%//=request.getParameter("sid")%>&act=submit">-->
                    <input type=submit value="Send Reuest">
                <!--</a>-->
            <input type=reset value="Clear All">
            </p>
           
       </form>
                    <a href="printlist.jsp"><font color=white>Go Back</font></a>
        </center>
    </body>
</html>   
