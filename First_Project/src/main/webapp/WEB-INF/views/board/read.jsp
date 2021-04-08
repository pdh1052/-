<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${vo.title}</title>
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

	<form action="/board/delete" method="post">
      <input type="hidden" name="bno" value="${vo.bno}">      
	</form>
	
<div class="container">
	<div class="row">
		<h1 class="jumbotron">글 자세히 보기</h1>
	</div>
	

	
	<div class="row">
		<div class="form-group">
			<label for="title">제목</label>
			<input class="form-control" readonly id="title" name="title" value="${vo.title}">
		</div>
		
		<div class="form-group">
			<label for="writer">작성자</label>
			<input class="form-control" readonly id="writer" name="writer" value="${vo.writer}">
		</div>
		
		<div class="form-group">
			<label for="content">내용</label>
			<input class="form-control" readonly id="content" name="content" value="${vo.content}">
		</div>
	</div>
	
	
	<div class="row">
		<button id="read_update_btn" class="btn btn-primary">수정</button>
		<button id="read_delete_btn" class="btn btn-info">삭제</button>
		<button id="read_list_btn" class="btn btn-primary">목록</button>
	</div>
	
</div>


<script type="text/javascript">
$(document).ready(function(){
	$("#read_update_btn").click(function(){
		location.assign("/board/update/${vo.bno}");
		
	});
	
	$("#read_delete_btn").click(function(){
		$("form").submit();
	});
	
	$("#read_list_btn").click(function(){
		location.assign("/board/list");
		
	});
	
});

</script>
</body>
</html>