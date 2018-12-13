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
	<title>home</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
  <header class="top-header">
		<div class="header__top">
		</div>
		<div class="header__bottom">
			<div class="header__column">

			</div>
			<div class="header__column">
				<span class="header__text">Carpool</span>
			</div>
			<div class="header__column">
				<a href="/mainpage/register">
					<i class="fas fa-plus"></i>
				</a>
			</div>
		</div>
	</header>
	<main class="home">
		<header class="home__header">
			<div class="home-header__column">
				<img src="/resources/images/avatar.jpg"/>
				<div class="home-header__info">
					<h3 class="home-header__title">
						<sec:authentication property="principal.username"/>
					</h3>
					<span class="home-header__subtitle">
						차정보?
					</span>
				</div>
			</div>
			<i class="fas fa-car fa-2x"></i>
		</header>

		<section class="home__carpool-board">
			<header class="carpool-board__header">
				<h2 class="carpool-board__title">게시판</h2>
				<span class="carpool-board__region">
					<i class="far fa-map"></i>
					원주
				</span>
			</header>
			<ul class="carpool-board__postings">
				<c:forEach items="${list }" var="board">
					<li class="carpool-board__posting">
	          			<a href='/mainpage/carinfo?pnum=<c:out value="${board.pnum }"/>'>
			            	<div class="posting__content">
	  					  		<i class="fas fa-car fa-2x" style="color:#47C83E"></i>
			              		<div class="posting__preview">
			                		<h4 class="carpool-board__posting-title">
			                			<c:out value="${board.title }"/>
			                		</h4>
			                		<span class="carpool-board__posting-destination">
			                			<c:out value="${board.destination }"/>
			                		</span>
		              			</div>
			            	</div>
				            <span class="posting__date-time">
				              <fmt:formatDate pattern="yy.MM.dd HH:mm" value="${board.regdate }"/>
				            </span>
		          		</a>
					</li>
				</c:forEach>
			</ul>
		</section>
	</main>
	<nav class="tab-bar">
		<a href="list" class="tab-bar__tab tab-bar__tab--selected">
			<i class="fas fa-home"></i>
			<span class="tab-bar__title">Home</span>
		</a>
		<a href="chats" class="tab-bar__tab">
			<i class="fa fa-comment"></i>
			<span class="tab-bar__title">Chat</span>
		</a>
		<a href="friend" class="tab-bar__tab">
			<i class="fa fa-user"></i>
			<span class="tab-bar__title">Friend</span>
		</a>
		<a href="#" class="tab-bar__tab">
			<i class="fa fa-ellipsis-h"></i>
			<span class="tab-bar__title">More</span>
		</a>
	</nav>
</body>
</html>
