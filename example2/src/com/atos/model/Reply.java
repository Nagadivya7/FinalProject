package com.atos.model;

public class Reply {
private String fname;
private String lname;
private String email;
private long mobile;
private int availabilityOfRooms;
private String duration;
private String timeSlots;
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
public long getMobile() {
	return mobile;
}
public void setMobile(long mobile) {
	this.mobile = mobile;
}
public int getAvailabilityOfRooms() {
	return availabilityOfRooms;
}
public void setAvailabilityOfRooms(int availabilityOfRooms) {
	this.availabilityOfRooms = availabilityOfRooms;
}
public String getDuration() {
	return duration;
}
public void setDuration(String duration) {
	this.duration = duration;
}
public String getTimeSlots() {
	return timeSlots;
}
public void setTimeSlots(String timeSlots) {
	this.timeSlots = timeSlots;
}
@Override
public String toString() {
	return "Reply [fname=" + fname + ", lname=" + lname + ", email=" + email + ", mobile=" + mobile
			+ ", availabilityOfRooms=" + availabilityOfRooms + ", duration=" + duration + ", timeSlots=" + timeSlots
			+ "]";
}

}
