<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 4/18/2016
  Time: 4:12 PM
--%>

<%@ page import="org.apache.tomcat.jni.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>User Account - The Grove</title>
</head>

<body>

<%-- admin can see users that have created accounts --%>

<sec:access expression="hasRole('ROLE_ADMIN')">
    <g:link action="userModeration">See Website Users</g:link>
</sec:access>

<%-- displays user created branches, leafs, and have the ability to delete account --%>

    <h2 class="account-username">${user.username}</h2>
    <g:link class="account-delete" action="deleteUser" id="${user.id}">Delete Account</g:link>
    <h3 class="account-created-header">Leafs</h3>
    <g:if test="${user.leaf}">
        <div class="account-leaves">
            <g:each var="leafID" in="${user.leaf}">
                <div class="leaf-container">
                    <div class="leaf-title">${leafID.leafTitle}</div>
                    <g:link controller="leaf" action="index" id="${leafID.id}">
                        <div class="leaf-image"><img onError="this.style.display='none'" src="${createLink(controller:'leaf', action:'displayImage', params:["id": leafID.id])}"/></div>
                    </g:link>
                </div>
            </g:each>
        </div>
    </g:if>
    <g:else>
        <h4>No Leafs Created</h4>
    </g:else>
    <h3 class="account-created-header">Branches</h3>
    <g:if test="${user.branch}">
        <div class="account-branches">
        <g:each var="BranchID" in="${user.branch}">
            <div class="leaf-container">
                <div class="leaf-title">${BranchID.branchTitle}</div>
                <g:link controller="branch" action="index" id="${BranchID.id}">
                    <div class="leaf-image"><img onError="this.style.display='none'" src="${createLink(controller:'branch', action:'displayImage', params: ['id': BranchID.id])}"/></div>
                </g:link>
            </div>
        </g:each>
        </div>
    </g:if>
    <g:else>
        <h4>No Branches Created</h4>
    </g:else>

</body>
</html>