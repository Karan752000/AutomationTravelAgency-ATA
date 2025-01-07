package com.wipro.ata.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.stereotype.Service;

import com.wipro.ata.entity.Route;
import com.wipro.ata.repositary.RouteRepo;
import com.wipro.ata.service.RouteService;

@Service
public class RouteServiceImpl implements RouteService {
	
	@Autowired
	RouteRepo repo;



	@Override
	public Route getRouteById(int id) {
		// TODO Auto-generated method stub
		Route route = new Route();
		try {
			
			if(repo.existsById(id)) {
				route = repo.findById(id).get();
			}else {
				throw new RuntimeException("route id does not exists to fetch");
			}
			
		}catch(Exception e) {
			e.getMessage();
		}
		
		return route;
	}
	
	

}
