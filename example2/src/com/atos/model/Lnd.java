package com.atos.model;

public class Lnd {
	private int noOfTrainers;
	private int availabilityOfRooms;
	private String timeSlots;
	public int getNoOfTrainers() {
		return noOfTrainers;
	}
	public void setNoOfTrainers(int noOfTrainers) {
		this.noOfTrainers = noOfTrainers;
	}
	public int getAvailabilityOfRooms() {
		return availabilityOfRooms;
	}
	public void setAvailabilityOfRooms(int availabilityOfRooms) {
		this.availabilityOfRooms = availabilityOfRooms;
	}
	public String getTimeSlots() {
		return timeSlots;
	}
	public void setTimeSlots(String timeSlots) {
		this.timeSlots = timeSlots;
	}
	@Override
	public String toString() {
		return "Lnd [noOfTrainers=" + noOfTrainers + ", availabilityOfRooms=" + availabilityOfRooms + ", timeSlots="
				+ timeSlots + "]";
	}
	
	

}
