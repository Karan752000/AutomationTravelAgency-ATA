package com.wipro.ata.entity;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;

@Entity
public class BookingDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bookingId;

	@OneToOne
	@JoinColumn(name = "userid")
	private Users user;

	@Column(nullable = false)
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date bookingDate;

	@Column(nullable = false)
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date journeyDate;
	
	@Column(length = 25, nullable = false)
	private String boardingPoint;
	
	@Column(length = 25, nullable = false)
	private String dropingPoint;
	
	@Column(length = 25, nullable = false)
	private String bookingStatus;
	
	@Column(nullable = false)
	private double price;
	
	@Column(nullable = false)
	private int vehicleId;
	
	@OneToOne
	@JoinColumn(name = "routeId")
	private Route route;
	
	@OneToOne
	@JoinColumn(name = "driverId")
	private Driver driver;
	
	@Column(length = 25, nullable = false)
	private String payment;

	public BookingDetails() {
		super();
	}

	public BookingDetails(Users user, Date bookingDate, Date journeyDate, String boardingPoint, String dropingPoint,
			String bookingStatus, double price, int vehicleId, Route route, Driver driver, String payment) {
		super();
		this.user = user;
		this.bookingDate = bookingDate;
		this.journeyDate = journeyDate;
		this.boardingPoint = boardingPoint;
		this.dropingPoint = dropingPoint;
		this.bookingStatus = bookingStatus;
		this.price = price;
		this.vehicleId = vehicleId;
		this.route = route;
		this.driver = driver;
		this.payment = payment;
	}

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public Date getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}

	public Date getJourneyDate() {
		return journeyDate;
	}

	public void setJourneyDate(Date journeyDate) {
		this.journeyDate = journeyDate;
	}

	public String getBoardingPoint() {
		return boardingPoint;
	}

	public void setBoardingPoint(String boardingPoint) {
		this.boardingPoint = boardingPoint;
	}

	public String getDropingPoint() {
		return dropingPoint;
	}

	public void setDropingPoint(String dropingPoint) {
		this.dropingPoint = dropingPoint;
	}

	public String getBookingStatus() {
		return bookingStatus;
	}

	public void setBookingStatus(String bookingStatus) {
		this.bookingStatus = bookingStatus;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getVehicleId() {
		return vehicleId;
	}

	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}

	public Route getRoute() {
		return route;
	}

	public void setRoute(Route route) {
		this.route = route;
	}

	public Driver getDriver() {
		return driver;
	}

	public void setDriver(Driver driver) {
		this.driver = driver;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "BookingDetails [bookingId=" + bookingId + ", user=" + user + ", bookingDate=" + bookingDate
				+ ", journeyDate=" + journeyDate + ", boardingPoint=" + boardingPoint + ", dropingPoint=" + dropingPoint
				+ ", bookingStatus=" + bookingStatus + ", price=" + price + ", vehicleId=" + vehicleId + ", route="
				+ route + ", driver=" + driver + ", payment=" + payment + "]";
	}

	
}
