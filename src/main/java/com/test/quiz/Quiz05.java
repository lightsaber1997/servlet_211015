package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class Quiz05 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String number_ = request.getParameter("number");
		int number = -1;
		try {
			number = Integer.parseInt(number_);
		} catch (Exception e) {
			// TODO: handle exception
		}

		if (number > 0) {
			out.print("<html><head></head><body>");
			out.print("<ul>");
			for (int i = 0; i < 9; i++) {
				String temp = String.format("<li>%d X %d = %d</li>", number, i + 1, number * (i + 1));
				out.print(temp);
			}
			out.print("</ul>");
			out.print("</body></html>");
		}

	}
}
