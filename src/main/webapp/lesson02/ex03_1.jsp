<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
<%
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	String animal = request.getParameter("animal");
	String[] array_food = request.getParameterValues("food");
	String fruit = request.getParameter("fruit");
%>

<table border=1>
	<tr>
		<th>별명</th>
		<td><%= nickname %></td>
	</tr>
	<tr>
		<th>취미</th>
		<td><%= hobby %></td>
	</tr>
	<tr>
		<th>좋아하는 동물</th>
		<td><%= animal %></td>
	</tr>
	<tr>
		<th>좋아하는 음식</th>
		<% 
		String result = "";
		if (array_food != null) {
			
			for (String food: array_food) {
				result += (food + ", ");
			}
			result = result.substring(0, result.length()-2);
		}
		%>
		<td><%= result %></td>	

	
	<tr>
		<th>좋아하는 과일</th>
		<td><%= fruit %></td>
	</tr>
	</table>
</body>
</html>