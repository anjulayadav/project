package com.project.beans;

public class Property {

	
	int propertyid;
	String username;
	String ptype;
	String city;
	String location;
	int price;
	int rent;
	int deposit;
	int bedroomNo;
	int bathroomNo;
	String residenceType;
	String furnishing;
	String paymentMode;
	String image;
	String transportMode;
	String extraFacility;
	public Property() {
		super();
	}
	public Property(int propertyid, String username, String ptype, String city, String location, int price, int rent,
			int deposit, int bedroomNo, int bathroomNo, String residenceType, String furnishing, String paymentMode,
			String image, String transportMode, String extraFacility) {
		super();
		this.propertyid = propertyid;
		this.username = username;
		this.ptype = ptype;
		this.city = city;
		this.location = location;
		this.price = price;
		this.rent = rent;
		this.deposit = deposit;
		this.bedroomNo = bedroomNo;
		this.bathroomNo = bathroomNo;
		this.residenceType = residenceType;
		this.furnishing = furnishing;
		this.paymentMode = paymentMode;
		this.image = image;
		this.transportMode = transportMode;
		this.extraFacility = extraFacility;
	}
	public int getPropertyid() {
		return propertyid;
	}
	public void setPropertyid(int propertyid) {
		this.propertyid = propertyid;
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
	public int getBedroomNo() {
		return bedroomNo;
	}
	public void setBedroomNo(int bedroomNo) {
		this.bedroomNo = bedroomNo;
	}
	public int getBathroomNo() {
		return bathroomNo;
	}
	public void setBathroomNo(int bathroomNo) {
		this.bathroomNo = bathroomNo;
	}
	public String getResidenceType() {
		return residenceType;
	}
	public void setResidenceType(String residenceType) {
		this.residenceType = residenceType;
	}
	public String getFurnishing() {
		return furnishing;
	}
	public void setFurnishing(String furnishing) {
		this.furnishing = furnishing;
	}
	public String getPaymentMode() {
		return paymentMode;
	}
	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTransportMode() {
		return transportMode;
	}
	public void setTransportMode(String transportMode) {
		this.transportMode = transportMode;
	}
	public String getExtraFacility() {
		return extraFacility;
	}
	public void setExtraFacility(String extraFacility) {
		this.extraFacility = extraFacility;
	}
	@Override
	public String toString() {
		return "Property [propertyid=" + propertyid + ", username=" + username + ", ptype=" + ptype + ", city=" + city
				+ ", location=" + location + ", price=" + price + ", rent=" + rent + ", deposit=" + deposit
				+ ", bedroomNo=" + bedroomNo + ", bathroomNo=" + bathroomNo + ", residenceType=" + residenceType
				+ ", furnishing=" + furnishing + ", paymentMode=" + paymentMode + ", image=" + image
				+ ", transportMode=" + transportMode + ", extraFacility=" + extraFacility + "]";
	}
	
	
}
