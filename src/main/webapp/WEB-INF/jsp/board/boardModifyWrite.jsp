<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Astral by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/main.css'/>" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/noscript.css'/>" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/style.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/assets/css/fontawesome-all.min.css'/>" />
</head>

<body class="is-preload">

	<!-- Wrapper-->
	<div id="wrapper">
		<!-- Nav -->
		<nav id="nav">
				<jsp:include page="/WEB-INF/jsp/cmmn/header.jsp" />
		</nav>
		<!-- Main -->
		<div id="main">
			<!-- 글쓰기 -->
			<article id="contact" class="panel">
				<header>
					<h5>게시판 수정 화면</h5>
				</header>
				<form name="frm" id="frm">
					<input type="hidden" name="unq" value="${boardDetail.unq}">
					<div>
						<div class="row">
							<div class="col-6 col-12-medium">
								<lebel for="title">제목</lebel>
								<input type="text" name="title" id="title" value="${boardDetail.title }" />
							</div>
							<div class="col-6 col-12-medium">
								<lebel for="pass">암호</lebel>
								<input type="password" name="pass" id="pass" />
							</div>
							<div class="col-12">
								<lebel for="name">글쓴이</lebel>
								<input type="text" name="name" id="name"	value="${boardDetail.name }" readonly="readonly" />
							</div>
							<div class="col-12">
								<lebel for="content">내용</lebel>
								<textarea name="content" id="content" rows="6">${boardDetail.content}</textarea>
							</div>
							<div class="col-12">
								<input type="submit" onclick="fn_modify(); return false;" value="수정" />
								 <input type="reset" value="취소" />
							</div>
						</div>
					</div>
				</form>
			</article>
		</div>
		<!-- Footer -->
			<jsp:include page="/WEB-INF/jsp/cmmn/footer.jsp" />
	</div>

	<!-- Scripts -->
	<script type="text/javascript"
		src="<c:url value='/css/egovframework/assets/js/jquery.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/css/egovframework/assets/js/browser.min.js'/>" /></script>
	<script type="text/javascript"
		src="<c:url value='/css/egovframework/assets/js/breakpoints.min.js'/>" /></script>
	<script type="text/javascript"
		src="<c:url value='/css/egovframework/assets/js/util.js'/>" /></script>
	<script type="text/javascript"
		src="<c:url value='/css/egovframework/assets/js/main.js'/>" /></script>
</body>
</html>