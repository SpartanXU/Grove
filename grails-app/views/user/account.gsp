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
<%-- displays user created branches, leafs, and have the ability to delete account --%>

    <h1 class="account-username">${user.username}</h1>

    <h2 class="account-created-header">Branches</h2>
    <g:if test="${user.branch}">
        <div class="account-branches">
            <g:each var="BranchID" in="${user.branch}">
                <div class="leaf-container">
                    <div class="leaf-title">${BranchID.branchTitle}</div>
                    <g:link controller="branch" action="index" id="${BranchID.id}">
                        <div class="leaf-image"><img onError="this.style.display='none';" src="${createLink(controller:'branch', action:'displayImage', params: ['id': BranchID.id])}"/></div>
                    </g:link>
                </div>
            </g:each>
        </div>
    </g:if>
    <g:else>
        <h4 class="account-created-header-fail">You haven't created any branches. Get to it by clicking <g:link class="account-link" controller="branch" action="createBranch">here</g:link>!</h4>
    </g:else>

    <h2 class="account-created-header">Leaves</h2>
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
        <h4 class="account-created-header-fail">You haven't made a leaf yet. Find a cool branch and add a leaf to it!</h4>
    </g:else>

    <g:link class="account-delete" action="deleteUser" id="${user.id}">Delete Account</g:link>

</body>
</html>