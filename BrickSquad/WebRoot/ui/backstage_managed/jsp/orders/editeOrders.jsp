<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>load demo</title>
  <style>
  body {
    font-size: 12px;
    font-family: Arial;
  }
  </style>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
<ol id="new-projects">
		<form action="" method="post">
			<table border="1">
				<tr>
					<td>订单号</td>
					<td>订单状态</td>
					<td>订单生成日期</td>
					<td>商品数量</td>
					<td>总额</td>
				</tr>
				<tr>
					<td>${orders.no}</td>
					<td>${orders.stateId}</td>
					<td>${orders.productionDate}</td>
					<td>${orders.number}</td>
					<td>${orders.money}</td>
				</tr>
			</table>
	</body>
</html>