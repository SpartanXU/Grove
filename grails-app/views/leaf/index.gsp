<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 4/8/2016
  Time: 1:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>View Leaf</title>
</head>

<body>


<%--
    Display leaf information
--%>

<g:if test="${!leaf_var}">
    <p>There are currently no leaf under this branch</p>
    <g:link action="createLeaf">Create A Leaf</g:link>
</g:if>
<g:else>
    <ul style="list-style-type: none">
        <li><img src="${createLink(controller:'Leaf', action:'displayImage', params: ['id': leaf_var.id])}"/></li>
        <li>${leaf_var.leafTitle}</li>
        <li>${leaf_var.leafLink_URL}</li>
        <li>${leaf_var.leafInfo}</li>
    </ul>
</g:else>

</body>
</html>