<html>
<head>


</head>
<body>
<br/>
<br/>
<br/>

		<h1 align="center" style="font-family: sans-serif;">Hospital Form</h1>
	<div class="center">
		<form action="./index" method="GET">
			<table align="center">
				<tr>
					<td><font style="font-family: sans-serif;">Patient Name :</font></td>
					<td><input type="text" name="patientName" size="30" /></td>
				</tr>

				<tr>
					<td><font style="font-family: sans-serif;">Patient Age :</font></td>
					<td><input type="text" name="patientAge" size="30" /></td>
				</tr>

				<tr>
					<td><font style="font-family: sans-serif;">Blood Group :</font></td>
					<td><select name="bloodGroup">
							<option value="O-">O-</option>
							<option value="O+">O+</option>
							<option value="A-">A-</option>
							<option value="A+">A+</option>
							<option value="B-">B-</option>
							<option value="B+">B+</option>
							<option value="AB-">AB-</option>
							<option value="AB+">AB+</option>
					</select></td>
				</tr>

				<tr>
					<td><font style="font-family: sans-serif;">Check Up :</font></td>
					<td><select name="checkUp">
							<option value="OPD">OPD</option>
							<option value="General">General</option>
							<option value="Respiratory">Respiratory</option>
							<option value="Transplantation">Transplantation</option>
							<option value="Paediatrics">Paediatrics</option>
							<option value="Cardio">Cardio</option>
					</select></td>
				</tr>

				<tr>
					<td><font style="font-family: sans-serif;">Doctor Name :</font></td>
					<td><select name="doctorName">
							<option value="Dr. Manju Narayan">Dr. Manju Narayan</option>
							<option value="Dr. Sindhu Raj">Dr. Sindhu Raj</option>
							<option value="Dr. Prerana Vishwanath">Dr. Prerana Vishwanath</option>
							<option value="Dr. Subbaih Naidu">Dr. Subbaih Naidu</option>
							<option value="Dr. Vinod Shekar">Dr. Vinod Shekar</option>
					</select></td>
				</tr>

				<tr>
					<td><font style="font-family: sans-serif;">Test Recommended :</font></td>
					<td><select name="testRecommended">
							<option value="X-ray">X-ray</option>
							<option value="Blood test">Blood test</option>
							<option value="General test">General test</option>
							<option value="MRI Scan">MRI Scan</option>
							<option value="Blood Pressure test">Blood Pressure test</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2"><center><input type="submit" class="button" name="addUser" value="submit"><center></td>

				</tr>
			</table>
		</form>

		<form action="./showAll" method="GET">
			<center><input type="submit" class="button" name="showUsers" value="Show Patient List"></center>
		</form>

	</div>

	<style><%@include file="/WEB-INF/css/style.css"%></style>
</body>
</html>
