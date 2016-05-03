<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 4/28/2016
  Time: 3:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Related Branches</title>
</head>

<body>

<%-- lists related branches according to parentbranch --%>
<g:each in="${branch}">
    <li><g:link action="index" id="${it.id}">${it.branchTitle}</g:link></li>
</g:each>
</body>
</html>