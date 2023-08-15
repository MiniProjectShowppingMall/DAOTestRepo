<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="loginCss.jsp"%>
<body>
	<div class="LoginBox">
		<h1 class="login-logo">
			<a href=""> <img class="login-logo-img"
				src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcBOzBQ%2FbtsrgVxv3dI%2F8Pk1uIVIhSQNvBZJJeqkXK%2Fimg.jpg">
			</a>
		</h1>
		<div class="login-main">
			<div class="item-header">
				<a href="" class="login-type-button">로그인</a>
			</div>
		</div>
		<div>
			<form action="" class="login-form">
				<p>
					<input type="text" name="id" placeholder="아이디">
				</p>
				<p>
					<input type="password" name="pw" placeholder="비밀번호">
				</p>
				<button class="loginBtn">로그인</button>
			</form>
		</div>
		<hr class="login-separator">
		<a href=""><button class="createBtn">회원 가입</button></a> <a href=""
			class="findID">아이디/비밀번호 찾기 ></a>
	</div>
</body>
</body>
</html>