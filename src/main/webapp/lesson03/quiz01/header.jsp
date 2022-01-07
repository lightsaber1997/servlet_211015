<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="text-center mt-4 mb-4">
	<h3>SK Braodband IPTV</h3>
</div>



<%
String url1 = "/Test/lesson03/quiz01/template.jsp";
%>
<nav class="navbar navbar-expand-lg navbar-danger bg-danger">
	<ul class="nav nav-fill navbar-nav text-center w-100"">
      <li class="nav-item">
        <a class="nav-link" href="<%= url1 %>">전체</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= url1 + "?category=지상파" %>">지상파</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= url1 + "?category=드라마" %>">드라마</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= url1 + "?category=예능" %>">예능</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= url1 + "?category=영화" %>">영화</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= url1 + "?category=스포츠" %>">스포츠</a>
      </li>
    </ul>
</nav>