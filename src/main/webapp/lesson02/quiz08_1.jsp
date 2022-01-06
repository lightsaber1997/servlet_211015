<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>

<%
List<Map<String, Object>> list = new ArrayList<>();
Map<String, Object> map = new HashMap<String, Object>() {
    { 
        put("id", 1000);
        put("title", "아몬드"); 
        put("author", "손원평"); 
        put("publisher", "창비");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1001);
        put("title", "사피엔스"); 
        put("author", "유발 하라리"); 
        put("publisher", "김영사");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1002);
        put("title", "코스모스"); 
        put("author", "칼 세이건"); 
        put("publisher", "사이언스북");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1003);
        put("title", "나미야 잡화점의 기적"); 
        put("author", "히가시노 게이고"); 
        put("publisher", "현대문학");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
    } 
};
list.add(map);
%>



<body>
	<%
	String id_ = request.getParameter("id");
	String book_title = "";
	String author = "";
	String publisher = "";
	String img_url = "";
	if (id_ != null) {
		int id = Integer.parseInt(id_);
		Map<String, Object> found = new HashMap<>();
		for (Map<String, Object> book: list) {
			if ((int) book.get("id") == id) {
				found = book;
				break;
			}
		}
		book_title = (String) found.get("title");
		author = (String) found.get("author");
		publisher = (String) found.get("publisher");
		img_url = (String)  found.get("image");
	}
	
	%>
	
	<div class="container d-flex">
		<%
		if (id_ != null) {
		%>
			<div class="col-3">
				<img class="img-fluid" src="<%= img_url %>">
			</div>
			<div class="col-md-8 col-7">
			<p class="display-2"><%= book_title %></p>
			<p class="display-3 text-info"><%= author %></p>
			<p class="display-4"><%= publisher %></p>
			</div>
		<%	
		}
		%>
	</div>
	
</body>
</html>