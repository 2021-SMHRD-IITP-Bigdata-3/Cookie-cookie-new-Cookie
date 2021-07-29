<%@page import="com.model.QnADTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.QnADAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css_newMain/main.css" />
</head>
<body class="is-preload">
<%
   
   // �α����� �г��� ��������
   MemberDTO info = (MemberDTO)session.getAttribute("info");
   QnADAO dao = new QnADAO();
   ArrayList<QnADTO> qna_list = new ArrayList<QnADTO>();
   qna_list = dao.showQnA();
   
   int cnt = dao.date();
   
   String today[] = dao.today();
   
   ArrayList<QnADTO> my_qnalist = new ArrayList<QnADTO>();
   

   if(info != null){
      my_qnalist = dao.showmy_QnA(info.getM_id());
   }
   
   
%>
      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Header -->
               <header id="header">
                  <h1><a href="main.jsp">OBO Diary</a></h1>
                  <nav class="links">
                     <ul>
                      <li><a href="#">�޷�</a></li>
                            <li><a href="#">Q&A</a></li>
                            <li><a href="30days.jsp">30 Days</a></li>
                               <li><a href="#">�ڱ�Ұ���</a></li>
                            <li><a href="#">Ű����</a></li>
                              <li><a href="#">������</a></li>
                              
                     </ul>
                  </nav>
                  
               </header>
               

				<!-- Main -->
					<div id="main">
					
					<!-- Post -->
							<article class="post">
								<header>
									<div class="title">
										<h2><a href="30days_check.html">�Ϸ翡 ��ä�� 3�� ���������ϱ�</a></h2>
										<p>���⿡�� �Ⱓ�� �������?</p>
									</div>
									
								</header>
								<a href="30days_check.html" class="image featured"><img src="images/pic02.jpg" alt="" /></a>
								<p>������ ����������! �����ϴ� �������� ��ſ���! Ǫ���� ���� �� ��������~ ��ٷ��ּ��� ������</p>
								
							</article>

						<!-- Post -->
							<article class="post">
							
								<header>
									<div class="title">
									
										<h2>30days</a></h2>
										<p>30�ϵ��� ������ ç������ �����غ��ƿ�!</p>
									</div>
									
								</header>
								<a href="30days.html" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
								<p>�������� �����θ� �������ٰ� �����Ͻó���? �ƴ� ���� ���������� ã�ƿ��� �� ���� �������� ���� �������ϰ� �����ϰ� ���ϰ� ��ǰ������ ������̿��� ������
								������ �׷� �ڽ��� ���� �� ü�������� ������ �ϸ� ����? ���⼭ �ڽ��� ������ ��鿩������! �׸��� �ǵ����̸� �����ϼż� ���񿡰� ��θ� ���ּ��� �����մϴ�:)
								����! ���� ������ ����������! ���ο� �������� ��ſ���! �ű⿡ �ִ� ���¹�ȣ�� �Ŀ� ��Ź�帳�ϴ�:)</p>
								
							</article>

						

						<!-- Post -->
							<article class="post">
							
								<header>
									<div class="title">
									
										<h2>30days</a></h2>
										<p>30�ϵ��� ������ ç������ �����غ��ƿ�!</p>
									</div>
									
								</header>
								<a href="30days.html" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
								<p>����:) ������� �����Դٸ� ����� ���� �����ϰ� �μ����� ü������ ����̿��� ¦¦¦ �׷� �迡 ���� �ϳ� �� ����� ���� �� �����? Ǫ��
								������� �������ϱ� ��մ� �̾߱� �ص帱�Կ�! �� ���� �̹����� Ŭ���ϸ� ���¹�ȣ�� ���ðſ���! ������? Ǫ���� ��¥ ���� �̾߱� �ص帱�Կ�
								����� ���� ç���� 4������ �� �� �ְ� �ߴµ� �����⵵ �ϰ� �� ���ڱ⵵ �ؼ� 3���� �ϱ�� �߾��~~ �����е� ��������? ������  </p>
								
							</article>
							
							

					
					
					</div>

				<!-- Sidebar -->
               <section id="sidebar">

                  <!-- Intro -->
                     <section id="intro">
                        <a href="#" class="logo"><img src="images/logo.jpg" alt="" /></a>
                        <header>
                        
                        <% if(info==null){%>
                           <form action="LoginServiceCon" method = "post" accept-charset="EUC-KR">
                                     <input width="300px" placeholder="ID�� �Է��ϼ���." style="margin-top: 2px;" type="text" id="id" name="id" >
                                     <br>
                                     <input placeholder="PW�� �Է��ϼ���." style="margin-top: 2px;" type="password" id="pw" name="pw"> 
                                     <br>
                                    <input style="width:410px"  type="submit" id="btn_login" value="�α���">
                                      <a href="#"  style="font-size: 2px"> ���̵� ã��   </a> <a href="#"  style="margin-left: 10px; font-size: 2px"> ��й�ȣ ã��  </a>
                                      <a href="join.html"  style="margin-left: 10px; font-size: 2px"> ȸ������  </a>
                  
                               </form>
                        <%}else{ %>
                        
                        
                        
                        
                           <h2><%=info.getNickname() %>, ��<br>�������</h2>
                           <p>���õ�  <a href="http://html5up.net"> OBO Diary</a>�� ã���ּż� �����մϴ�.</p>
                             <a  href="LogoutServiceCon"  style="font-size: 4px; margin-left:350px"> �α׾ƿ�    </a>
                        <%} %>
                        </header>
                     </section>

                  <!-- Mini Posts -->
                     <section>
                        <div class="mini-posts">

                           <!-- Mini Post -->
                              <article class="mini-post">
                                 <header>
                                    <h3><a href="single.html">������ ����</a></h3>
                                    <time class="published" datetime="2015-10-20">October 20, 2015</time>
                                    <a href="#" class="author"><img src="images/avatar.jpg" alt="" /></a>
                                 </header>
                                 <a href="single.html" class="image"><img src="images/pic04.jpg" alt="" /></a>
                              </article>

                           <!-- Mini Post -->
                              <article class="mini-post">
                                 <header>
                                    <h3><a href="single.html">�������� ����</a></h3>
                                    <time class="published" datetime="2015-10-19">October 19, 2015</time>
                                    <a href="#" class="author"><img src="images/avatar.jpg" alt="" /></a>
                                 </header>
                                 <a href="single.html" class="image"><img src="images/pic05.jpg" alt="" /></a>
                              </article>

                        
                        </div>
                     </section>


						<!-- Posts List -->
							<section>
								<ul class="posts">
									<li>
										<article>
											<header>
												<h3><a href="30days_check.html">�Ϸ翡 ��ä�� 3�� �������� �ϱ�</a></h3>
												<time class="published" datetime="2015-10-20">October 20, 2015</time>
											</header>
											<a href="30days_check.html" class="image"><img src="images/pic08.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="30days.html">���ο� ç������ �߰��غ�����!</a></h3>
												<time class="published" datetime="2015-10-15">October 15, 2015</time>
											</header>
											<a href="30days.html" class="image"><img src="images/pic09.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="30days.html">���ο� ç������ �߰��غ�����!</a></h3>
												<time class="published" datetime="2015-10-10">October 10, 2015</time>
											</header>
											<a href="30days.html" class="image"><img src="images/pic10.jpg" alt="" /></a>
										</article>
									</li>
									
								</ul>
							</section>

						<!-- About -->
							<section class="blurb">
								<h2>About</h2>
								<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod amet placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at phasellus sed ultricies.</p>
								<ul class="actions">
									<li><a href="#" class="button">Learn More</a></li>
								</ul>
							</section>

						<!-- Footer -->
							<section id="footer">
								<ul class="icons">
									<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon solid fa-rss"><span class="label">RSS</span></a></li>
									<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
								</ul>
								<p class="copyright">&copy; Untitled. Design: <a href="http://html5up.net">HTML5 UP</a>. Images: <a href="http://unsplash.com">Unsplash</a>.</p>
							</section>

					</section>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>