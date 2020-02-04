package com.atos.model;

public class Trm {
	private int noOfTrainers;
	private String platform;
	private String duration;
	private String location;
	public int getNoOfTrainers() {
		return noOfTrainers;
	}
	public void setNoOfTrainers(int noOfTrainers) {
		this.noOfTrainers = noOfTrainers;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "Trm [noOfTrainers=" + noOfTrainers + ", platform=" + platform + ", duration=" + duration + ", location="
				+ location + "]";
	}
	
}
