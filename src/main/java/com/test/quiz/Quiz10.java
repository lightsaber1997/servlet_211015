package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz10")
public class Quiz10 extends HttpServlet {
	private final Map<String, String> userMap = new HashMap<String, String>() {
		{
			put("id", "marobiana");
			put("password", "qwerty1234");
			put("name", "신보람");
		}
	};

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String input_id = request.getParameter("user_id");
		String input_password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		if (userMap.get("id").equals(input_id)) {
			if (userMap.get("password").equals(input_password)) {
				String name = userMap.get("name");
				out.print("<p>" + name + "님 환영합니다!</p>");
			} else { // wrong password
				out.print("<p>password가 일치하지 않습니다.</p>");
			}
		} else {
			out.print("<p>id가 일치하지 않습니다.</p>");
		}
	}

}
