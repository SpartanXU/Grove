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
<h1 class="relatedBranch-header">Related Branches</h1>
<g:if test="${branch.isEmpty()}">
    <p class="relatedBranch-para">No related branches found. Try making one!</p>
</g:if>
<g:else>
    <ul class="relatedBranch-list">
    <g:each in="${branch}">
        <li><g:link action="index" id="${it.id}">${it.branchTitle}</g:link></li>
    </g:each>
    </ul>
</g:else>
</body>
</html>