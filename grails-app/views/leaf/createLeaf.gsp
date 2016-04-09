<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 4/9/2016
  Time: 4:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
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
    Enter branch information
--%>
<g:uploadForm action="leafCreate">
    <ul style="list-style-type: none">
        <li>
            <input type="file" name="leafImage"/>
        </li>
        <li><g:textField name="leafTitle" value="Leaf Title"/></li>
        <li><g:textField name="leafLink_URL" value="Website URL?"/></li>
        <li><g:textArea name="leafInfo" value="Enter Information"/></li>
        <li><g:submitButton name="Submit To Branch"/></li>
    </ul>
</g:uploadForm>

<%--
    Footer
--%>
<p>Copyright &copy; 2016 Michael Ryan Pang, Nicholas Summers, Jingwei Xu. All rights reserved. <br />
    Created for MI 359: Application Development with Grails, at <a id="foot-link" href="http://msu.edu/" target="_blank">Michigan State University</a>.<br /></p>

</body>

</html>