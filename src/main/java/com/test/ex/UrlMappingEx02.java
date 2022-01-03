package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02")
public class UrlMappingEx02 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		int sum = 0;
		for (int i = 0; i < 11; i++) {
			sum += i;
		}
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>test</title></head><body>");
		out.print("<p>합계: <strong>" + sum + "</strong></p>");
		out.print("</body></html>");
	}
}
