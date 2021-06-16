<html>

    <style>
        input[type=button], input[type=submit], input[type=reset] {
                background-color: #80e05e;
                border: none;
                color: white;
                padding: 16px 32px;
                text-decoration: none;
                margin: 4px 2px;
                cursor: pointer;
                alignment-adjust: central;
              }
    body{ background: url("Images/adminhome.png");background-size:cover}
    
    h4 {color:brown;font:700 11pt verdana}
    td {font:700 10pt verdana}
    a {font:700 10pt verdana;color: red}
    h2 { color: #d1f9f4; font-family: 'Trocchi', serif; font-size: 45px; font-weight: normal; line-height: 48px; margin: 0; }
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
        <a href="firstpage.html"><input type="submit" value="Logout"></a>
        <center><h2>Admin Home</h2></center><br><br><br>
        <form action="adminhome.jsp" method="post" >
            <table>
                <tr>
                    <td>
                        <center><h2><font size="5pt">Select List to Display &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></h2></center>
                    <td> 
                    <select name="cat">
                        <option value="all">All
                        <option value="Users">Users
                        <option value="Books">Books 
                   
                    </select>
                   
                </tr>

                
            </table>
            <p>
                <input type=submit value="Search">
                

        </form>

        
        <%
        String act = request.getParameter("cat");
        if(act!=null){
            if(act.equals("Books")){
                %>
                <jsp:include page="adminlistbooks.jsp" flush="true"/>
                <%
            }
            else if(act.equals("Users")){
                %>
                <jsp:include page="adminlistusers.jsp" flush="true"/>
                <%
            }
        }
        
        %>

        
    </body>
</html>   