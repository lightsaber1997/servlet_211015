<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.exceptions.MysqlErrorNumbers"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
MysqlService mysqlService = MysqlService.getInstance();
mysqlService.connection();
String select_query = "select * from new_user";
ResultSet result = mysqlService.select(select_query);
%>
<body>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>자기소개</th>
				<th>이메일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%
			while (result.next()) {
			%>
			<tr>
				<td><%=result.getInt("id")%></td>
				<td><%=result.getString("name")%></td>
				<td><%=result.getString("yyyymmdd")%></td>
				<td><%=result.getString("introduce")%></td>
				<td><%=result.getString("email")%></td>

				<td><a href="/Test/db/ex02_delete?id=<%=result.getInt("id")%>">삭제하기</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
<%
mysqlService.disconnection();
%>
</html>