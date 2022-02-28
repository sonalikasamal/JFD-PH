package com.flightbooking.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.simplelearn.util.StringUtil;

public class ConnectionUtil {
public Connection con=null;
public Statement st=null;
	public ConnectionUtil() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway","jacksparow","sona@123");
		System.out.println("connection established with database");
		st=con.createStatement();
	}
	public List<String[]> getAvailableFlights(String f, String t, String d,String trvl) throws Exception  {
		List<String[]> flights=new ArrayList<>();
		
		
		try {
			String query="SELECT * FROM flyaway.flights where from_='"+f+"' and to_='"+t+"' and date_add='"+d+"'";
			ResultSet rs=st.executeQuery(query);
			if(rs.next()) {
				String[] flight=new String[7];
				flight[0]=rs.getString("flight_No");
				flight[1]=rs.getString("name_");
				flight[2]=rs.getString("time_add");
				flight[3]=rs.getString("price");
				flight[4]=rs.getString("Seats");
				flight[5]=trvl;
				flight[6]=String.valueOf(Integer.parseInt(trvl)*Double.parseDouble(rs.getString("price")));
				flights.add(flight);
				return flights;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public HashMap<String, String> checkUser(String email, String password) {
		HashMap<String,String> user=null;
		String query="select * from user where email='"+email+"' and password='"+password+"'";
		try {
			ResultSet rs=st.executeQuery(query);
			if(rs.next()) {
				user=new HashMap<String, String>();
				user.put("name", rs.getString("name"));
				user.put("email",rs.getString("email"));
				user.put("phno",rs.getString("phno"));
				user.put("adno",rs.getString("adno"));
				}
			return user;
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	public boolean insertUser(HashMap<String, String> user) {
		String query="INSERT INTO user (email, password, name, phno, adno) values('"+user.get("email")+"','"+user.get("password")+"','"+user.get("name")+"','"+user.get("phno")+"','"+user.get("adno")+"')"; 
		try {
			st.execute(query);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean checkAdmin(String email, String password) {
		try {
			ResultSet rs=st.executeQuery("select * from admin where email='"+email+"' and password='"+password+"'");
			if(rs.next())
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean changeAdminPassword(String email, String password) {
		try {
			ResultSet rs=st.executeQuery("select * from admin where email='"+email+"'");
			if(!rs.next()) {
				return false;
			}
			st.execute("update admin set password='"+password+"' where email='"+email+"'");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean insertFlight(HashMap<String,String> flight) throws SQLException {
		
		String query1 = "INSERT INTO flights (flight_No, name_, from_, to_, date_add, time_add, price, Seats) "+ "VALUES" + " ('"+ StringUtil.fixSqlFieldValue(flight.get("no")) + "'," + " '"+ StringUtil.fixSqlFieldValue(flight.get("name")) + "'," + " '"+ StringUtil.fixSqlFieldValue(flight.get("from")) + "'," + " '"+ StringUtil.fixSqlFieldValue(flight.get("to")) + "'," + " '" + StringUtil.fixSqlFieldValue(flight.get("date")) + "'," + " '"+ StringUtil.fixSqlFieldValue(flight.get("time")) + "'," + " '"+ StringUtil.fixSqlFieldValue(flight.get("price"))+ "'," + " '" + StringUtil.fixSqlFieldValue(flight.get("seats")) + "')";
		System.out.println(flight.get("date"));
		System.out.println(flight.get("time"));
		try {
			//stm.execute();
			st.execute(query1);
			return true;
		} catch (SQLException e) {
			System.out.print("error");
			e.printStackTrace();
		}	
		return false;
	}
	
}