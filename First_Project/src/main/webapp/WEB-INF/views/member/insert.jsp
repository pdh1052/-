<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
			<div class="col-md-12">
	        <div class="py-7">
	            <div class="text-center">
	            <h2>회원가입</h2>
	            
	            </div>
	        </div>
	        
	        	<form action="/member/insert" id="form" name="form" method="post">
	        	 
	        	 <div class="form-group">
		        	  <div class=".col-xs-12 .col-md-8">
					    <div class="input-group">
					      <span id="span1" class="input-group-addon">ID</span>
					     	 <input name="id" id="id" class="form-control" placeholder="id를 입력하세요">
					      <span class="input-group-btn">
					        <button id="btnID" class="btn btn-default" type="button">ID 중복체크</button>
					      </span>
					    </div><!-- /input-group -->
					  </div><!-- /.col-lg-6 -->
				  </div><!-- /.form-group -->
				  
				  
				  				<div class="form-group">
					<div class=".col-xs-12 .col-md-8">
						<div class="input-group">
						  <span class="input-group-addon" id="pw1">비빌번호</span>
						  <input name="pw" type="password" class="form-control" required placeholder="Password" aria-describedby="pw1">
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<div class=".col-xs-12 .col-md-8">
						<div class="input-group">
						  <span class="input-group-addon" id="pw2">비빌번호확인</span>
						  <input name="pw2" type="password" class="form-control" required placeholder="Password" aria-describedby="pw2">
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<div class=".col-xs-12 .col-md-8">
						<div class="input-group">
						  <span class="input-group-addon" id="name">이름</span>
						  <input id="name" name="name" type="text" class="form-control" required placeholder="2~4글자의 한글로 입력하세요" aria-describedby="nameSp">
						</div>
					</div>
				</div>	
				
				<div class="form-group">
					<div class=".col-xs-12 .col-md-8">
						<div class="input-group">	
								<label class="radio-inline"><input type="radio" name="gender" id="gender" value="option1" checked>남</label>
								<label class="radio-inline"><input type="radio" name="gender" id="gender" value="option2">여</label>
						</div>
					</div>
				</div>	
				
				<div class="form-group">
					<div class=".col-xs-12 .col-md-8">
						<div class="input-group">
						  <span class="input-group-addon" id="email">email</span>
						  <input name="email" type="email" class="form-control" required placeholder="email 입력하세요" aria-describedby="email">
						</div>
					</div>
				</div>

				
				<div class="form-group">
					<div class=".col-xs-12 .col-md-8">
						<div class="input-group">
						  <span class="input-group-addon" id="tell">전화번호</span>
						  <input id="tell" name="tell" type="tel" maxlength="11" class="form-control" required placeholder="전화번호를 -를 제외하고 입력하세요" aria-describedby="tell">
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<div class=".col-xs-12 .col-md-8">
						<div class="input-group">
						  <span class="input-group-addon" id="birth">생일</span>
						  <input id="birth" name="birth" type="date" class="form-control" required aria-describedby="birthSp">
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class=".col-xs-12 .col-md-8">
						<div class="input-group">
<!-- 						<input type="button" id="addsearch" class="btn btn-default" onclick="sample4_execDaumPostcode()" value="주소 검색"><br>
							<input type="text" class="form-control" id="sample4_postcode" readonly placeholder="우편번호"> 
							<input type="text" class="form-control" name="address" id="sample4_roadAddress" required readonly placeholder="도로명주소"> 
							<input type="hidden" class="form-control" id="sample4_jibunAddress" readonly placeholder="지번주소">
							<span id="guide" style="color: #999; display: none"></span> 
							<input type="text" class="form-control" id="sample4_detailAddress" placeholder="상세주소">
							<input type="text" class="form-control" id="sample4_extraAddress" placeholder="참고항목"> -->
							주소<input id="address" name="address" class="form-control">
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<div class=".col-xs-12 .col-md-8">
						<div class="input-group">	
							<input class="btn btn-primary" type="submit" value="가입">
						</div>
					</div>
				</div>
				</form>
				
			</div>
		</div>
	</div>
				
			
<script type="text/javascript">
$(document).ready(function(){
	$("input[type=submit]").click(function(event){
		if (pw1 != pw2) {
			$("input[name=pw2]").select(); // 드래그 선택됨 
			alert("비밀번호가 같지 않습니다.");
			event.preventDefault();
			return;
		}
	};
	
	
	
});



</script>	
	
</body>
</html>