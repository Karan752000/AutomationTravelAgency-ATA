package com.wipro.ata.service;

import java.util.List;

import com.wipro.ata.entity.Vehicle;

public interface VehicleService {
	
	public String addVehicle(Vehicle v);
	public List<Vehicle> showVehiclesDetails();
	public void deleteVehicleById(int id);
	public void updateVehicleById(Vehicle v);
	public Vehicle getVehicleById(int id);

}
