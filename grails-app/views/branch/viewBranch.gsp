<%--
  Created by IntelliJ IDEA.
  User: xujingwei
  Date: 4/4/16
  Time: 4:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:if test="${branch.empty}">
    <ul>
        <li>The database is currently empty.</li>
    </ul>
</g:if>
<g:else>
    <table style="width:100%; border: solid">
        <tr>
            <td><strong>Branch Title</strong></td>
            <td><strong>Branch Link</strong></td>
        </tr>
        <g:each var="variable" in="${branch}">
            <g:form>
                <tr>
                    <td>${variable.branchTitle}</td>
                    <td><g:link action ="index"  id ="${variable.id}">${variable.branchTitle}</g:link> </td>
                </tr>
            </g:form>
        </g:each>

    </table>

</g:else>
<g:link action="createBranch">Click here to create a new branch</g:link>
</body>
</html>