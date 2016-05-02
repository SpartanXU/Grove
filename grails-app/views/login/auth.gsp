<html>
<head>
	<meta name="layout"/>
	<title><g:message code='springSecurity.login.title'/></title>
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>
	<asset:stylesheet src="application.css"/>

</head>

<body>
<div id="login">
	<div class="inner">
		<div class="loginForm">
			<form action="${postUrl ?: '/login/authenticate'}" method="POST" autocomplete="off">

				<h1>Login</h1>
				<div class="username"><input type="text"name="${usernameParameter ?: 'username'}" id="username" placeholder="Username"/></div>

				<div class="password"><input type="password" name="${passwordParameter ?: 'password'}" id="password" placeholder="Password"/></div>

				<input type="submit" class="submit" value="Submit"/>


			</form>

			<form action='${request.contextPath}/user' method='POST'>
				<g:submitButton class="loginLink" name="Submit" value="Click here to Register"/>
			</form>
		</div>

	</div>
</div>
<script>
(function() {
	document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
})();
</script>
</body>
</html>
