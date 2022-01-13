package com.test.ex;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz02_add")
public class DatabaseQuiz02 extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String address = request.getParameter("address");

		// DB connection
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		String query = String.format("insert into url (`name`, `url`) values ('%s','%s');", name, address);
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mysqlService.disconnection();

		response.sendRedirect("/Test/lesson04/quiz02/quiz02.jsp");
	}
}
