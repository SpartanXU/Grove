<%--
  Created by IntelliJ IDEA.
  User: xujingwei
  Date: 3/29/16
  Time: 10:54 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Create Branch</title>
</head>

<body>

<div class="branch-header">
    <div class="branch-info">
        <g:if test="${!var}">
            <p>There are currently no branch in the database</p>
            <div class="branch-createBranch"><g:link action="createBranch">Create Branch</g:link></div>
        </g:if>
        <g:else>
            <div class="branch-image"><img src="${createLink(controller:'branch', action:'displayImage', params: ['id': var.id])}"/></div>

            <div class="branch-title">${var.branchTitle}</div>
            <div class="branch-intro"><span>${var.introduction}</span></div>
        <%--
            Links to create branch or leaf
        --%>
            <div class="branch-links">
                <div class="branch-createBranch"><g:link action="createBranch">Create Branch</g:link></div>
                <div class="branch-list">List of Child Branches</div>
                <div class="branch-createLeaf"><g:link controller="Leaf" action="createLeaf" id="${var.id}">Create Leaf</g:link></div>
            </div>
        <%--
            Child Leaf of this branch
        --%>
            <div class="leaf-body">
                <g:if test="${!var.leaf}">
                    <p>There are currently no leaf for this branch</p>
                </g:if>
                <g:else>
                    <g:each var="leafID" in="${var.leaf}">
                        <ul>
                            <li>${leafID.leafTitle}</li>
                            <li><img src="${createLink(controller:'leaf', action:'displayImage', params:["id": leafID.id])}"/></li>
                        </ul>
                    </g:each>
                </g:else>
            </div>
        </g:else>
    </div>


</div>



</body>
</html>
