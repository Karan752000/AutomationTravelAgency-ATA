package com.wipro.ata.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Driver {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int DriverId;
	
	@Column(length = 25,nullable = false)
	private String name;
	@Column(length = 25,nullable = false)
	private String address;
	@Column(nullable = false)
	private int pincode;
	@Column(nullable = false)
	private long mobileNo;
	@Column(length = 25,nullable = false , unique = true)
	private String licenseNumber;
	
	public Driver() {
		super();
	}

	public Driver(int driverId, String name, String address, int pincode, long mobileNo, String licenseNumber) {
		super();
		DriverId = driverId;
		this.name = name;
		this.address = address;
		this.pincode = pincode;
		this.mobileNo = mobileNo;
		this.licenseNumber = licenseNumber;
	}

	public int getDriverId() {
		return DriverId;
	}

	public void setDriverId(int driverId) {
		DriverId = driverId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getLicenseNumber() {
		return licenseNumber;
	}

	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}

	@Override
	public String toString() {
		return "Driver [DriverId=" + DriverId + ", name=" + name + ", address=" + address + ", pincode=" + pincode
				+ ", mobileNo=" + mobileNo + ", licenseNumber=" + licenseNumber + "]";
	}

	
	
	
	
	
}
