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
    <g:hasErrors bean="${branch}">
        <ul>
            <g:eachError var="err" bean="${branch}">
                <li>${err}</li>
            </g:eachError>
        </ul>
    </g:hasErrors>

    <%--
    Enter branch information
    --%>
    <div class="create-branch">
        <h1> Create Branch </h1>
        <g:uploadForm action="BranCreate">
            <g:hiddenField name="user" value ="${user}" />
            <label id="labelForBranchImage" for="branchImage" class="custom-file-upload">
                Upload Branch Image
            </label>
            <input id="branchImage" class="create-image" type="file" name="branchImage" onchange="printFileName(this)"/>
            <div class="create-titles">
                <div class="inputHolder">
                    <label id="labelTitle" for="branchTitle">Branch Title</label>
                    <g:textField id="branchTitle" name="branchTitle" />
                </div>
                <div class="inputHolder">
                    <label id="labelTitle" for="parentbranch">Parent Branch Title</label>
                    <g:select name="parentbranch" in="${branch.id}" from="${branch.branchTitle}" noSelection="['':'New Branch']"/>
                        </div>
                    </div>
                    <div id="intro-holder" class="inputHolder">
                        <label for="create-intro">Enter Branch Introduction</label>
                        <g:textArea id="create-intro" class="create-intro" name="introduction"/>
                    </div>
                    <g:submitButton class="create-submit" name="Submit To Ents"/>
                </g:uploadForm>
            </div>


        <script>
            function printFileName(input) {
                var file = input.files[0];
                var filename = file.name;
                document.getElementById('labelForBranchImage').innerHTML = filename;
            }
        </script>

        </body>
        </html>