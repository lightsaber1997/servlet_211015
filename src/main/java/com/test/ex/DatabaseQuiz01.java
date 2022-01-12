package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz01")
public class DatabaseQuiz01 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();

		// insert a new row
		String insertQuery = "insert into real_estate(realtorId, address, area, type, price) values"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000)";
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String selectQuery = "select address, area, type from real_estate limit 10";
		try {
			ResultSet resultSet = mysqlService.select(selectQuery);
			while (resultSet.next()) {
				out.print("매물 주소: ");
				out.print(resultSet.getString("address") + ", ");
				out.print("면적: ");
				out.print(resultSet.getInt("area") + ", ");
				out.print("타입: ");
				out.print(resultSet.getString("type") + "\n");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
