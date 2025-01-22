package com.example.demo.Service;

import com.example.demo.Model.CrimeEntry;
import com.example.demo.Model.Police;

public interface CrimeEntryService
{
    public void SaveCrimeInfo(CrimeEntry c1);
    
    public Police CheckLoginCred(String us, String ps);
    
}
