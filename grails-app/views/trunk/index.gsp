<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 3/28/2016
  Time: 12:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Trunk - The Grove</title>
</head>
<body>
You in da trunk boi
<sec:access expression="isAnonymous()">
    <form action='${request.contextPath}/login' method='POST'>
        <g:submitButton name="Submit" value="Login"/>
    </form>
    <form action='${request.contextPath}/user' method='POST'>
        <g:submitButton name="Submit" value="Register"/>
    </form>
</sec:access>

<sec:access expression="isAuthenticated()">
    <form action='${request.contextPath}/logout' method='POST'>
        <g:submitButton name="Submit" value="Logout"/>
    </form>
</sec:access>

</body>
</html>