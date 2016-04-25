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
    <title>View Leaf - The Grove</title>
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
        <div class="branch-image"><img onError="this.style.display='none'" src="${createLink(controller:'Leaf', action:'displayImage', params: ['id': leaf_var.id])}"/></div>
        <h1 class="view-leaf-title"><a href="http://${leaf_var.leafLink_URL}">${leaf_var.leafTitle}</a></h1>
        <div class="view-leaf-information">${leaf_var.leafInfo}</div>
</g:else>

</body>
</html>