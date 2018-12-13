<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
  <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="/resources/css/style.css">
	<link rel="stylesheet" href="/resources/css/usercss.css">
	<link rel="stylesheet" href="/resources/css/bootstrap.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<title>Friend</title>
</head>
<body>
	<div class="col-lg-4">
		<div class="jumbotron" style="padding-top: 20px;">
			<form action="/login" method="post">
				<h3 style="text-align:center;">로그인</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디" name="username" maxlength="20">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="비밀번호" name="password" maxlength="20">
				</div>
				
				<div class="form-group">
					<div class="checkbox">
				        <label>
				          <input type="checkbox" name="remember-me"> Remember Me
				        </label>
			      	</div>
				</div>
								
				<a href="index.html" class="btn btn-lg btn-success btn-block">로그인</a>
				<h5 style="text-align:center;"><a href="customRegister" >회원가입</a></h5>
				
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}">
			</form>
		</div>
	</div>
	
	<script>
	$(".btn-success").on("click", function(e){
	    
	    e.preventDefault();
	    $("form").submit();
	    
	});
	</script>
</body>
</html>