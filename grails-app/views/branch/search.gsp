<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 4/18/2016
  Time: 3:21 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Search Results - The Grove</title>
    <meta name="layout" content="main"/>
</head>

<body>
<h1 class="search-header">Search Results</h1>

<table class="search-results">
    <tr>
        <th>Image</th>
        <th>Title</th>
        <th>Information</th>
    </tr>
    <g:each var="r" in="${results}">
        <tr>
        <td><div class="branch-image"><img src="${createLink(controller:'branch', action:'displayImage', params: ['id': r.id])}"/></div></td>
        <td><g:link action="index" id="${r.id}"><div class="branch-title">${r.branchTitle}</div></g:link></td>
        <td><div class="branch-intro"><span>${r.introduction}</span></div></td>
        </tr>
    </g:each>

</table>
</body>
</html>