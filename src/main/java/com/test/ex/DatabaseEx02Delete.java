package com.test.ex;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/ex02_delete")
public class DatabaseEx02Delete extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		String delete_query = "delete from new_user where id = " + id;
		try {
			mysqlService.update(delete_query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		mysqlService.disconnection();
		response.sendRedirect("/Test/lesson04/ex02/ex02_1.jsp");
	}
}
