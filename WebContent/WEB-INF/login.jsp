<html>
<head>
	<meta charset="utf-8">
	<title>Login Form</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="login-box">
		<h1>Login</h1>
		<form id="login" action="mainpage.html" method="get">
		<div class="textbox">
			<i class="fa fa-user" aria-hidden="true"></i>
			<input typ e="text" placeholder="Username" name="username">
		</div>
		<div class="textbox">
			<i class="fa fa-lock" aria-hidden="true"></i>
			<input type="password" placeholder="Password">
		</div>
		<input class="btnleft" type="submit" value="Submit">
		<input class="btnright" type="button" onclick="myFunction()" value="Reset">
		</form>
	</div>
	<script>
		function myFunction() {
		document.getElementById("login").reset();
		}
	</script>
</body>
</html>