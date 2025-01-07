package com.wipro.ata.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.ata.entity.Driver;
import com.wipro.ata.repositary.DriverRepo;
import com.wipro.ata.service.DriverService;

@Service
public class DriverServiceImpl implements DriverService {

	@Autowired
	DriverRepo repo;
	
	


	@Override
	public Driver getDriverById(int id) {
		// TODO Auto-generated method stub
		Driver driver = new Driver();
		try {
			if(repo.existsById(id)) {
				driver = repo.findById(id).get();
			}else {
				throw new RuntimeException("route id does not exists to fetch");
			}
			
		}catch(Exception e) {
			e.getMessage();
		}
		return driver;
	}
	
	
}
