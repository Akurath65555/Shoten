<html>
    <head>Welcome</head>
    <body>
    <div style="font:700 11pt verdana" border=1>

        Welcome 
            <b>
                <jsp:useBean id="user" scope="session" class="com.beans.User" />
                <jsp:getProperty name="user" property="uname" />
            </b>
    </div>
    </body>
</html>

