<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Car comparision engine - input form</title>
		
		<style>
			.error {color: red}
		</style>
	</head>
	<body>
		<div style="align-items: center;
  					display: flex;
  					justify-content: center;">
		<form:form action="processForm" modelAttribute="car" >
		
			Car condition: 
			<form:select path="carCondition">
				<form:options items="${car.carConditions }" />
			</form:select>
	        <br><br>
	
			Vehicle brand: <form:input path="vehicleBrand" />
			<br><br>
			
			Vehicle model: <form:input path="vehicleModel" />
			<br><br>
			
			Production year: <form:input path="productionYear" />
			<form:errors path="productionYear" cssClass="error" />
			<br><br>
			
			Mileage (* minimum 1 km): <form:input path="mileage" />
			<form:errors path="mileage" cssClass="error" />
			<br><br>
			
			Horse power (* minimum 1HP): <form:input path="horsePower" />
			<form:errors path="horsePower" cssClass="error" />
			<br><br>
			
			Displacement size: <form:input path="displacementSize" />
			<form:errors path="displacementSize" cssClass="error" />
			<br><br>
			
			Fuel type:
			<form:select path="fuelType">
				<form:options items="${car.fuelTypes }" />
			</form:select>
        	<br><br>

			Drive type: 
			<form:select path="driveType">
				<form:options items="${car.driveTypes }" />
			</form:select>
			<br><br>
			
			Transmission: 
			<form:select path="transmission">
				<form:options items="${car.transmissionTypes }" />
			</form:select>
        	<br><br>

			Car type:
			<form:select path="carType">
				<form:options items="${car.carTypes }" />
			</form:select>
			<br><br>
			
			Color: <form:input path="color" />
			<form:errors path="color" cssClass="error" />
			<br><br>
			
			<input type="submit" value="Submit" />
			
		</form:form>
		</div>
	</body>
</html>