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

<%-- getAt(0)? to convert  --%>
You have successfully created a branch.  Visit <g:link action="index" id="${branch.getAt(0)?.id}">${branch.getAt(0)?.branchTitle}</g:link>.
<br/>
Or go back to the <g:link controller="Trunk" action="index">TRUNK</g:link>
</body>
</html>