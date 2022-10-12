<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="./resources/js/alarm.js"></script>
<link rel="stylesheet" type="text/css" href="./resources/css/alarm.css">
</head>
<body>
	<div class="wrapper">
		<form id="mywriteform">
		<div class="title"><h3>알림</h3></div>
			<table>
				<tr>
 					<th>번호</th>
					<th>내용</th>
				</tr>
				<c:set var="a" value="${fn:length(list)+1}"></c:set>
				<c:forEach items="${list}" var="list">
				
				<tr>
					<td>${a=a-1}</td>
					<td><a href="alarmcheck?b_num=${list.b_num}&a_num=${list.a_num}">${list.a_content}</a></td>
				</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</body>
</html>