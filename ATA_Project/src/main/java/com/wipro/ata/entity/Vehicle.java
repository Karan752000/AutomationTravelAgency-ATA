package com.wipro.ata.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;


@Entity
public class Vehicle {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int vehicleId;				
	@Column(length = 25,nullable = false)
	private String name;
	@Column(length = 25,nullable = false)
	private String type;
	@Column(length = 25,nullable = false)			
	private String ac;
	@Column(length = 25,nullable = false)
	private String regNo;
	@Column(nullable = false )
	private int seatingCapacity;
	@Column(nullable = false)
	private double pricePerKm;
	
	
	
	
	
	public Vehicle() {
		super();
	}

	public Vehicle(String name, String type, String ac, String regNo, int seatingCapacity,
			double pricePerKm) {
		super();
		this.vehicleId = vehicleId;
		this.name = name;
		this.type = type;
		this.ac = ac;
		this.regNo = regNo;
		this.seatingCapacity = seatingCapacity;
		this.pricePerKm = pricePerKm;
	}

	public Integer getVehicleId() {
		return vehicleId;
	}

	public void setVehicleId(Integer vehicleId) {
		this.vehicleId = vehicleId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAc() {
		return ac;
	}

	public void setAc(String ac) {
		this.ac = ac;
	}

	public String getRegNo() {
		return regNo;
	}

	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}

	public int getSeatingCapacity() {
		return seatingCapacity;
	}

	public void setSeatingCapacity(int seatingCapacity) {
		this.seatingCapacity = seatingCapacity;
	}

	public double getPricePerKm() {
		return pricePerKm;
	}

	public void setPricePerKm(double pricePerKm) {
		this.pricePerKm = pricePerKm;
	}

	@Override
	public String toString() {
		return "Vehicle [vehicleId=" + vehicleId + ", name=" + name + ", type=" + type + ", ac=" + ac + ", regNo="
				+ regNo + ", seatingCapacity=" + seatingCapacity + ", pricePerKm=" + pricePerKm + "]";
	}
	
	
	

	
	
	
}
