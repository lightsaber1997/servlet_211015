<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	// returns 1+2+ ... + n
	public static int sum1(int n) {
		int result = 0;
		for (int i = 1; i <= n; i++) {
			result += i;
		}
		return result;
	}
	%>
	<p>1부터 50까지의 합은 <%= sum1(50) %>입니다. </p>
	<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	double avg = sum / scores.length;
	%>
	<p>평균 점수는 <%= avg %>입니다.</p>
	
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int count = 0;
	for (String e: scoreList) {
		if (e.equals("O")) {
			count += 1;
		}
	}
	%>
	
	<p>채점 결과는 <%= count * 10 %>점입니다.</p>
	
	<%
	String birthDay = "20010820";
	LocalDate currentDate = LocalDate.now();
	int current_year = currentDate.getYear();
	int birth_year = Integer.parseInt(birthDay.substring(0, 4));
	int age = current_year - birth_year + 1;
	%>
	<p><%= birth_year %>의 나이는 <%= age %>입니다. </p>
	 
</body>
</html>