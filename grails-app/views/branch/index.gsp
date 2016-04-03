<%--
  Created by IntelliJ IDEA.
  User: xujingwei
  Date: 3/29/16
  Time: 10:54 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Branch</title>
</head>

<body>

<%--
    Navigation bar
--%>
<ul style="list-style-type:none">
    <li>Logo</li>
    <li><h3>Welcome to the Grove!</h3></li>
    <g:form action="Search">
        <li><g:submitButton name="Submit"/></li>
        <li><g:textField name="search" value="Search"/></li>
    </g:form>
    <li><g:link action="account">Account</g:link></li>
</ul>

<%--
    Branch Introduction
--%>
<g:each var="branch" in="${branch}">
    <ul style="list-style-type: none">
        <li><img src="${branch.branchImage}"/></li>
        <li><h2>${branch.branchTitle}</h2></li>
        <li>${branch.introduction}</li>
    </ul>
</g:each>

<%--
    Links to create branch or leaf
--%>
<ul style="list-style-type: none">
    <li><g:link action="createBranch">Create Branch</g:link></li>
    <li>List of Child Branches</li>
    <li><g:link action="Create_leaf">Create Leaf</g:link> </li>
</ul>

<%--
    Child Leaf of this branch
--%>
<g:each var="leaf" in="${leaf}">
    <ul>
        <li>${leaf.title}</li>
        <li><g:link action="Leaf">${leaf.picture}</g:link></li>
    </ul>
</g:each>

<%--
    Footer
--%>
<p>Copyright &copy; 2016 Michael Ryan Pang, Nicholas Summers, Jingwei Xu. All rights reserved. <br />
    Created for MI 359: Application Development with Grails, at <a id="foot-link" href="http://msu.edu/" target="_blank">Michigan State University</a>.<br /></p>
</body>
</html>