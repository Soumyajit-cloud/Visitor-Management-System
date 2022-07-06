package com.mvc.bean;

public class registerBeanVisitor {
	private String id;
	private String name;
	private String phone;
	private String address;
	private String date;
	private String time;
	private String meeting;
	private String reason;
	
	public String getid() {
		return id;
	}
	public void setid(String id) {
		this.id=id;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name=name;
	}
	public String getphone() {
		return phone;
	}
	public void setphone(String phone) {
		this.phone=phone;
	}
	public String getaddress() {
		return address;
	}
	public void setaddress(String address) {
		this.address=address;
	}
	public String getdate() {
		return date;
	}
	public void setdate(String date) {
		this.date=date;
	}
	public String gettime() {
		return time;
	}
	public void settime(String time) {
		this.time=time;
	}
	public String getmeeting() {
		return meeting;
	}
	public void setmeeting(String meeting) {
		this.meeting=meeting;
	}
	public void setreason(String reason) {
		this.reason=reason;
	}
	public String getreason() {
		return reason;
	}

}
