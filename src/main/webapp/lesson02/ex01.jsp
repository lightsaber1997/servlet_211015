<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML의 주석 -->
	<%-- jsp의 주석 --%>
	<h1>JSP 예제</h1>
	<%
		int sum = 0;
		for (int i = 0; i<= 10; i++) {
			sum += i;
		}
	%>
	<%!
		private int num = 10;
		public String getHelloWorld() {
			return "hello world";
		}
	%>
	<p><%= getHelloWorld() %></p><br>
	<p><%= sum %></p>
</body>
</html>