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
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>
    <style type="text/css" media="screen">
        body {
            background: #59b07f;
        }

        .loginForm {
            width: 400px;
            background: #fff;
            padding: 30px;
            margin: auto;
            position: absolute;
            top: 0;
            bottom: 0;
            height: 200px;
            left: 0;
            right: 0;
            text-align: center;
        }

        .loginForm h1 {
            font-family: 'Roboto', sans-serif;
            font-weight: 100;
            margin: 0 0 20px 0;
        }

        .username input, .password input {
            height: 30px;
            width: 200px;
            margin-bottom: 10px;
            background: #fff;
            border: 1px solid #bae6cd;
            border-radius: 4px;
            color: #444;
            padding: 10px;
            font-family: 'Josefin Sans', sans-serif;
            font-size: 15px;
        }

        .submit {
            border: 1px solid #bae6cd;
            background: #fff;
            border-radius: 20px;
            width: 100px;
            height: 30px;
        }

        .submit:hover {
            cursor: pointer;
            background: #f7f7f7;
        }

        .loginLink {
            border: 0;
            background: none;
            width: 100%;
            padding: 10px;
        }

        .loginLink:hover{
            cursor: pointer;
        }


    </style>
</head>


<body>

<!-- only allows users who haven't logged in to the page to register as a new user,
 also allows people to login with an already registered account-->
<sec:access expression="isAnonymous()">
    <div class="loginForm">
        <g:form action="createUserForm">
            <h1>The Grove</h1>
            <div class="username"><g:textField name="username" value="Username"/></div>
            <div class="password"><g:textField name="password" value="Password"/></div>
            <g:submitButton class="submit" name="Submit"/>
        </g:form>
        <form action='${request.contextPath}/login' method='POST'>
            <g:submitButton class="loginLink" name="Submit" value="Click here to Login"/>
        </form>
    </div>
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