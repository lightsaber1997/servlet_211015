package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz03")
public class Quiz03 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");

		Date date = new Date();

		PrintWriter out = response.getWriter();
		out.print("<html><head><head><body>");
		out.print("<h2>[단독] 고양이가 야옹해</h2>");
		out.print("<p>기사 입력 기간: 2021/3/23 11:35:32</p>");
		out.print("<hr>");
		out.print("<p>끝</p>");
		out.print("</body></html>");
	}
}
