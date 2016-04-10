<html>
<head>
	<meta name="layout"/>
	<title><g:message code='springSecurity.login.title'/></title>
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>
	<style type="text/css" media="screen">
	body {
		background: #59b07f;
	}

	.loginForm {
		width: 400px;
		background: #fff;
		padding: 30px;
		margin: auto;
		position: absolute;
		top: 0;
		bottom: 0;
		height: 200px;
		left: 0;
		right: 0;
		text-align: center;
	}

	.loginForm h1 {
		font-family: 'Roboto', sans-serif;
		font-weight: 100;
		margin: 0 0 20px 0;
	}

	.username input, .password input {
		height: 30px;
		width: 200px;
		margin-bottom: 10px;
		background: #fff;
		border: 1px solid #bae6cd;
		border-radius: 4px;
		color: #444;
		padding: 10px;
		font-family: 'Josefin Sans', sans-serif;
		font-size: 15px;
	}

	.submit {
		border: 1px solid #bae6cd;
		background: #fff;
		border-radius: 20px;
		width: 100px;
		height: 30px;
	}

	.submit:hover {
		cursor: pointer;
		background: #f7f7f7;
	}

	.loginLink {
		border: 0;
		background: none;
		width: 100%;
		padding: 10px;
	}

	.loginLink:hover{
		cursor: pointer;
	}
	</style>
</head>

<body>
<div id="login">
	<div class="inner">
		<div class="loginForm">
			<form action="${postUrl ?: '/login/authenticate'}" method="POST" autocomplete="off">

				<h1>Login</h1>
				<div class="username"><input type="text"name="${usernameParameter ?: 'username'}" id="username"/></div>

				<div class="password"><input type="password" name="${passwordParameter ?: 'password'}" id="password"/></div>

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
