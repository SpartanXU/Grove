<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 4/9/2016
  Time: 4:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Create Leaf - The Grove</title>
</head>

<body>

<%--
    Enter leaf information
    hiddenField to pass the branch ID without display it
--%>
<div class="create-branch">
    <g:if test="${!leaf}">
        <p>Leaf can only be created from a branch</p>
    </g:if>
    <g:else>
        <h1> Create Leaf </h1>
        <g:uploadForm action="leafCreate">
            <label id="labelForLeafImage" for="leafImage" class="custom-file-upload">
                Upload Leaf Image
            </label>
            <input id="leafImage" class="create-branch" type="file" name="leafImage" onchange="printFileName(this)"/>

            <g:hiddenField name="branch" value="${leaf.id}" />
            <div class="create-titles">
                <div class="inputHolder">
                    <label id="labelTitle" for="leafTitle">Leaf Title</label>
                    <g:textField id="leafTitle" name="leafTitle"/>
                </div>
                <div class="inputHolder">
                    <label for="leafLink_URL">Leaf Link URL</label>
                    <g:textField id="leafLink_URL" name="leafLink_URL"/>
                </div>
            </div>
            <div id="intro-holder"class="inputHolder">
                <label for="leafInfo">Enter Leaf Info</label>
                <g:textArea id="create-intro" name="leafInfo" class="create-intro"/>
            </div>
            <g:submitButton class="create-submit" name="Submit To Branch"/>
        </g:uploadForm>
    </g:else>
</div>

<script>
    function printFileName(input) {
        var file = input.files[0];
        var filename = file.name;
        document.getElementById('labelForLeafImage').innerHTML = filename;
    }
</script>


</body>

</html>
