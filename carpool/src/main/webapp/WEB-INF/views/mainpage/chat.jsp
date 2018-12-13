<%@page import="org.carpool.domain.MemberVO"%>
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
  <title>Chat</title>
  <link rel="stylesheet" href="/resources/css/style.css">
  <script type="text/javascript"
  			src="/resources/js/sockjs.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
</head>
<body class="body-chat">
  <header class="top-header chat-header">
    <div class="header__top">

    </div>
    <div class="header__bottom">
      <div class="header__column">
        <a href="chats">
          <i class="fa fa-chevron-left fa-lg"></i>
        </a>
      </div>
      <div class="header__column">
        <span class="header__text">채팅방</span>
      </div>
      <div class="header__column">
        
        <i class="fa fa-bars"></i>
      </div>
    </div>
  </header>
  <main class="chat">
    <div class="date-divider">
      <span class="date-divider__text" id="myname"></span>
    </div>
    
    <div id="chatdata">
    
    	<input type="hidden" value='${userid}' id="sessionuserid">
    </div>
    <!-- <div class="chat__message chat__message-from-me">
      <span class="chat__message-time">17:55</span>
      <span class="chat__message-body">
        Hello! This is a test message.
      </span>
    </div>
    
    <div class="chat__message chat__message--to-me">
      <img src="/resources/images/avatar.jpg" class="chat__message-avatar">
      <div class="chat__message-center">
        <h3 class="chat__message-username">Jinsun</h3>
        <span class="chat__message-body">
          And this is an answer
        </span>
      </div>
      <span class="chat__message-time">19:35</span>
    </div> -->
    
    
  </main>
  <div class="type-message">
    <i class="fa fa-plus fa-lg"></i>
    
    <div class="type-message__input">
      <input type="text" id="msg" value="">
      <span class="record-message">
   	
      	<a id="btnSend">
        <i class="fa fa-chevron-right fa-lg"></i>
      	</a> 
 
      </span>
    </div>
  </div>


<script type="text/javascript">

$(document).ready(function(){
	
	
	
	$('#btnSend').on('click',function(evt){
		evt.preventDefault();
		if(socket.readyState !== 1) return;
		let msg = $('input#msg').val();
		socket.send(msg);
	});
	
	connect();
});

</script>

  
  
<script>
var socket = null;

function connect(){
	var ws = new WebSocket("ws://localhost:8080/chatEcho?pnum=83");
	socket = ws;
	var cnt=0;
	ws.onopen = function() {
		console.log('Info: connection opened.');
		
		$("#myname").append(
				'<span class="date-divider__text">'+
				'채팅방에 입장했습니다.'+
				'</span>'
				);
		
	};

	ws.onmessage = function(event) {
		console.log("ReceiveMessage:",event.data+'\n');
		console.log("event:",ws.data+'\n');
		var data= event.data;
		var strArray=data.split(':');
		var message= strArray[1];
		var sessionid=strArray[0];
			$("#chatdata").append(
					'<div class="chat__message chat__message-from-me">'+
					'<span class="chat__message-time">'+
					sessionid+'번 사용자'+
					'</span>'+
					'<span class="chat__message-body">'+
					message+
					'</span>'+
					'</div>'				
			);
		
		
	};


	ws.onclose = function(event) { 
		console.log('Info: connection closed.');
		//setTimeout(function(){connect();},1000);
	};
	ws.onerror = function(err) { console.log('Error:',err);};


}


</script>  

</body>
</html>
