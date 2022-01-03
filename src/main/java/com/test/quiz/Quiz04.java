package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz04")
public class Quiz04 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<html><head><head><body>");
		out.print("<ul>");
		for (int i = 0; i < 30; i++) {
			out.print("<li>");
			out.print(String.format("%d번째 리스트", i));
			out.print("</li>");
		}
		out.print("</ul>");
		out.print("</body></html>");
	}

}
