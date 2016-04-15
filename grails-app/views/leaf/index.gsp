<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 4/8/2016
  Time: 1:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<%--
    Nav bar
--%>
<ul style="list-style-type:none">
    <li>Logo</li>
    <li><h3>Leaf Page</h3></li>
    <g:form action="Search">
        <li><g:submitButton name="Submit"/></li>
        <li><g:textField name="search" value="Search"/></li>
    </g:form>
    <li><g:link action="account">Account</g:link></li>
</ul>

<%--
    Display leaf information
--%>

<g:if test="${!leaf_var}">
    <p>Empty var!</p>
</g:if>
<g:else>
    <ul style="list-style-type: none">
        <li><img src="${createLink(controller:'Leaf', action:'displayImage', params: ['id': leaf_var.id])}"/></li>
        <li>${leaf_var.leafTitle}</li>
        <li>${leaf_var.leafLink_URL}</li>
        <li>${leaf_var.leafInfo}</li>
    </ul>
</g:else>

<%--
  Footer
--%>
<ul style="list-style-type: none">
    <li><g:link controller="Branch" action="createBranch">Create A New Branch</g:link></li>
    <li>List of Child Branches</li>
    <li><g:link action="createLeaf">Create A Leaf</g:link> </li>
</ul>

</body>
</html>