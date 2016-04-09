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
<g:if test="${viewLeaf.empty}">
    <ul>
        <li>The database is currently empty.</li>
    </ul>
</g:if>
<g:else>
    <table style="width:100%; border: solid">
        <tr>
            <td><strong>Leaf Title</strong></td>
            <td><strong>Leaf Link</strong></td>
        </tr>
        <g:each var="variable" in="${viewLeaf}">
            <g:form>
                <tr>
                    <td>${variable.leafTitle}</td>
                    <td><g:link action ="index"  id ="${variable.id}">${variable.leafTitle}</g:link> </td>
                </tr>
            </g:form>
        </g:each>

    </table>

</g:else>
</body>

</html>