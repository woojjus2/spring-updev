<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="./resources/js/ajaxmywrite.js"></script>
<link rel="stylesheet" type="text/css" href="./resources/css/memwrite.css">
</head>
<body>
	<div class="wrapper">
		<form id="mywriteform">
		<div class="title"><h3>내가 쓴 게시물</h3></div>
			<table>
				<tr>
 					<th>번호</th>
					<th>제목</th>
					<th>분류</th>
					<th>추천수</th>
					<th>조회수</th>
					<th>작성일</th>
					<th></th>
				</tr>
				<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.b_num}</td>
					<td><a href="detail?b_num=${list.b_num}&receiveread=b">${list.b_title}</a></td>
					<td>${list.b_kind}</td>
					<td>${list.b_likecnt}</td>
					<td>${list.b_readcnt}</td>
					<td><fmt:parseDate value='${list.b_wdate}' var='date' pattern='yyyy-MM-dd HH:mm:ss'/>
						<fmt:formatDate value="${date}" pattern="yyyy.MM.dd."/></td>

						
					<form action="writedelete" method="post">
					<input type="hidden" id="loginstate" value="${loginState }">
					<input type="hidden" id="b_num" value="${list.b_num }">
					<input type="hidden" id="b_kind" value="내가쓴글">	
					<td>	
					<a onclick="del()" id="de">삭제</a>
					</form>
					
					<a onclick="location.href='writeupdatecheck?b_num=${list.b_num}&b_kind=${list.b_kind }'">수정</a></td>

				</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</body>
</html>