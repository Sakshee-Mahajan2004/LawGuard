package com.example.demo.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.CrimeEntry;
import com.example.demo.Model.Police;
import com.example.demo.Repo.CrimeEntryRepo;
import com.example.demo.Repo.PoliceRepo;
import com.example.demo.Service.CrimeEntryService;


@Service
public class CrimeEntryDao implements CrimeEntryService
{

	@Autowired
	CrimeEntryRepo cr;
	
	@Autowired
	PoliceRepo pr;
	
	@Override
	public void SaveCrimeInfo(CrimeEntry c1) {
		 cr.save(c1);
	}

	@Override
	public Police CheckLoginCred(String us, String ps) {
		
		return pr.findByPusernameAndPpass(us, ps);
	
	}

	


}
