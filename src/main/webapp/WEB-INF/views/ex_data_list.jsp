<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>EX DATA OUTPUT PAGE</h2>

	<table>
		<tr>
			<th>seq</th>
			<th>id</th>
			<th>pw</th>
		</tr>
		
		<tbody>
			<c:forEach var="i" items="${list }">
			<tr>
				<td>${i.data_seq }</td>
				<td>${i.data_id }</td>
				<td>${i.data_pw }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>




</body>
</html>