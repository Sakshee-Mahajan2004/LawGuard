package com.example.demo.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Model.CrimeEntry;
import com.example.demo.Model.Police;
import com.example.demo.Service.CrimeEntryService;

@Controller
public class CrimeEntryController {
	
	
	@Autowired
	CrimeEntryService cs;
	
	@RequestMapping("/")
	public String two()
	{
		return "LoginPage";
	}
	
	@RequestMapping("CrimeEntry")
	public String one()
	{
		return "CrimeEntry";
	}
	
	@PostMapping("SaveCrimeInfo")
	public String Savedata(@ModelAttribute("c1") CrimeEntry c1)
	{
		cs.SaveCrimeInfo(c1);
		System.out.println(c1);
		return "redirect:/CrimeEntry";
		
	}
	
	
	
	@PostMapping("LoginCred")
	public String login(@RequestParam("us") String us,@RequestParam("ps") String ps)
	{
		Police pc=cs.CheckLoginCred(us,ps);
		if(pc!=null)
		{
			return "redirect:/dashboard";
		}
		return "LoginPage";
		
	}
	
	@RequestMapping("dashboard")
	public String three()
	{
		return "dashboard";
	}
	
}
