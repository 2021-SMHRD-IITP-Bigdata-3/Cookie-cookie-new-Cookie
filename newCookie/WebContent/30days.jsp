<%@page import="com.model.ChallengeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.ChallengeDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Strata by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta charset="EUC-KR">
		<link rel="stylesheet" href="assets/css/30days.css" />
	</head>
	<body class="is-preload">
<%

	ChallengeDAO dao = new ChallengeDAO();
	ArrayList<ChallengeDTO> challenge_list = new ArrayList<ChallengeDTO>();
	challenge_list = dao.showChallenge();
	
%>
		<!-- Header -->
			<header id="header">
				<div class="inner">
					<a href="#" class="image avatar"><img src="images/avatar.jpg" alt="" /></a>
					<h1><strong>I am Strata</strong>, a super simple<br />
					responsive site template freebie<br />
					crafted by <a href="http://html5up.net">HTML5 UP</a>.</h1>
				</div>
			</header>

		<!-- Main -->
			<div id="main">

				<!-- One -->
					<section id="one">
						<header class="major">
							<h1> 30 days</h1>
						</header>
						<p>30�ϵ��� ������ ç������ �����غ��ƿ�!</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</section>

				<!-- Two -->
					<section id="two">
						<h2>������ ç����</h2>
						<div class="row">
						
							<article class="col-6 col-12-xsmall work-item">
								<a href="images/fulls/01.jpg" class="image fit thumb"><img src="images/thumbs/01.jpg" alt="" /></a>
								<h3><%=challenge_list.get(1).getHabit() %></h3>
								<p>���⿡�� �� �� �� ���� �� �غþ��</p>
							</article>
							
							<article class="col-6 col-12-xsmall work-item">
								<a href="30days.html" class="image fit thumb"><img src="images/thumbs/02.jpg" alt="" /></a>
								<h3>���ο� ç������ �߰��غ�����!</h3>
								<p>������Ʈ�� �� ���� ���̳׿�</p>
							</article>
							
							<article class="col-6 col-12-xsmall work-item">
								<a href="30days.html" class="image fit thumb"><img src="images/thumbs/03.jpg" alt="" /></a>
								<h3>���ο� ç������ �߰��غ�����!</h3>
								<p>�׷��� ���� �־���� �ʳ���?</p>
							</article>
							<article class="col-6 col-12-xsmall work-item">
								<a href="30days.html" class="image fit thumb"><img src="images/thumbs/04.jpg" alt="" /></a>
								<h3>���ο� ç������ �߰��غ�����!</h3>
								<p>���߿� ���⿡�� ������ �� �ִ´� �ߴµ� ���� �� �������?</p>
							</article>
						</div>
						
					</section>

				
		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>