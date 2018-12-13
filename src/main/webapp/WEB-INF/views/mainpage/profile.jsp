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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Profile</title>
  <link rel="stylesheet" href="/resources/css/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
  <header class="top-header top-header--transparent">
    <div class="header__top">

    </div>
    <div class="header__bottom">
      <div class="header__column">
        <a class="header__column-profile" href="friend.html">
          <i class="fa fa-times fa-lg"></i>
        </a>
      </div>
      <div class="header__column">

      </div>
      <div class="header__column">
      </div>
    </div>
  </header>
  <main class="profile">
    <header class="profile__header">
      <div class="profile__header-container">
        <img src="/resources/images/avatar.jpg" alt="">
        <h3 class="profile__header-title">Jinsun</h3>
      </div>
    </header>
    <div class="profile__container">

      <div class="profile__actions">
        <div class="profile__action">
          <button class="profile__action-title">
            채팅 <i class="fa fa-comment fa-lg"></i>
          </button>
        </div>
        <div class="profile__action">
          <button class="profile__action-title__two">
            친구추가 <i class="fa fa-user"></i>
          </button>
        </div>
      </div>
    </div>
  </main>
</body>
</html>
