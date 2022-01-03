package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethod03 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");

		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		String age_ = request.getParameter("age");
		int age = -1;
		try {
			age = Integer.parseInt(age_);
		} catch (Exception e) {

		}
		PrintWriter out = response.getWriter();
//		out.println("user_id: " + userId);
//		out.println("name: " + name);
//		if (age != -1) {
//			out.println("age: " + age);
//		}

		// JSON(Javascript Object Notation)
		// {"user_id":"spideman", "name":"boram", "age":35}
		out.print("{\"user_id\":" + userId + ", \"name\":" + name + ",\"age\":" + age + "}");
	}
}
