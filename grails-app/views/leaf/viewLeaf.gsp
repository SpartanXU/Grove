<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 4/9/2016
  Time: 4:36 PM

--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>


<body>
<g:if test="${!viewLeaf}">
    <p>Not enough information to proceed</p>
</g:if>
<g:else>
You have successfully created a leaf.  Visit <g:link action="index" id="${viewLeaf.id}">${viewLeaf.leafTitle}</g:link>.
<br/>
Or go back to the <g:link controller="Trunk" action="index">TRUNK</g:link>
</g:else>
</body>

</html>