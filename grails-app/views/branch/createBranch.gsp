<%--
  Created by IntelliJ IDEA.
  User: xujingwei
  Date: 4/3/16
  Time: 4:06 PM
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
<g:form action="BranCreate">
    <ul style="list-style-type: none">
        <li>Branch Image</li>
        <li><g:textField name="branchTitle" value="Branch Title"/></li>
        <li><g:textField name="subranchTitle" value="Subranch Title"/></li>
        <li><g:textArea name="introduction" value="Enter the Introduction"/></li>
        <li><g:submitButton name="Submit To Ents"/></li>
    </ul>
</g:form>

<%--
    Footer
--%>
<p>Copyright &copy; 2016 Michael Ryan Pang, Nicholas Summers, Jingwei Xu. All rights reserved. <br />
    Created for MI 359: Application Development with Grails, at <a id="foot-link" href="http://msu.edu/" target="_blank">Michigan State University</a>.<br /></p>

</body>
</html>