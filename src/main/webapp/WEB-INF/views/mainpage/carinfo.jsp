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
				<a href="list">
					<i class="fa fa-chevron-left fa-lg"></i>
				</a>
			</div>
			<div class="header__column">
			</div>
			<div class="header__column">
				<sec:authentication property="principal" var="pinfo"/>
				<sec:authorize access="isAuthenticated()">
					<c:if test="${pinfo.username eq board.writer}">
						<button data-oper='modify' class="btn__ btn-modify">
							<a href='/mainpage/modify?pnum=<c:out value="${board.pnum }"/>'>수정</a>
						</button>
					</c:if>
				</sec:authorize>	
				<form id='operForm' action="/mainpage/modify" method="get">
					<input type='hidden' id='pnum' name='pnum' value='<c:out value="${board.pnum }"/>'>
				</form>
			</div>
		</div>
	</header>
	<main class="carinfo">
		<header class="carinfo__header">
			<header class="carinfo__header-header">
				<h3 class="carinfo__header-header_title">
					<c:out value="${board.title }"/>
				</h3>
			</header>
			<div class="carinfo__header-container">
				<div class="carinfo__header-container_item">
					<h4 class="carinfo__item-title">목적지</h4>
					<span class="carinfo__item-result">
						<c:out value="${board.destination }"/>
					</span>
				</div>
				<div class="carinfo__header-container_item">
					<h4 class="carinfo__item-title">만날시간</h4>
					<span class="carinfo__item-result">
						<c:out value="${board.meet }"/>
					</span>
				</div>
			</div>
		</header>
		<section class="carinfo__container">
      <div class="carinfo__container-main">
        <div class="carinfo__container-user">
			<span class="carinfo__container-id">ID : </span>
         	<span class="carinfo__container__id">
          		<c:out value="${board.writer }"/>
          	</span>
  			</div>
  			<div class="carinfo__container-text">
  				<span class="carinfo__container-texts">
					<c:out value="${board.content }"/>  				
  				</span>
  			</div>
      </div>
		</section>
    <nav class="tab-bar-carinfo">
      <a href="/mainpage/chat?pnum=<c:out value="${board.pnum }"/>" class="carinfo__container-action">
        <span class="carinfo__container-actions">
            참가하기
        </span>
      </a>
    </nav>
	</main>

</body>
</html>
