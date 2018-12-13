<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="/resources/css/style.css">
	<title>carinfo</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<header class="top-header top-header--carinfo">
		<div class="header__top">
		</div>
		<div class="header__bottom">
			<div class="header__column">
				<a href="/mainpage/list">
					<i class="fa fa-chevron-left fa-lg"></i>
				</a>
			</div>
			<div class="header__column">
			</div>
			<div class="header__column">
			</div>
		</div>
	</header>
	<main class="carinfo">
    <form role="form" action="/mainpage/register" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  		<header class="carinfo__header">
  			<header class="register__header-header">
  				<label class="register__label">제목</label>
          <input class="input__design" type="text" name="title" placeholder="제목을 입력하세요">
  			</header>
  			<div class="carinfo__header-container">
  				<div class="carinfo__header-container_item">
  					<label class="carinfo__item-title">목적지</label>
  					<input class="input__design" type="text" name="destination" placeholder="ex) 청솔->창조관">
  				</div>
  				<div class="carinfo__header-container_item">
  					<label class="carinfo__item-title">만날시간</label>
  					<input class="input__design" type="text" name="meet"  placeholder="ex) 00:00 으로 입력해주세요">
  				</div>
  			</div>
  		</header>
  		<section class="carinfo__container">
        <div class="carinfo__container-main">
       		<div class="carinfo__container-user">
				<span class="carinfo__container-id">ID : </span>
            	<input class="input__design" type="text" name="writer"  
            		value='<sec:authentication property="principal.username"/>' readonly="readonly">
			</div>
  			<div class="carinfo__container-text">
  				<textarea class="input__design" name="content" rows="10"style="width:100%;" placeholder="추가사항 입력"></textarea>
  			</div>
        </div>
  		</section>
    
    	
	    <nav class="tab-bar-carinfo">
	        <button type="submit" class="register__container-action">
	            	등록하기
	        </button>
	    </nav>
		
    </form>
	</main>



</body>
</html>
