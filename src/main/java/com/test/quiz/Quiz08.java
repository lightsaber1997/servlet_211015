package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz08")
public class Quiz08 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String query = request.getParameter("query");

		List<String> list = new ArrayList<>(Arrays.asList("강남역 최고 맛집 소개 합니다.", "오늘 기분 좋은 일이 있었네요.",
				"역시 맛집 데이트가 제일 좋네요.", "집에 가는 길에 동네 맛집 가서 안주 사갑니다.", "자축 저 오늘 생일 이에요."));
		if (query != null) {
			for (String line : list) {
				if (line.contains(query)) {
					String temp = line.replace(query, "<b>" + query + "</b>");
					out.print("<p>" + temp + "</p>");
				}
			}
		}

	}
}
