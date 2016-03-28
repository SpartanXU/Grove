<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 3/28/2016
  Time: 12:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<!-- only allows users who haven't logged in to the page to register as a new user,
 also allows people to login with an already registered account-->
<sec:access expression="isAnonymous()">
    <g:form action="createUserForm">
        User Name:<g:textField name="username"/>NOTE: Must be at least 4 characters long.<br/>
        Password:<g:textField name="password"/><br/>
        <g:submitButton name="Submit"/>
    </g:form>
    <form action='${request.contextPath}/login' method='POST'>
        <g:submitButton name="Submit" value="Login"/>
    </form>
</sec:access>

<!-- if logged in, displays a message indicating they are already logged in and to check out recipes,
also allows you to logout if already logged in -->
<sec:access expression="isAuthenticated()">
    <p>You are already logged in! Check out your trunk! <g:link controller="trunk"></g:link></p>
    <form action='${request.contextPath}/logout' method='POST'>
        <g:submitButton name="Submit" value="Logout"/>
    </form>
</sec:access>

<!-- allows users with admin role to click and see full database accounts -->
<sec:access expression="hasRole('ROLE_ADMIN')">
    <g:link action="userModeration">
        <input type="button" value="See Users" class="button"/>
    </g:link>
</sec:access>

</body>
</html>