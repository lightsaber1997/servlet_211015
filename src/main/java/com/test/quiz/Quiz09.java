package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz09")
public class Quiz09 extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String text = request.getParameter("cover_letter");
		out.print("<html><head></head><body>");
		out.print(String.format("<p><strong>%s</strong>님 지원이 완료 되었습니다. </p>", name));
		out.print("<h3>지원 내용</h3>");
		out.print(String.format("<p>%s</p>", text));
		out.print("</body></html>");
	}
}
