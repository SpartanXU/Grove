<%--
  Created by IntelliJ IDEA.
  User: mike
  Date: 3/28/2016
  Time: 12:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Trunk - The Grove</title>
</head>
<body>
<script>
    var words = [];
</script>

<g:if test="${branchNew.isEmpty()}">
    <div class="trunk-notification">
        <h1>Oh No!</h1>
        <p> There are no branches created</p>
        <p> Why not create one <g:link controller="branch" action="createBranch">here</g:link>?</p>
        <sec:ifNotLoggedIn>
            <p>You can create an account <g:link controller="user" action="index">here</g:link> to get started!</p>
        </sec:ifNotLoggedIn>
    </div>
</g:if>
<g:else>
    <sec:ifNotLoggedIn>
        <div class="trunk-top-notification">
            <p>Looks like you're not logged in. Click here to login/create an account to create branches and leaves of your own!</p>
        </div>
    </sec:ifNotLoggedIn>
</g:else>

<%-- displays Top 15 Branches that have the most Leafs posted inside of them --%>

<g:if test ="${branchNew}">
    <div id="branchTitles">
        <g:each var = "var" in = "${branchNew}">
            <script>
                words.push({text: '${var.branchTitle}',
                    weight: Math.floor(Math.random() * (60 - 30 + 1)) + 30,
                    link: "/branch/index/${var.id}"
                });
            </script>
        </g:each>
    </div>
</g:if>

<script>
    console.log(words);
    $('#branchTitles').jQCloud(words, {
        width: 900,
        height: 400
    });
</script>

</body>
</html>