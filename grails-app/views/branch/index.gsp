<%--
  Created by IntelliJ IDEA.
  User: xujingwei
  Date: 3/29/16
  Time: 10:54 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>
    <style type="text/css" media="screen">
        body {
            background: #59b07f;
            margin: 0; padding: 0;
        }

        .container {
            width: 1000px; min-height: 100%;
            background: #fff;
            margin: 0 auto;
            border-left: 1px solid #f3f3f3;
            border-right: 1px solid #f3f3f3;
            box-sizing: border-box;
            padding: 0px 20px 10px 20px;
        }
        header {
            width: 900px;
            height: 55px;
            margin: 0 auto;
            border-bottom: 1px solid #86CCA4;
            padding-top: 20px;
        }

        .header-logo {
            float:left;
            width:25%;
            display: inline-block;
        }

        .header-logo i {
            float: left;
            color:#1E7D47;
        }

        .header-logo h3 {
            float: left;
            margin: 7px 0 0 3px;
            font-family: 'Roboto', sans-serif;
            font-weight: 100;
        }

        .header-search {
            float: left;
            width: 50%;
        }

        .header-search .search-field {
            height: 30px;
            width: 65%;
            border-radius: 10px;
            border-top-right-radius: 0px;
            border-bottom-right-radius: 0px;
            border: 1px solid #ccc;
            padding: 0px 10px;
            font-size: 13px;
            float: left;
            margin: 5px 0 0 10%;
            font-family: 'Roboto', sans-serif;
            font-weight: 400;
        }

        .header-search .search-submit {
            height: 30px;
            width: 15%;
            display: inline-block;
            padding: 0px 10px;
            border: 1px solid #ccc;
            background: #fff;
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;
            float: left;
            border-left: 0;
            margin-top: 5px;
            position:relative;
        }

        .header-search .search-submit:hover {
            cursor: pointer;
            background: #f3f3f3;
        }

        .header-account {
            float: left;
            width: 25%;
        }

        .header-account a, .header-account i {
            text-align: center;
            display: block;
            height: 40px;
            line-height: 40px;
            color: #333;
            text-decoration: none;
            float: right;
        }

        .header-account a:hover{
            text-decoration: underline;
        }

            .header-account i {
            margin-right: 5px;
        }

        main {
            clear: both;
        }

        main .branch-header {
            width: 900px;
            margin: 0 auto;
            border-bottom: 1px solid #ccc;
        }

        main .branch-image {
            height: 200px; width: 200px;
            padding: 25px;
            float: left;
        }

        main .branch-image img {
            width: 200px; height: 200px;
        }

        main .branch-title {
            float: left;
            width: 250px;
            height: 250px;
            line-height: 250px;
            font-size: 30px;
        }

        main .branch-intro {
            height: 250px;
            float: left;
            width: 400px;
            padding: 25px;
            box-sizing: border-box;
        }

        main .branch-intro span {
            display: table-cell;
            height: 200px;
            vertical-align:middle;
        }

        main .branch-links {
            clear:both;
            width: 100%; height: 25px;
        }

        main .branch-createBranch {
            width: 15%;
            float:left;
            text-align: center;
        }

        main .branch-list {
            width: 70%;
            float:left;
            text-align:center;
        }

        main .branch-createLeaf {
            width: 15%;
            float:left;
            text-align: center;
        }

        footer {
            width: 1000px;
            margin: 0 auto;
            background: #1E7D47;
            color: #fff;
            padding:0 20px;
            display: flex;
            box-sizing: border-box;
            font-size:12px;
        }

        footer a {
            color: #fff;
        }
    </style>
</head>

<body>

<%--
    Navigation bar
--%>
<div class="container">
    <header>
        <div class="header-logo">
            <i class="fa fa-2x fa-pagelines"></i>
            <h3>The Grove</h3>
        </div>
        <div class="header-search">
            <g:form action="Search">
                <g:textField name="search" class="search-field" value="Search"/>
                <button type="submit" class="search-submit"><i class="fa fa-search fa-lg"></i></button>
            </g:form>
        </div>
        <div class="header-account">

            <g:link action="account">Account</g:link>
            <i class="fa fa-user fa-lg"></i>
        </div>
    </header>

    <%--
        Branch Introduction
    --%>
    <main>
        <div class="branch-header">
            <div class="branch-info">
                <g:if test="${!var}">
                    <p>Empty var!</p>
                </g:if>
                <g:else>
                        <div class="branch-image"><img src="${createLink(controller:'branch', action:'displayImage', params: ['id': var.id])}"/></div>
                        <div class="branch-title"><${var.branchTitle}></div>
                        <div class="branch-intro"><span><${var.introduction}></span></div>
                </g:else>
            </div>

            <%--
            Links to create branch or leaf
            --%>
            <div class="branch-links">
                <div class="branch-createBranch"><g:link action="createBranch">Create Branch</g:link></div>
                <div class="branch-list">List of Child Branches</div>
                <div class="branch-createLeaf"><g:link controller="Leaf" action="createLeaf">Create Leaf</g:link></div>
            </div>
        </div>

        <%--
            Child Leaf of this branch  -- what is this jingwei???
        --%>
        <div class="leaf-body">
            <g:each var="leaf" in="${leaf}">
                <ul>
                    <li>${leaf.title}</li>
                    <li><g:link action="Leaf">${leaf.picture}</g:link></li>
                </ul>
            </g:each>
        </div>
    </main>
</div>

<%--
    Footer
--%>
<footer>
    <p>Copyright &copy; 2016 Michael Ryan Pang, Nicholas Summers, Jingwei Xu. All rights reserved. <br />
    Created for MI 359: Application Development with Grails, at <a id="foot-link" href="http://msu.edu/" target="_blank">Michigan State University</a>.<br /></p>
</footer>

</body>
</html>