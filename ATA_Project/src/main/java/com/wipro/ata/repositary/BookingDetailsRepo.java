package com.wipro.ata.repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wipro.ata.entity.BookingDetails;

@Repository
public interface BookingDetailsRepo extends JpaRepository<BookingDetails, Integer> {
 
}
