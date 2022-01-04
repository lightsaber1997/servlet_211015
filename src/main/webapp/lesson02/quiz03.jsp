<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<style>
	#bmi_result {
		color: #11d947;
	}
	</style>
</head>
<body>
	
	<%!
	public static double calc_bmi(double height, double weight) {
		double result = weight / ((height/100) * (height/100));
		return result;
	}
	%>
	<%
	String height_ = request.getParameter("height");
	String weight_ = request.getParameter("weight");
	double height = Double.parseDouble(height_);
	double weight = Double.parseDouble(weight_);
	String result = "";
	double bmi = calc_bmi(height, weight);
	if (bmi <= 20) {
		result = "저체중";
	}
	else if (bmi <= 25) {
		result = "정상";
	}
	else if (bmi <= 30){
		result = "과체중";
	}
	else {
		result = "비만";
	}
	%>
	
	<div class="container">
		<p class="display-4">BMI 측정 결과</p>
		<p class="display-3">당신은 <span id="bmi_result"><%= result %></span>입니다. </p>
		<p>BMI 수치: <%= bmi %></p>
	</div>


<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>