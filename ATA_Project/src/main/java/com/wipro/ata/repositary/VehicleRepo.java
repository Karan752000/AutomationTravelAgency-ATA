package com.wipro.ata.repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.wipro.ata.entity.Vehicle;

@Repository
public interface VehicleRepo extends JpaRepository<Vehicle, Integer>{

	@Query("select v from Vehicle v where v.regNo=?1")
	public Vehicle findVehicleByRegNo(String registrationNo);
}
