<%@page import="java.time.DayOfWeek"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="quiz10.css">
<title>Insert title here</title>
</head>
<%
LocalDate current = LocalDate.now();
int current_month = current.getMonthValue();
LocalDate start = LocalDate.of(current.getYear(), current.getMonthValue(), 1);
%>
<body>
	<div class="container text-center">
		<h1 class="mb-3"><%= start.getYear()%>-<%= start.getMonthValue() %></h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th><span class="text-danger">일</span></th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			<tbody>
				<%
				// print the first line
				int temp = 0;
				if (start.getDayOfWeek().getValue() != 7) {
					temp = start.getDayOfWeek().getValue();
				}
				%>
				<tr>
					<%
					for (int i = 0; i < temp; i++) {
					%>
					<td></td>
					<%
					}
					%>
					<%
					while (true) {
					%>
					<td><%=start.getDayOfMonth()%></td>
					<%
					start = start.plusDays(1);
					if (start.getMonthValue() != current.getMonthValue() || start.getDayOfWeek() == DayOfWeek.SUNDAY) {
						break;
					}
					}
					%>
				</tr>
				<%
				while (start.getMonthValue() == current.getMonthValue()) {
				%>
				<tr>

					<%
					if (start.getDayOfMonth() == 1) {

					}
					while (true) {
					%>
					<td><%=start.getDayOfMonth()%></td>
					<%
					start = start.plusDays(1);
					if (start.getMonthValue() != current.getMonthValue() || start.getDayOfWeek() == DayOfWeek.SUNDAY) {
						break;
					}
					}
					%>
				</tr>
				<%
				}
				%>
			</tbody>
			</thead>
		</table>
	</div>
</body>
</html>