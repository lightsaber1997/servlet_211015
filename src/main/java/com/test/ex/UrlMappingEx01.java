package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// for korean letters
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");

		PrintWriter out = response.getWriter();
		out.println("안녕");

		Date now = new Date();
		out.println(now);

		// formatter is used to display Date content nicely.
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		out.println(sdf.format(now));
	}
}
