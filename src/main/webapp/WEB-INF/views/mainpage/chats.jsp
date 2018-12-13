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
	<title>chats</title>
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
				<i class="fas fa-plus"></i>
			</div>
		</div>
	</header>
	<main class="chats">
      <ul class="chats__list">
        <li class="chats__chat">
          <a href="chat">
            <div class="chat__content">
              <img src="/resources/images/avatar.jpg">
              <div class="chat__preview">
                <h3 class="chat__user">Jinsun</h3>
                <span class="chat__last-message">Hello! This is a test message!</span>
              </div>
            </div>
            <span class="chat__date-time">
              15:55
            </span>
          </a>
        </li>
        <li class="chats__chat">
          <a href="chat">
            <div class="chat__content">
              <img src="/resources/images/avatar.jpg">
              <div class="chat__preview">
                <h3 class="chat__user">Jinsun</h3>
                <span class="chat__last-message">Hello! This is a test message!</span>
              </div>
            </div>
            <span class="chat__date-time">
              15:55
            </span>
          </a>
        </li>
        <li class="chats__chat">
          <a href="chat">
            <div class="chat__content">
              <img src="/resources/images/avatar.jpg">
              <div class="chat__preview">
                <h3 class="chat__user">Jinsun</h3>
                <span class="chat__last-message">Hello! This is a test message!</span>
              </div>
            </div>
            <span class="chat__date-time">
              15:55
            </span>
          </a>
        </li>
        <li class="chats__chat">
          <a href="chat">
            <div class="chat__content">
              <img src="/resources/images/avatar.jpg">
              <div class="chat__preview">
                <h3 class="chat__user">Jinsun</h3>
                <span class="chat__last-message">Hello! This is a test message!</span>
              </div>
            </div>
            <span class="chat__date-time">
              15:55
            </span>
          </a>
        </li>
        <li class="chats__chat">
          <a href="chat.html">
            <div class="chat__content">
              <img src="/resources/images/avatar.jpg">
              <div class="chat__preview">
                <h3 class="chat__user">Jinsun</h3>
                <span class="chat__last-message">Hello! This is a test message!</span>
              </div>
            </div>
            <span class="chat__date-time">
              15:55
            </span>
          </a>
        </li>
        <li class="chats__chat">
          <a href="chat">
            <div class="chat__content">
              <img src="/resources/images/avatar.jpg">
              <div class="chat__preview">
                <h3 class="chat__user">Jinsun</h3>
                <span class="chat__last-message">Hello! This is a test message!</span>
              </div>
            </div>
            <span class="chat__date-time">
              15:55
            </span>
          </a>
        </li>
          <li class="chats__chat">
            <a href="chat">
              <div class="chat__content">
                <img src="/resources/images/avatar.jpg">
                <div class="chat__preview">
                  <h3 class="chat__user">Jinsun</h3>
                  <span class="chat__last-message">Hello! This is a test message!</span>
                </div>
              </div>
              <span class="chat__date-time">
                15:55
              </span>
            </a>
          </li>
          <li class="chats__chat">
            <a href="chat">
              <div class="chat__content">
                <img src="/resources/images/avatar.jpg">
                <div class="chat__preview">
                  <h3 class="chat__user">Jinsun</h3>
                  <span class="chat__last-message">Jinsun</span>
                </div>
              </div>
              <span class="chat__date-time">
                Jul 29
              </span>
            </a>
          </li>
      </ul>
	</main>
	<nav class="tab-bar">
		<a href="list" class="tab-bar__tab">
			<i class="fas fa-home"></i>
			<span class="tab-bar__title">Home</span>
		</a>
		<a href="chats" class="tab-bar__tab tab-bar__tab--selected">
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
