package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {

	private static Connection conn;

	public static Connection getConn() {

		try {

			if (conn == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal", "root", "@aartiankit@");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}

}
