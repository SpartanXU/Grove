<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 3/28/2016
  Time: 12:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>
<table border="1" style="width:100%">
    <thead>
    <tr>
        <th>Username</th>
        <th>Delete Account?</th>
    </tr>
    </thead>

<!-- displays all users and allows admin to delete accounts -->
    <g:each var="User" in="${users}">
        <tbody>
                <td>${User.username}</td>
        <td><form action="deleteUser">
            <g:hiddenField name="ID" value="${User.id}"></g:hiddenField>
            <g:submitButton name="Submit" value="Delete"/>
        </form></td>
    </g:each>
</body>
</html>