<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="/resources/css/usercss.css">
	<link rel="stylesheet" href="/resources/css/bootstrap.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<title>Friend</title>
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

			</div>
		</div>
	</header>
	<main class="friends">
    <section class="friends__section">
      <header class="friends__section-header">
        <h6 class="friends__section-title">회원가입</h6>
      </header>
      <form name=form action="/customRegister" method="post">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <table class="table table-bordered table-hover" style="text-align:cneter; boder:1px solid #dddddd">
          	<tbody>
				<tr>
					<td style="width:110px;"><h5>아이디</h5></td>
					<td><input class="form-control" type="text" id="uid" name="userid" maxLength="20" placeholder="아이디를 입력해주세요."></td>
				</tr>
				<tr>
					<td style="width:110px;"><h5>비밀번호</h5></td>
					<td colspan="2"><input class="form-control" type="password" onkeyup="passwordCheckFunction();" id="upw" name="userpw" maxLength="20" placeholder="비밀번호를 입력해주세요."></td>
				</tr>
				<tr>
					<td style="width:110px;"><h5>이름</h5></td>
					<td colspan="2"><input class="form-control" type="text" id="uname" name="userName" maxLength="20" placeholder="이름을 입력해주세요."></td>
				</tr>
				<tr>
					<td style="width:110px;"><h5>휴대폰</h5></td>
					<td colspan="2"><input class="form-control" type="text" id="uphone" name="userphone" maxLength="20" placeholder="휴대폰번호를 입력해주세요. '-'없이 "></td>
				</tr>
					<input type="hidden" name="auth" value="ROLE_USER">
				<tr>
					<td style="text-align:left" colspan="3">
						<button class="btn btn-primary pull-right" type="submit" >
							회원가입
						</button>
					</td>
				</tr>
			</tbody>
        </table>
       </form>
    </section>
	</main>
	
	
	

  </body>
</html>
