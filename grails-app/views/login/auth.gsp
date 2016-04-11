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
				<div class="username"><input type="text"name="${usernameParameter ?: 'username'}" id="username" value="Username"/></div>

				<div class="password"><input type="password" name="${passwordParameter ?: 'password'}" id="password" value="Password"/></div>

				<input type="submit" class="submit" value="${message(code: 'springSecurity.login.button')}"/>


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
