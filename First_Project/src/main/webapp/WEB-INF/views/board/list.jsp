<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
 src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
 src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
</head>
<body>
<div class="container">
		<div class="row">
			<h1 class="jumbotron">게시글 목록</h1>                
		</div>
		
	
	<div class="row">
		<table class="table table-hover">
		<thead>
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${vo}" var="vo">
				<tr>
					<td>${vo.bno}</td>
					<td><a href="/board/read/${vo.bno}">${vo.title}</a></td>
					<td>${vo.writer}</td>
					<td> <fmt:formatDate pattern="yyyy/MM/dd" type="date" value="${vo.updatedate}"/> </td>
				</tr>
			</c:forEach>
		
		</tbody>	
		</table>
	</div><!-- class = row -->
	
		<div class="row">
			<a class="btn btn-primary" href="/board/insert">글쓰기</a>
		</div>
</div>
		
</body>
</html>