package com.example.demo.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Police {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String pusername;
	private String ppass;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPusername() {
		return pusername;
	}
	public void setPusername(String pusername) {
		this.pusername = pusername;
	}
	public String getPpass() {
		return ppass;
	}
	public void setPpass(String ppass) {
		this.ppass = ppass;
	}
	@Override
	public String toString() {
		return "Police [id=" + id + ", pusername=" + pusername + ", ppass=" + ppass + "]";
	}
	
	
	
}
