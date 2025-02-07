package com.mireu.app.locations;

public class LocationDTO {
	private int location_id;
	private String streeat_address;
	private String postal_code;
	private String city;
	private String stat_province;
	private String country_id;
	public int getLocation_id() {
		return location_id;
	}
	public void setLocation_id(int location_id) {
		this.location_id = location_id;
	}
	public String getStreeat_address() {
		return streeat_address;
	}
	public void setStreeat_address(String streeat_address) {
		this.streeat_address = streeat_address;
	}
	public String getPostal_code() {
		return postal_code;
	}
	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getStat_province() {
		return stat_province;
	}
	public void setStat_province(String stat_province) {
		this.stat_province = stat_province;
	}
	public String getCountry_id() {
		return country_id;
	}
	public void setCountry_id(String country_id) {
		this.country_id = country_id;
	}
	
	
}
