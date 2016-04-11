<%--
  Created by IntelliJ IDEA.
  User: xujingwei
  Date: 4/3/16
  Time: 4:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Create Branch</title>
</head>

<body>
    <%--
    Enter branch information
    --%>
    <div class="create-branch">
        <h1> Create Branch </h1>
        <g:uploadForm action="BranCreate">
            <label for="branchImage" class="custom-file-upload">
                Upload Branch Image
            </label>
            <input id="branchImage" class="create-image" type="file" name="branchImage"/>
            <div class="create-titles">
                <g:textField name="branchTitle" value="Branch Title"/>
                <g:textField name="subranchTitle" value="Subbranch Title"/>
            </div>
            <g:textArea class="create-intro" name="introduction" value="Enter the Introduction"/>
            <g:submitButton class="create-submit" name="Submit To Ents"/>
        </g:uploadForm>
    </div>
</body>
</html>