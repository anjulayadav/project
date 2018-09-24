package com.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpSession;

import com.project.utility.ConnectionProvider;

public class SweetHomeDAOImpl implements SweetHomeDAO {

	Connection con = ConnectionProvider.getConnection();
	String query = null;

	public String getQuery() {
		if (query == null) {
			return "select * from Data1";
		} else {
			return query;
		}
	}

	public void setFilteredQuery(String query) {
		this.query = query;
	}

	public boolean addUser(String fullname, String usertype, String username, String password, String contact,
			String email) throws SQLException {

		PreparedStatement ps = con.prepareStatement("insert into Users values(?,?,?,?,?,?)");
		ps.setString(1, fullname);
		ps.setString(2, usertype);
		ps.setString(3, username);
		ps.setString(4, password);
		ps.setString(5, contact);
		ps.setString(6, email);
		int i = ps.executeUpdate();
		System.out.println(i);
		return true;
	}

	public String validateUser(String username, String password) {
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement("select * from Users where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			String usertype;
			while (rs.next()) {
				usertype = rs.getString("USERTYPE");
				return usertype;

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	public ResultSet showAllProperty() {
		ResultSet rs = null;
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("select * from Property");
			rs = ps.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;

	}

	@Override
	public ResultSet checkConstraint(String[] arr) {

		return null;
	}

	@Override
	public ResultSet inTheCart() {
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("select * from Cart");
			ResultSet rs = ps.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public void addToCart(String propertyId, String username) {
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("insert into Cart values(?,?)");
			ps.setString(1, propertyId);
			ps.setString(2, username);
			ps.executeQuery();
			System.out.println("added to cart");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public int addProperty( String username, String ptype, String city, String location, int price,
			int rent, int deposit, int bedroom_no, int bathroom_no, String residence_type, String furnishing,
			String payment_mode, String transport_mode, String extra_facility, InputStream image) {

		PreparedStatement ps;
		try {

			ps = con.prepareStatement("insert into data1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
			ps.setString(1, username);
			ps.setString(2, ptype);
			ps.setString(3, city);
			ps.setString(4, location);
			ps.setInt(5, price);
			ps.setInt(6, rent);
			ps.setInt(7, deposit);
			ps.setInt(8, bedroom_no);
			ps.setInt(9, bathroom_no);
			ps.setString(10, residence_type);
			ps.setString(11, furnishing);
			ps.setString(12, payment_mode);
			ps.setString(13, transport_mode);
			ps.setString(14, extra_facility);
			ps.setBlob(15, image);
			int i = ps.executeUpdate();
			return i;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;

	}

	@Override
	public void showInterest(int propertyId, String username, String message) {
		// TODO Auto-generated method stub

	}
}
