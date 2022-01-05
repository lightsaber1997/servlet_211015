<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
	<%!
	public static double cm_to_inch(double x) {
		return 0.393701 * x;
	}
	public static double cm_to_yard(double x) {
		return 0.0109361 * x;
	}
	public static double cm_to_feet(double x) {
		return 0.0328084 * x;
	}
	public static double cm_to_m(double x) {
		return 0.01 * x;
	}
	
	%>
	<%
	String[] purpose_ = request.getParameterValues("purpose");
	int[] purpose = new int[4];
	for (int i = 0; i < purpose_.length; i++) {
		int temp = Integer.parseInt(purpose_[i]);
		purpose[temp] = 1;
	}
	String input_ = request.getParameter("length_cm");
	double input = Double.parseDouble(input_);
	double input_to_inch = cm_to_inch(input);
	double input_to_yard = cm_to_yard(input);
	double input_to_feet = cm_to_feet(input);
	double input_to_m = cm_to_m(input);
	double[] results = new double[] {input_to_inch, input_to_yard, input_to_feet, input_to_m};
	String[] units = {"in", "yd", "ft", "m"};
	%>
	
	<div class="container">
		<h1 class="display-4">길이 변환 결과</h1>
		<h3><%= input %>cm</h3>
		<hr>
		<h3>
		<%
			for (int i = 0; i< purpose.length; i++) {
				if (purpose[i] == 1) {
					String temp = String.format("%f %s", results[i], units[i]);
					out.print(temp + "<br>");
				}
				
			}
		%>
		</h3>
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