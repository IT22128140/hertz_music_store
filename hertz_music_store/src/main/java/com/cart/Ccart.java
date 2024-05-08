package com.cart;

public class Ccart {
    private int song_id;  
     

    public Ccart(int song_id) {
        this.song_id = song_id;
    }

    
    public int getsong_id() {
        return song_id;
    }


	@Override
	public String toString() {
		return "Cart [song_id=" + song_id + "";
	}
    
}