<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 4/18/2016
  Time: 3:21 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:each var="r" in="${results}">
    <div class="branch-title">${r.branchTitle}</div>
    <div class="branch-image"><img src="${createLink(controller:'branch', action:'displayImage', params: ['id': r.id])}"/></div>
    <div class="branch-intro"><span>${r.introduction}</span></div>
</g:each>
</body>
</html>