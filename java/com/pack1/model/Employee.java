package com.pack1.model;

public class Employee {
	private int eid;
	private String fname;
	private String lname;
	private String email;
	private long phone;
	private int age;
	private String gender;
	private double sal;
	private String role;
	private double experience;
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public double getExperience() {
		return experience;
	}
	public void setExperience(double experience) {
		this.experience = experience;
	}
	public Employee(int eid, String fname, String lname, String email, long phone, int age, String gender, double sal,
			String role, double experience) {
		this.eid = eid;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.phone = phone;
		this.age = age;
		this.gender = gender;
		this.sal = sal;
		this.role = role;
		this.experience = experience;
	}
	public Employee() {
	}
}
