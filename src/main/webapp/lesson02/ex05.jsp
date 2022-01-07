<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Calendar today = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("y년 M월 d일 H:m:s");
	out.print("오늘 날짜:" + sdf.format(today.getTime()));
	SimpleDateFormat sdf2 = new SimpleDateFormat("y년 M월 d일");
	Calendar yesterday = Calendar.getInstance();
	yesterday.add(Calendar.DATE, -1);
	out.print("어제 날짜" + sdf2.format(yesterday.getTime()));
	
	int result = today.compareTo(yesterday);
	if (result > 0) {
		out.print("today가 더 크다");
	}
	else if (result == 0) {
		out.print("두 날짜는 같다. ");
	}
	else {
		out.print("yesterday가 더 크다");
	}
	%>
</body>
</html>