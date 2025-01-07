package com.wipro.ata.entity;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Users {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	@Column(length = 25,nullable = false )
	private String firstname ;
	@Column(length = 25,nullable = false )
	private String lastname ;
	@Column(nullable = false )
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date dob;
	
	@Column(nullable = false )
	private int age;
	@Column(nullable = false )
	private char gender;
	@Column(length = 25,nullable = false )
	private String userRole = "USER";
	@Column(length = 25,nullable = false ,unique = true)
	private String emailId;
	@Column(length = 25,nullable = false ,unique = true)
	private String password;
	
//	private java.sql.Date
	@Column(nullable = false )
	private long phNo;				///watch it
	@Column(nullable = false )
	private String address;
	@Column(nullable = false )
	private int pincode;
	
	public Users() {
		super();
	}

	public Users( String firstname, String lastname, Date dob, int age, char gender, String userRole,
			String emailId, String password, long phNo, String address, int pincode) {
		super();
		this.userId = userId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.dob = dob;
		this.age = age;
		this.gender = gender;
		this.userRole = userRole;
		this.emailId = emailId;
		this.password = password;
		this.phNo = phNo;
		this.address = address;
		this.pincode = pincode;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getPhNo() {
		return phNo;
	}

	public void setPhNo(long phNo) {
		this.phNo = phNo;
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

	@Override
	public String toString() {
		return "Users [userId=" + userId + ", firstname=" + firstname + ", lastname=" + lastname + ", dob=" + dob
				+ ", age=" + age + ", gender=" + gender + ", userRole=" + userRole + ", emailId=" + emailId
				+ ", password=" + password + ", phNo=" + phNo + ", address=" + address + ", pincode=" + pincode + "]";
	}


	

}
