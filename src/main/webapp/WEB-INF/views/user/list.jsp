<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>My SSM Demo</title>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<link href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
	<table class="table table-hover table-bordered">
		<caption>This is a test</caption>
		<thead>
			<tr>
				<th>id</th>
				<th>firstName</th>
				<th>lastName</th>
				<th>age</th>
				<th></th>
			</tr>
		</thead>

		<c:forEach var="u" items="${users}">
			<tbody>
				<tr>
					<td>${u.id}</td>
					<td>${u.firstName}</td>
					<td>${u.lastName}</td>
					<td>${u.age}</td>
					<td>
						<button type="button" class="btn btn-info btn-xs" id="see">详情</button>
						|
						<button type="button" class="btn btn-danger btn-xs" id="del">删除</button>
					</td>
				</tr>
			</tbody>
		</c:forEach>

	</table>

	<script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>