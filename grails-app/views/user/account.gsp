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
    <title></title>
</head>

<body>

<ul>
    <li>${user.username}</li>
    <li><g:link action="deleteUser" id="${user.id}">Delete Account</g:link> </li>
    <g:each var="leafID" in="${user.leaf}">
        <div class="leaf-container">
            <div class="leaf-title">${leafID.leafTitle}</div>
            <g:link controller="leaf" action="index" id="${leafID.id}">
                <div class="leaf-image"><img onError="this.style.display='none'" src="${createLink(controller:'leaf', action:'displayImage', params:["id": leafID.id])}"/></div>
            </g:link>
        </div>
    </g:each>
    <g:each var="BranchID" in="${user.branch}">
        <div class="leaf-container">
            <div class="leaf-title">${BranchID.branchTitle}</div>
            <g:link controller="branch" action="index" id="${BranchID.id}">
                <div class="leaf-image"><img onError="this.style.display='none'" src="${createLink(controller:'branch', action:'displayImage', params: ['id': BranchID.id])}"/></div>
            </g:link>
        </div>
    </g:each>
</ul>
</body>
</html>