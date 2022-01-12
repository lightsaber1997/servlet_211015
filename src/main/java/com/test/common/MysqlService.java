package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService = null;
	// 도메인 뒤에 접속할 database명까지 써준다.
	private String url = "jdbc:mysql://localhost:3306/boram_211015";
	private String id = "root";
	private String pw = "root";

	private Connection conn = null;
	private Statement statement;
	private ResultSet res;

	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}

	public void connection() {

		try {
			// 1. 드라이버를 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			// 2. DB connection
			conn = DriverManager.getConnection(url, id, pw);
			// 3. statement: DB와 쿼리를 실행 준비
			statement = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void disconnection() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}

	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
}
