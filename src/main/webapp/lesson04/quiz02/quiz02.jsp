<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<%
MysqlService mysqlService = MysqlService.getInstance();
mysqlService.connection();
String query = "select * from url order by id;";
ResultSet result = mysqlService.select(query);
%>
<body>
	<div class="container mt-4">
		<table class="table text-center">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
				</tr>
			</thead>

			<tbody>
				<%
				while (result.next()) {
				%>
				<tr>
					<td><%=result.getString("name")%></td>
					<td><a href="<%=result.getString("url")%>"><%=result.getString("url")%></a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<a class="btn btn-outline-primary" href="/Test/lesson04/quiz02/quiz02_1.jsp">사이트 추가하기</a>
	</div>
	
	
	
</body>

<%
mysqlService.disconnection();
%>
</html>