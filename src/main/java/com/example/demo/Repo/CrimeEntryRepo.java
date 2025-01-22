package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Model.CrimeEntry;


public interface CrimeEntryRepo extends JpaRepository<CrimeEntry, Integer> {
	
	

}
