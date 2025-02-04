package com.mireu.app.ztest;

import java.sql.Connection;

import com.mireu.app.utils.DBConnection;

public class ConnectionTest  {
	public static void main(String[] args) {
		try {
			Connection con = DBConnection.getConnection();
			if(con != null) {
				System.out.println("테스트통과");
			} else {
				System.out.println("실패");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
