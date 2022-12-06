<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Car - confirmation</title>
	</head>
	<body>
		Condition: ${car.carCondition }
		<br><br>
		The car is confirmed: ${car.vehicleBrand } ${car.vehicleModel }
		<br><br>
		Production year: ${car.productionYear }
		<br><br>
		Mileage: ${car.mileage }
		<br><br>
		Horse power: ${car.horsePower }
		<br><br>
		Displacement size: ${car.displacementSize }
		<br><br>
		Fuel type: ${car.fuelType }
		<br><br>
		Drive type: ${car.driveType }
		<br><br>
		Transmission: ${car.transmission }
		<br><br>
		Car type: ${car.carType }
		<br><br>
		Color: ${car.color }
		<br><br>
		
	</body>
</html>