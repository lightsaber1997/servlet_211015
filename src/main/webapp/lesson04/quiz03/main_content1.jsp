<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService"%>
<%
MysqlService mysqlService = MysqlService.getInstance();
mysqlService.connection();
String query = "select  usedgoods.* seller.*  from usedgoods join seller on usedgoods.sellerId=seller.id";
ResultSet result = mysqlService.select(query);
%>

<div
	class="main-content1 d-flex justify-content-between w-100 flex-wrap">

	<div class="box-item mb-3"></div>
	<div class="box-item mb-3"></div>
	<div class="box-item mb-3"></div>
	<div class="box-item mb-3"></div>

</div>

<%
mysqlService.disconnection();
%>
