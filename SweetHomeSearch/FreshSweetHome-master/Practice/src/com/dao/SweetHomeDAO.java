package com.dao;

import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;

public interface SweetHomeDAO {

	public boolean addUser(String fullname,String usertype,String username, String password,String contact, String email) throws SQLException;
	
	public String validateUser(String username, String password);
	
	public ResultSet showAllProperty();
	
	public ResultSet checkConstraint(String arr[]);
	
	public ResultSet inTheCart();
	
	public void addToCart(String propertyId , String username);
	
	public int addProperty( String username , String ptype,  String city , String location , int price ,int rent ,
			int deposit ,int bedroom_no ,int bathroom_no ,String residence_type ,String furnishing,String payment_mode ,String transport_mode ,String extra_facility,InputStream image);
	
	public void showInterest(int propertyId,String username,String message); 
	
}

