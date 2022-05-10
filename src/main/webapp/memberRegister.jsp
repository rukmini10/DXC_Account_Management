<%@ page language="JAVA" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
<meta charset="ISO-8859-1">
<title>Account Management</title>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Create New</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

body {
	margin: 10px;
	padding: 0;
	background-image:
		url("https://cutewallpaper.org/21/hd-website-backgrounds/High-Resolution-Hd-Website-Background-Hd-Wallpapers-.jpg");
	height: 150vh;
}

.center {
	position: absolute;
	top: 70%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 400px;
	background: white;
	border-radius: 10px;
	box-shadow: 10px 10px 15px rgba(0, 0, 0, 0.05);
}

.center h1 {
	text-align: center;
	padding: 20px 0;
	border-bottom: 1px solid silver;
}

.center form {
	padding: 0 40px;
	box-sizing: border-box;
}

form .txt_field {
	position: relative;
	border-bottom: 2px solid #adadad;
	margin: 30px 0;
}

.txt_field input {
	width: 100%;
	padding: 0 5px;
	height: 30px;
	font-size: 16px;
	border: none;
	background: none;
	outline: none;
}

.txt_field label {
	position: absolute;
	top: 50%;
	left: 5px;
	color: #adadad;
	transform: translateY(-50%);
	font-size: 16px;
	pointer-events: none;
	transition: .5s;
}

.txt_field span::before {
	content: '';
	position: absolute;
	top: 30px;
	left: 0;
	width: 0%;
	height: 2px;
	background: #2691d9;
	transition: .5s;
}

.txt_field input:focus ~ label, .txt_field input:valid ~ label {
	top: -5px;
	color: #2691d9;
}

.txt_field input:focus ~ span::before, .txt_field input:valid ~ span::before
	{
	width: 100%;
}

.pass {
	margin: -5px 0 20px 5px;
	color: #a6a6a6;
	cursor: pointer;
}

.pass:hover {
	text-decoration: underline;
}

input[type="submit"] {
	width: 100%;
	height: 50px;
	border: 1px solid;
	background: #2691d9;
	border-radius: 25px;
	font-size: 18px;
	color: #e9f4fb;
	font-weight: 700;
	cursor: pointer;
	outline: none;
}

input[type="submit"]:hover {
	border-color: #2691d9;
	transition: .5s;
}
</style>
</head>
<body>
	<div class="center">
		<h1>Account Register Form</h1>
		<form action="Register" method="post">

			<div class="txt_field">
				<input type="text" name="uname" required /> <span></span> <label
					for="uname">User Name</label>
			</div>
			<div class="txt_field">
				<input type="text" name="fullname" required /> <span></span> <label
					for="fullname">Full Name</label>
			</div>
			<div class="txt_field">
				<input type="password" name="password" required> <span></span>
				<label for="password">Password</label>
			</div>
			<div class="txt_field">
				<input type="email" name="email" required> <span></span> <label
					for="email">Email Id</label>
			</div>
			<div class="txt_field">
				<input type="number" name="phone" required> <span></span> <label
					for="phone">Phone Number</label>
			</div>
			<div class="txt_field">
				<input type="text" name="address" required> <span></span> <label
					for="address">Address</label>
			</div>
			<div class="txt_field">
				<input type="text" name="securityQuestion" required> <span></span>
				<label for="securityQuestion">Security Question(Hobbies)</label>
			</div>
			<div class="txt_field">
				<input type="number" name="openingAmount" required> <span></span>
				<label for="openingAmount">Opening Amount</label>
			</div>
			<div class="txt_field">
				<!--    <input type="number" name="accountType" required>   
				 <span></span> <label for="accountType"> Type Of Account</label>-->
				 <select name="accountType" id="account">
				 <option value="select">Choose</option>
					<option value="savings">Savings Account</option>
					<option value="current">Current Account</option>

				</select>
			</div>
			<div class="txt_field">
				<input type="date" name="openingDate" required> <span></span>
				<label for="openingDate"></label>
			</div>
			<div class="txt_field">
				<input type="number" name="panCard" required> <span></span>
				<label for="panCard"> PanCard</label>
			</div>

			<input type="submit" value="register" /><br>
			<br>
		</form>
	</div>
</body>
</html>











