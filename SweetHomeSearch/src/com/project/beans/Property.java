package com.project.beans;

public class Property {

	String propertyId ;
	String username ;
	String ptype;
	String city ;
	String location ;
	 int price ;
	int rent ;
	int deposit ;
	int bedroom_no;
	int bathroom_no;
	String residence_type;
	String furnishing; 
	String payment_mode ;
	String image ;
	String transport_mode ;
	String extra_facility;
	public Property() {
		super();
	}
	@Override
	public String toString() {
		return "Property [propertyId=" + propertyId + ", username=" + username + ", ptype=" + ptype + ", city=" + city
				+ ", location=" + location + ", price=" + price + ", rent=" + rent + ", deposit=" + deposit
				+ ", bedroom_no=" + bedroom_no + ", bathroom_no=" + bathroom_no + ", residence_type=" + residence_type
				+ ", furnishing=" + furnishing + ", payment_mode=" + payment_mode + ", image=" + image
				+ ", transport_mode=" + transport_mode + ", extra_facility=" + extra_facility + "]";
	}
	public String getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(String propertyId) {
		this.propertyId = propertyId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getRent() {
		return rent;
	}
	public void setRent(int rent) {
		this.rent = rent;
	}
	public int getDeposit() {
		return deposit;
	}
	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
	public int getBedroom_no() {
		return bedroom_no;
	}
	public void setBedroom_no(int bedroom_no) {
		this.bedroom_no = bedroom_no;
	}
	public int getBathroom_no() {
		return bathroom_no;
	}
	public void setBathroom_no(int bathroom_no) {
		this.bathroom_no = bathroom_no;
	}
	public String getResidence_type() {
		return residence_type;
	}
	public void setResidence_type(String residence_type) {
		this.residence_type = residence_type;
	}
	public String getFurnishing() {
		return furnishing;
	}
	public void setFurnishing(String furnishing) {
		this.furnishing = furnishing;
	}
	public String getPayment_mode() {
		return payment_mode;
	}
	public void setPayment_mode(String payment_mode) {
		this.payment_mode = payment_mode;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTransport_mode() {
		return transport_mode;
	}
	public void setTransport_mode(String transport_mode) {
		this.transport_mode = transport_mode;
	}
	public String getExtra_facility() {
		return extra_facility;
	}
	public void setExtra_facility(String extra_facility) {
		this.extra_facility = extra_facility;
	}
	public Property(String propertyId, String username, String ptype, String city, String location, int price, int rent,
			int deposit, int bedroom_no, int bathroom_no, String residence_type, String furnishing, String payment_mode,
			String image, String transport_mode, String extra_facility) {
		super();
		this.propertyId = propertyId;
		this.username = username;
		this.ptype = ptype;
		this.city = city;
		this.location = location;
		this.price = price;
		this.rent = rent;
		this.deposit = deposit;
		this.bedroom_no = bedroom_no;
		this.bathroom_no = bathroom_no;
		this.residence_type = residence_type;
		this.furnishing = furnishing;
		this.payment_mode = payment_mode;
		this.image = image;
		this.transport_mode = transport_mode;
		this.extra_facility = extra_facility;
	}
	
}
