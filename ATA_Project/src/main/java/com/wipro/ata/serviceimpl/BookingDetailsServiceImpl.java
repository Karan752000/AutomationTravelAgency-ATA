package com.wipro.ata.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.ata.entity.BookingDetails;
import com.wipro.ata.repositary.BookingDetailsRepo;
import com.wipro.ata.service.BookingDetailsService;

@Service
public class BookingDetailsServiceImpl implements BookingDetailsService {

	@Autowired
	private BookingDetailsRepo repo;
	
	@Override
	public List<BookingDetails> getAllBookings() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}
}
