package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class GetMethodEx04 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");

		String user_id = request.getParameter("user_id");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");

		// Output
		PrintWriter out = response.getWriter();
		out.print("user id: " + user_id + "<br>");
		out.print("name: " + name + "<br>");
		out.print("birth: " + birth + "<br>");
		out.print("email: " + email + "<br>");
		out.print("<html><head></head?<body>");
		out.print("<table class =\"table\">");
		out.print(String.format("<tr><th>아이디</th><td>%s</td></tr>", user_id));
		out.print(String.format("<tr><th>이름</th><td>%s</td></tr>", name));
		out.print(String.format("<tr><th>생년월일</th><td>%s</td></tr>", birth));
		out.print(String.format("<tr><th>이메일</th><td>%s</td></tr>", email));
		out.print("</table>");
		out.print("</body></html>");
	}
}
