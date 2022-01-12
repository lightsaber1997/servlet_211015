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

@WebServlet("/db/ex01")
public class DatabaseEx01 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection(); // DB 연결

		// insert 쿼리
		String insertQuery = "insert into `usedgoods` (`sellerId`, `title`, `description`, `price`)"
				+ "values (4, '고양이 간식 팝니다. ', '저희 고양이가 입맛이 까다로워요', 5000)";
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		// select 쿼리
		String selectQuery = "select * from `usedgoods`";
		try {
			ResultSet resultSet = mysqlService.select(selectQuery);
			while (resultSet.next()) {
				out.println(resultSet.getInt("id"));
				out.println(resultSet.getString("title"));
				out.println(resultSet.getString("description"));
				out.println(resultSet.getInt("price"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// DB 연결 해제
		mysqlService.disconnection();
	}
}
