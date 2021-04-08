<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${vo.title }</title>
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
		<h1 class="jumbotron">게시물 수정</h1>
	</div>

	<div class="row">
		<form action="/board/update" method="post">
		    <div class="input-group">
               <input value="${vo.bno}" id="bno" name="bno" class="form-control" readonly type="hidden">
            </div>
		
			<div class="input-group">
				<span class="input-group-addon" id="title">제목</span>
				<input name="title" type="text" class="form-control" aria-describedby="basic-addon1" value="${vo.title }">
			</div><p>
			
			<div class="input-group">
				<span class="input-group-addon" id="writer">작성자</span>
				<input name="writer" type="text" class="form-control" aria-describedby="basic-addon1" value="${vo.writer }">
			</div><p>
			
			<div class="input-group">
				<span class="input-group-addon" id="content">내용</span>
				<textarea name="content" rows="5" class="form-control" aria-describedby="basic-addon1">${vo.content }</textarea>
			</div><p>
			
		</form>
		
	<div class="form-group">
			<button id="update_btn" type="submit" class="btn btn-primary">등록</button>
			<button id="back_btn" class="btn btn-info">뒤로가기</button>
		</div>
	</div>

</div>


<script type="text/javascript">
$(document).ready(function(){
		$("#update_btn").click(function(){
			$("form").submit();
		});
		
		$("#back_btn").click(function(){
			history.back();
		});
	
});

</script>


</body>
</html>