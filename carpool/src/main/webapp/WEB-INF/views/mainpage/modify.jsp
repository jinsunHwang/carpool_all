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
<sec:authentication property="principal" var="pinfo"/>

	<header class="top-header top-header--carinfo">
		<div class="header__top">
		</div>
		<div class="header__bottom">
			<div class="header__column">
				<a data-oper='list' href="/mainpage/list">
					<i class="fa fa-chevron-left fa-lg"></i>
				</a>
			</div>
			<div class="header__column">
			</div>
			<div class="header__column">
				<sec:authorize access="isAuthenticated()">
					<c:if test="${pinfo.username eq board.writer }">
						<button type="submit" data-oper='remove' class="btn__ btn-remove">삭제</button>
					</c:if>
				</sec:authorize>
			</div>
		</div>
	</header>
	<main class="carinfo">
    <form role="form" action="/mainpage/modify" method="post">
    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
  		<header class="carinfo__header">
  			<header class="register__header-header">
  				<label class="register__label">제목</label>
          		<input class="input__design" name="title" value='<c:out value="${board.title }"/>'>
  			</header>
  			<div class="carinfo__header-container">
  				<div class="carinfo__header-container_item">
  					<label class="carinfo__item-title">목적지</label>
  					<input class="input__design" name="destination" value='<c:out value="${board.destination }"/>'>
  				</div>
  				<div class="carinfo__header-container_item">
  					<label class="carinfo__item-title">만날시간</label>
  					<input class="input__design" type="text" name="meet"  value='<c:out value="${board.meet }"/>'>
  				</div>
  			</div>
  		</header>
  		<section class="carinfo__container">
        <div class="carinfo__container-main">
       		<div class="carinfo__container-user">
				<span class="carinfo__container-id">ID : </span>
            	<input class="input__design" type="text" name="writer"  value='<c:out value="${board.writer }"/>' readonly="readonly">
			</div>
  			<div class="carinfo__container-text">
  				<textarea class="input__design" name="content" rows="10"style="width:100%;"><c:out value="${board.title }"/></textarea>
  			</div>
  				<input type="hidden" id='pnum' name='pnum' value='<c:out value="${board.pnum }"/>'>
        </div>
  		</section>
    
	    <nav class="tab-bar-carinfo">
	      <sec:authorize access="isAuthenticated()">
			<c:if test="${pinfo.username eq board.writer }">
		        <button type="submit"  data-oper="modify" class="register__container-action">
		            	수정하기
		        </button>
   			</c:if>
	      </sec:authorize>
	    </nav>
    </form>
	</main>


<script type="text/javascript">
$(document).ready(function(){
	
	var formObj= $("form");
	
	$('button').on("click",function(e){
		e.preventDefault();
		
		var operation = $(this).data("oper");
		
		console.log(operation);
		
		if(operation === 'remove'){
			formObj.attr("action","/mainpage/remove");
		}else if(operation==='list'){
			//move to list
			formObj.attr("action","/mainpage/list").attr("method","get");
			formObj.empty();
		}
		formObj.submit();
	})
	
})

</script>
</body>
</html>
