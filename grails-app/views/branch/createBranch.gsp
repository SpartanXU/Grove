<%--
  Created by IntelliJ IDEA.
  User: xujingwei
  Date: 4/3/16
  Time: 4:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Branch</title>
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
        width: 900px;
        margin: 0 auto;
    }


    main .create-branch h1 {
        font-family: 'Roboto', sans-serif;
        font-weight: 100;
        text-align: center;

    }

    main input[type="file"] {
        display: none;
    }

    main .custom-file-upload {
        border: 1px solid #ccc;
        display: block;
        padding: 6px 12px;
        cursor: pointer;
        width: 25%; height: 40px;
        line-height: 40px;
        text-align: center;
        margin: 0 auto;
        font-size: 14px;
    }

    main .custom-file-upload:hover {
        background: #f3f3f3;
    }

    main .create-titles {
        padding: 0; margin-top: 10px;
        display: block;
        width: 100%;
    }

    main .create-titles input {
        width: 30%;
        margin: 0px 10%;
        text-align: center;
        height: 40px;
        float: left;
        font-size: 14px;
    }

    main .create-intro {
        clear: both;
        width: 100%;
        height: 200px;
        margin-top: 10px;
        border: 1px solid #f3f3f3;
        font-size: 14px;
        font-weight: 200;
    }

    main .create-submit {
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 200px;
        height: 50px;
        font-family: Tahoma;
        background: #fff;
        margin: 10px auto;
        display: block;
        font-size: 14px;
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
    Enter branch information
--%>
    <main>
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