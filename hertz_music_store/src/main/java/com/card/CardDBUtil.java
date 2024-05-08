package com.card;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CardDBUtil { 
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//function to retrieve card data from the database
	public static List<Card> selectallcards(int userid){
		//create a new card arraylist
		ArrayList<Card> card = new ArrayList<Card>();
		
		try {
			//start the database connection using get_connect method in CardDBUtil
			con = DBConnect.get_connect();
			stmt = con.createStatement();
			//query to select all cards and retrieve it from the database
			String sql = "select * from card where userid='"+userid+"'";
			rs = stmt.executeQuery(sql);
			
				//While loop to add retrieved data to the Card class instances
				while(rs.next()) {
					int userid1 = rs.getInt(1);
					int cardid = rs.getInt(2);
					String card_name = rs.getString(3);
					String card_number = rs.getString(4);
					int cvv = rs.getInt(5);
					int month = rs.getInt(6);
					int year = rs.getInt(7);
					card.add(new Card(userid1,cardid,card_name,card_number,cvv,month,year));
				}
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return card;
		
	}
	//function to select all Pcard data
	public static List<Pcard> selectallPcards(int userid){
		//create a new Pcard arraylist
		ArrayList<Pcard> pcard = new ArrayList<Pcard>();
		
		try {
			//start the database connection using get_connect method in CardDBUtil
			con = DBConnect.get_connect();
			stmt = con.createStatement();
			//query to select all cards and retrieve it from the database
			String sql = "select * from card where userid='"+userid+"'";
			rs = stmt.executeQuery(sql);
				
				//while loop to add retrieved data to the Pcard class instances
				while(rs.next()) {
					int userid1 = rs.getInt(1);
					int cardid = rs.getInt(2);
					String card_name = rs.getString(3);
					String card_number = rs.getString(4);
					pcard.add(new Pcard(userid1,cardid,card_name,card_number));
				}
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return pcard;
		
	}
	//function to create and add a card
	public static boolean card_add (int userid, String card_name, String card_number, int cvv, int expire_month, int expire_year ) {
		
		boolean isSuccess = false;
		
		try {
			//start the database connection using get_connect method in CardDBUtil
			con = DBConnect.get_connect();
			stmt = con.createStatement();
			//query to insert card details into the database
			String sql = "insert into card values ('"+userid+"',0,'"+card_name+"','"+card_number+"','"+cvv+"','"+expire_month+"','"+expire_year+"')";
			int rs = stmt.executeUpdate(sql);
			
			//Check if the data insertion is success
			if(rs > 0) {
				isSuccess = true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	
	}
	//function to edit and update a card
	public static boolean cardedit(int id, String name, String number, int cvv, int month, int year) {
		boolean isSuccess = false;
		
		try {
			//start the database connection using get_connect method in CardDBUtil
			con = DBConnect.get_connect();
			stmt = con.createStatement();
			//query to update selected card data in the database
			String sql = "update card set card_name='"+name+"' ,card_number='"+number+"' ,cvv='"+cvv+"' ,expire_month='"+month+"' ,expire_year='"+year+"'"
					+ "where idcard='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			//Check if the data update is success
			if(rs > 0) {
				isSuccess = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();	
			}
		
		
		return isSuccess;
	}
	//function to delete a card
	public static boolean deletecard(int card_id) {
		boolean issuccess = false;
		
		try {
			//start the database connection using get_connect method in CardDBUtil
			con = DBConnect.get_connect();
			stmt = con.createStatement();
			//query to delete selected card from the database
			String sql = "delete from card where idcard='"+card_id+"'";
			int rs = stmt.executeUpdate(sql);
			
			//Check if the data delete is success
			if(rs > 0) {
				issuccess = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();	
			}
		
		
		
		return issuccess;
	}

}