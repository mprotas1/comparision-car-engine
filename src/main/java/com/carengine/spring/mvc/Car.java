package com.carengine.spring.mvc;

import java.util.ArrayList;
import java.util.Collections;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;

@PropertySource("classpath:car.properties")
public class Car {
	// here add all the entity's properties
	@NotNull
	private String carCondition;
	
	@NotNull
	@Size(min = 1, message = "is required")
	private String vehicleBrand;
	
	@NotNull
	@Size(min=1, message="Minimum 1 character!")
	private String vehicleModel;
	
	@NotNull
	@Min(1900)
	@Max(2023)
	private Integer productionYear;
	
	@NotNull
	@Min(value = 1, message="Must be higher or equal to 1")
	private Double mileage;
	
	@NotNull
	@Min(value=1, message="Must be higher or equal to 1")
	private Double horsePower;
	
	@NotNull
	@Min((long) 0.1)
	private Double displacementSize;
	
	@NotNull
	private String fuelType;
	
	@NotNull
	private String driveType;
	
	@NotNull
	private String transmission;
	
	private String carType;
	
	@NotNull(message="is required")
	// color of car
	private String color;
	
	private ArrayList<String> carConditions;
	private ArrayList<String> fuelTypes;
	private ArrayList<String> driveTypes;
	private ArrayList<String> transmissionTypes;
	private ArrayList<String> carTypes;
	
	public Car() {
		carConditions = new ArrayList<String>();
		carConditions.add("New");
		carConditions.add("Used");
		carConditions.add("Crashed");
		
		fuelTypes = new ArrayList<String>();
		fuelTypes.add("Petrol");
		fuelTypes.add("Diesel");
		fuelTypes.add("Hybrid");
		fuelTypes.add("Electric");
		
		driveTypes = new ArrayList<String>();
		driveTypes.add("AWD");
		driveTypes.add("RWD");
		driveTypes.add("FWD");
		
		transmissionTypes = new ArrayList<String>();
		transmissionTypes.add("Manual");
		transmissionTypes.add("Automatic");
		
		carTypes = new ArrayList<String>();
		carTypes.add("Combi");
		carTypes.add("SUV");
		carTypes.add("Coupe");
		carTypes.add("Cabrio");
		carTypes.add("City car");
		carTypes.add("Compact");
		carTypes.add("Minivan");
		carTypes.add("Sedan");
		
		Collections.sort(carTypes);
	}
	
	public ArrayList<String> getDriveTypes() {
		return driveTypes;
	}

	public ArrayList<String> getCarTypes() {
		return carTypes;
	}
	
	public ArrayList<String> getTransmissionTypes() {
		return transmissionTypes;
	}
	
	public String getCarType() {
		return carType;
	}

	public void setCarType(String carType) {
		this.carType = carType;
	}
	
	public String getCarCondition() {
		return carCondition;
	}

	public void setCarCondition(String carCondition) {
		this.carCondition = carCondition;
	}

	public String getVehicleBrand() {
		return vehicleBrand;
	}

	public void setVehicleBrand(String vehicleBrand) {
		this.vehicleBrand = vehicleBrand;
	}

	public String getVehicleModel() {
		return vehicleModel;
	}

	public void setVehicleModel(String vehicleModel) {
		this.vehicleModel = vehicleModel;
	}

	public Integer getProductionYear() {
		return productionYear;
	}

	public void setProductionYear(Integer productionYear) {
		this.productionYear = productionYear;
	}

	public Double getMileage() {
		return mileage;
	}

	public void setMileage(Double mileage) {
		this.mileage = mileage;
	}

	public Double getHorsePower() {
		return horsePower;
	}

	public void setHorsePower(Double horsePower) {
		this.horsePower = horsePower;
	}

	public Double getDisplacementSize() {
		return displacementSize;
	}

	public void setDisplacementSize(Double displacementSize) {
		this.displacementSize = displacementSize;
	}

	public String getFuelType() {
		return fuelType;
	}

	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}

	public String getDriveType() {
		return driveType;
	}

	public void setDriveType(String driveType) {
		this.driveType = driveType;
	}
	
	public String getTransmission() {
		return transmission;
	}

	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
	public ArrayList<String> getCarConditions() {
		return carConditions;
	}
	
	public ArrayList<String> getFuelTypes() {
		return fuelTypes;
	}
}
