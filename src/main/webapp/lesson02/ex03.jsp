<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/Test/lesson02/ex03_1.jsp">
		<label for="nickname">1. 별명은 무엇입니까? </label><br>
		<input type="text" name="nickname" id="nickname"><br>
		<label for="hobby">2. 취미는 무엇입니까? </label><br>
		<input type="text" name="hobby" id="hobby"><br>
		<p>3. 강아지 or 고양이?</p>
		<input type="radio" id="dog" name="animal" value="dog">
		<label for="dog">강아지</label>
		<input type="radio" id="cat" name="animal" value="cat">
		<label for="cat">고양이</label>
		<p>4. 다음 중 선호하는 것을 모두 고르세요. </p>
		<label>민트초코 <input type="checkbox" name="food" value="mint_choco"></label>
		<label>하와이안 피자 <input type="checkbox" name="food" value="hawaiian pizza"></label>
		<label>번데기<input type="checkbox" name="food" value="번데기"></label>
		<br>
		<br>
		
		<p>좋아하는 과일을 선택하시오.</p>
		<select name="fruit">
			<option>사과</option>
			<option>바나나</option>
			<option>복숭아</option>
			<option>딸기</option>
			<option>포도</option>
			
		</select><br><br>
		<input type="submit" value="submit">
	</form>
	
</body>
</html>