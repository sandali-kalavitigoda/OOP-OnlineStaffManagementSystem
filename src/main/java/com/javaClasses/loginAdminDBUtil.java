package com.javaClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dbConnect.DBConnect;

public class loginAdminDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean validate(String userName, String password) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username='" + userName + "' and password='" + password + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static List<Admin> getAdmin(String username) {
		ArrayList<Admin> admin = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username='" + username + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username1 = rs.getString(5);
				String password = rs.getString(6);

				Admin adm = new Admin(id, name, email, phone, username1, password);
				admin.add(adm);
			}

		} catch (Exception e) {

		}

		return admin;

	}

	public static boolean insertstaff(String name, String email, String phone, String username, String password) {

		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into staff values (0,'" + name + "','" + email + "','" + phone + "','" + username
					+ "','" + password + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {

				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return isSuccess;

	}

	public static boolean deletestaff(String sname) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "delete from staff where name='" + sname + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return isSuccess;
	}

	public static List<Staff> getAllStaff() {
		List<Staff> stafs = new ArrayList<>();
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "select * from staff";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);

				Staff adm = new Staff(id, name, email, phone, username, password);
				stafs.add(adm);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return stafs;
	}

	public static Staff getStaff(int id) {
		Staff staff = null;
		try {
			con = DBConnect.getConnection();

			String sql = "select * from staff where id = ?";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet resultSet = statement.executeQuery();

			if (resultSet.next()) {
				String name = resultSet.getString("name");
				String email = resultSet.getString("email");
				String phone = resultSet.getString("phone");
				String username = resultSet.getString("username");
				String password = resultSet.getString("password");
				staff = new Staff(id, name, email, phone, username, password);
			}
			resultSet.close();
			statement.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return staff;
	}

	public static boolean updateStaff(Staff staff) {
		try {
			con = DBConnect.getConnection();

			String sql = "UPDATE staff SET name=?, email=?, phone=?,username=?,password=?";
			sql += " WHERE id = ?";

			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, staff.getName());
			statement.setString(2, staff.getEmail());
			statement.setString(3, staff.getPhone());
			statement.setString(4, staff.getUsername());
			statement.setString(5, staff.getPassword());
			statement.setInt(6, staff.getId());

			boolean rowUpdated = statement.executeUpdate() > 0;
			statement.close();
			return rowUpdated;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
