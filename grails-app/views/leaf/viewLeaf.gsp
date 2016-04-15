<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 4/9/2016
  Time: 4:36 PM

  Nick -- this page is the page that will essentially be all the leafs under the parent branch, just gotta figure out how
  relate those together
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<%-- getAt(0)? to convert  --%>
You have successfully created a branch.  Visit <g:link action="index" id="${viewLeaf.getAt(0)?.id}">${viewLeaf.getAt(0)?.leafTitle}</g:link>.
<br/>
Or go back to the <g:link controller="Trunk" action="index">TRUNK</g:link>
</body>

</html>