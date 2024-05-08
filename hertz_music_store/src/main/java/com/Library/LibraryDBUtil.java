package com.Library;


import java.sql.Connection;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cart.Ccart;



	public class LibraryDBUtil {
	  
	private static Connection con = null;
	   private static java.sql.Statement stmt = null;
	    private static ResultSet rs = null;	   
	   
	   //method get cart music list  
	   public static List<Ccart> getMusicList(int userid) {
		 //create a new Child cart arraylist
		ArrayList<Ccart> ct = new ArrayList<>();
		
		try {
			//start the database connection using get_connect method in CardDBUtil
			con = com.card.DBConnect.get_connect();
			stmt = con.createStatement();
			//query to select all cart items and retrieve it from the database
			String sql ="select * from cart userid='"+userid+"'" ;
			
		    rs = stmt.executeQuery(sql);
		   //while loop to add retrieved song_id to the child cart arraylist
			while(rs.next()) {
				int song_id1 = rs.getInt(1);
			    
			    Ccart cr = new Ccart (song_id1);
			    ct.add(cr);
		   }
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return ct; 
	   }
	   //buy music method to move the cart items to the bought items
	   public static boolean buymusic(int userid) {
		   boolean success = false;
			
			try {
				//start the database connection using get_connect method in CardDBUtil
				con = com.card.DBConnect.get_connect();
				stmt = con.createStatement();
				//query to select all cart items and retrieve it from the database
				String sql ="select * from cart where userid='"+userid+"'" ;
			    rs = stmt.executeQuery(sql);
			   
			    //while loop to delete data from the cart and insert it into the purchased_library
				while(rs.next()) {
					int song_id1 = rs.getInt(1);
					
					con = com.card.DBConnect.get_connect();
					stmt = con.createStatement();
					//query to delete the data from the cart
					String sql1 = "delete from cart where song_id='"+song_id1+"' and userid='"+userid+"'";
					//query to insert the data into purchased_library
					String sql2 = "insert into purchased_library values('"+userid+"','"+song_id1+"')";
					int rs1 = stmt.executeUpdate(sql1);
					int rs2 = stmt.executeUpdate(sql2);
					//check if the delete and the insertion was success
					if(rs1 > 0 && rs2 >0) {
						success = true;
					}
			   }
			}catch(Exception e) {
				e.printStackTrace();
			}

			
		   return success;
	   }
		
		   
	   }