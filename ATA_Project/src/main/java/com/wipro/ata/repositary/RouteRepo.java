package com.wipro.ata.repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wipro.ata.entity.Route;


@Repository
public interface RouteRepo extends JpaRepository<Route, Integer> {

}
