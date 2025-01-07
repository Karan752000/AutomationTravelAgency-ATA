package com.wipro.ata.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Route {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int routeId;
	@Column(length = 25,nullable = false)
	private String source;
	@Column(length = 25,nullable = false)
	private String destination;
	@Column(nullable = false)
	private int distance;
	@Column(length = 15,nullable = false)
	private String travelDuration;
	
	public Route() {
		super();
	}

	public Route( String source, String destination, int distance, String travelDuration) {
		super();
		this.routeId = routeId;
		this.source = source;
		this.destination = destination;
		this.distance = distance;
		this.travelDuration = travelDuration;
	}

	public int getRouteId() {
		return routeId;
	}

	public void setRouteId(int routeId) {
		this.routeId = routeId;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public int getDistance() {
		return distance;
	}

	public void setDistance(int distance) {
		this.distance = distance;
	}

	public String getTravelDuration() {
		return travelDuration;
	}

	public void setTravelDuration(String travelDuration) {
		this.travelDuration = travelDuration;
	}

	@Override
	public String toString() {
		return "Route [routeId=" + routeId + ", source=" + source + ", destination=" + destination + ", distance="
				+ distance + ", travelDuration=" + travelDuration + "]";
	}

	
	

}
