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

</head>
<body>
	<%
		String number1_ = request.getParameter("number1");
		String number2_ = request.getParameter("number2");
		String operator = request.getParameter("operator");
		double number1 = Double.parseDouble(number1_);
		double number2 = Double.parseDouble(number2_);
		String operator_ ="";
		
		String output2 = "";
		if (operator.equals("plus")) {
			operator_ = "+";
			output2 += number1 + number2;
		}
		else if (operator.equals("minus")) {
			operator_ = "-";
			output2 += number1 - number2;
		}
		else if (operator.equals("multiply")) {
			operator_ = "X";
			output2 += number1 * number2;
		}
		else if (operator.equals("divide")) {
			operator_ = "/";
			output2 += number1 / number2;
		}
		else {
			
		}
		String output = String.format("%.0f %s %.0f = ", number1, operator_, number2);
	%>
	<div class="container">
		<h3 class="display-4">계산결과</h3>
		<p class="display-3"><%= output %><span class="text-info"><%= output2 %></span></p>
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