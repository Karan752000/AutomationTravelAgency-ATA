package com.wipro.ata.repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wipro.ata.entity.Driver;




@Repository
public interface DriverRepo extends JpaRepository<Driver, Integer> {

}

