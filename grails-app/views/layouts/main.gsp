<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><g:layoutTitle default="The Grove"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>

    <g:layoutHead/>
</head>


<body>
    <div class="container">
    <header>
        <div class="header-logo">
            <i class="fa fa-2x fa-pagelines"></i>

            <h3><g:link controller="trunk">The Grove</g:link></h3>
        </div>

        <div class="header-search">
            <g:form url="[action:'search',controller:'branch']">
                <g:textField name="search" class="search-field" value="Search"/>
                <button type="submit" class="search-submit"><i class="fa fa-search fa-lg"></i></button>
            </g:form>
        </div>

        <div class="header-account">
            <g:link controller="Account">Account</g:link>
            <i class="fa fa-user fa-lg"></i>
        </div>
    </header>

    <main>
    <g:layoutBody/>
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
