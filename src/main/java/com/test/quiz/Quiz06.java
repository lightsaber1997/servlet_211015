package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class Quiz06 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String n1_ = request.getParameter("num1");
		String n2_ = request.getParameter("num2");
		int num1 = -1;
		int num2 = -1;
		boolean success = false;
		try {
			num1 = Integer.parseInt(n1_);
			num2 = Integer.parseInt(n2_);
			success = true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		if (success) {
			try {
				String result = String.format(
						"{'addition': %d, 'subtraction': %d, 'multiplication': %d, 'division': %d}", num1 + num2,
						num1 - num2, num1 * num2, num1 / num2);
				out.print(result);
			} catch (Exception e) {
				success = false;
			}

		}
		if (!success) {
			out.print("Wrong Argument");
		}
	}
}
