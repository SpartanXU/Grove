<%--
  Created by IntelliJ IDEA.
  User: xujingwei
  Date: 4/4/16
  Time: 4:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>
<g:if test="${!branch}">
    <p>Not enough information to proceed</p>
</g:if>
<g:else>
    You have successfully created a branch.  Visit <g:link action="index" id="${branch.id}">${branch.branchTitle}</g:link>.
    <br/>
    Or go back to the <g:link controller="Trunk" action="index">TRUNK</g:link>
</g:else>

</body>
</html>