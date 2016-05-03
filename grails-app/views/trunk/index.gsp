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

<%-- displays Top 15 Branches that have the most Leafs posted inside of them --%>

<g:link action="index" controller="branch">Branch Page</g:link>
<g:if test ="${branchNew}">
    <g:each var = "var" in = "${branchNew}">
            <div class="branch-image"><img onError="this.style.display='none'" src="${createLink(controller:'branch', action:'displayImage', params: ['id': var.id])}"/></div>
            <g:link action="index" id="var.id"><div class="branch-title">${var.branchTitle}</div></g:link>
    </g:each>
</g:if>

<sec:access expression="isAuthenticated()">
    <form action='${request.contextPath}/logout' method='POST'>
        <g:submitButton name="Submit" value="Logout"/>
    </form>
</sec:access>

</body>
</html>