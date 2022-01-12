<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="border border-success d-flex p-3 mt-4">
	<div class="col-3">
		<img class="img-fluid" src="<%= artistInfo.get("photo") %>">
	</div>
	<div class="col-7">
		<h2><%= artistInfo.get("name") %></h2>
		<p><%= artistInfo.get("agency") %></p>
		<p><%= artistInfo.get("debute") %> 데뷔</p>
	</div>
</div>