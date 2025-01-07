package com.wipro.ata.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import com.wipro.ata.entity.Vehicle;
import com.wipro.ata.repositary.VehicleRepo;
import com.wipro.ata.service.VehicleService;

@Service
public class VehicleServiceImpl implements VehicleService {
	
	@Autowired
	private  VehicleRepo vehicleRepo;

	@Override
	public String addVehicle(Vehicle v) {
		// TODO Auto-generated method stub		
		if(vehicleRepo.findVehicleByRegNo(v.getRegNo())!=null) {
			return "reg no exists";
		}
		else {
			vehicleRepo.saveAndFlush(v);
			return "Added";
		}
		

		
	}

	@Override
	public List<Vehicle> showVehiclesDetails() {
		return vehicleRepo.findAll();
		
	}

	@Override
	public void deleteVehicleById(int id) {
		// TODO Auto-generated method stub
		if(vehicleRepo.existsById(id)==true) {
			vehicleRepo.deleteById(id);

		}else {
			throw new  RuntimeException("vehicle id does not exists");
		}
		
	}

	@Override
	public void updateVehicleById(Vehicle v) {
		// TODO Auto-generated method stub
		vehicleRepo.saveAndFlush(v);
		
	}
	
	@Override
	public Vehicle getVehicleById(int id){
		return vehicleRepo.findById(id).get();
	}
	
	
	
	

}
