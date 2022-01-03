package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz07")
public class Quiz07 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		out.print("<html><head></head><body>");
		if (!address.contains("서울시")) {
			out.print("배달 불가 지역입니다. ");
		} else {
			out.print("<p>");
			out.print(address + "<strong> 배달 준비중 </strong>");
			out.print("</p>");
			out.print("<p>");
			out.print("결제금액:" + price + "원");
			out.print("</p>");
		}
		out.print("</body></html>");
	}
}
