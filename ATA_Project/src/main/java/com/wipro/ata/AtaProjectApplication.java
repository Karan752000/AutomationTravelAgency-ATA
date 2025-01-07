package com.wipro.ata;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.wipro.ata.repositary.UserRepo;
import com.wipro.ata.serviceimpl.BookingDetailsServiceImpl;
import com.wipro.ata.serviceimpl.VehicleServiceImpl;

@SpringBootApplication
public class AtaProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(AtaProjectApplication.class, args);
	}

}
