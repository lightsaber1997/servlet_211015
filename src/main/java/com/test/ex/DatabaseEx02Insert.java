package com.test.ex;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/ex02_insert")
public class DatabaseEx02Insert extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");

		// DB connection
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		String insert_query = "insert into `new_user` (name, yyyymmdd, introduce, email)"
				+ String.format("values ('%s', '%s', '%s', '%s')", name, yyyymmdd, introduce, email);
		try {
			mysqlService.update(insert_query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mysqlService.disconnection();

		response.sendRedirect("/Test/lesson04/ex02/ex02_1.jsp");
	}
}
