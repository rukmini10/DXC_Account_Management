<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<title>Fund Transfer</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body
	style="background-image: url('https://cutewallpaper.org/21/hd-website-backgrounds/High-Resolution-Hd-Website-Background-Hd-Wallpapers-.jpg');">
	<center>
		<br>
		<br>
		<br>
		<br>
		<div>
			<h1>Transfer Money</h1>
			<form method="post" action="update_transaction.jsp">
				<table border="1" bgcolor="lightblue">
					<tr>
						<td><label>Enter Your Account Number</label></td>
						<td><input type="text" name="ano"></td>
					</tr>
					<tr>
						<td><label>Transaction Account Number</label></td>
						<td><input type="number" name="t_ano"></td>
					</tr>
					<tr>
						<td><label>Transaction Account Name</label></td>
						<td><input type="text" name="t_name"></td>
					</tr>
					<tr>
						<td><label>Enter Your Transaction Amount</label></td>
						<td><input type="number" name="amt"></td>
					</tr>
					<tr>
						<td><label>Enter Todays Date
						<td><input type="date" name="tdt"></td>
					</tr>
					<td colspan="2" align="center"><input type="Submit"
						value="Submit"></td>
					</tr>
				</table>
			</form>
		</div>





	</center>
</body>
</html>