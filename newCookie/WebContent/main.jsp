
<%@page import="com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.QnADAO"%>
<%@page import="com.model.QnADTO"%>
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
      <link rel="stylesheet" href="assets/css/main_log.css" />
      <style type="text/css">
      
      #header input{
                 width:300px;
              height:30px;
                 
         }
      
         
      </style>


</head>
   <body class="is-preload">

<%
   
   // �α����� �г��� ��������
   MemberDTO info = (MemberDTO)session.getAttribute("info");
   QnADAO dao = new QnADAO();
   ArrayList<QnADTO> qna_list = new ArrayList<QnADTO>();
   qna_list = dao.showQnA();
   
   int cnt = dao.date();
   


%>

      <!-- Header -->
      
      <header id="menu_bar">
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
                  <nav class="main">
                     
                  </nav>
               </header>
      
      
         <header id="header">
         <%if(info!=null){ %>
         
               <div class="inner">
                  <a href="#" class="image avatar"><img src="images/avatar.jpg" alt="" /></a>
                  <h1><strong></strong><%=info.getNickname() %>, �� �������<br />
                  <h4> ���õ� OBO Diary��<br> ã���ּż� �����մϴ�.<br /></h4>
                   <a href="LogoutServiceCon"  style="font-size: 2px"> �α׾ƿ�    </a> <a href="#"  style="margin-left: 10px; font-size: 2px">  ������ ����   </a> <a href="#"  style="margin-left: 10px; font-size: 2px">   �������� ����  </a>
               </div>
         <%}else{ %>
         
         
         
               <div class="inner">
                  <a href="#" class="image avatar"><img   src="images/avatar.jpg" alt="" /></a>    
                   <form action="LoginServiceCon" method = "post" accept-charset="EUC-KR">
                   <input width="300px" placeholder="ID�� �Է��ϼ���." style="margin-top: 2px;" type="text" id="id" name="id" >
                   <br>
                   <input placeholder="PW�� �Է��ϼ���." style="margin-top: 2px;" type="password" id="pw" name="pw"> 
                   <br>
                   <input  type="submit" id="btn_login" value="�α���">
                  
                   </form>
                  
                   <a href="#"  style="font-size: 2px"> ���̵� ã��   </a> <a href="#"  style="margin-left: 10px; font-size: 2px"> ��й�ȣ ã��  </a>
                   <a href="join.html"  style="margin-left: 10px; font-size: 2px"> ȸ������  </a>
               </div>
            
         <%} %>
         </header>
         

      
         <div id="main">

            <article class="post">
                        <header>
                           <div class="title">
                              <h2><a href="single.html"><%=qna_list.get(cnt).getNumber() %></a></h2>
                              <br>
                              <h2><%=qna_list.get(cnt).getMain()%></h2>
                              
                              <% if(qna_list.get(cnt).getSub()!=null){%>
                              
                                 <p><%=qna_list.get(cnt).getSub()%> </p>
                                 
                              <%}else{ %>
                                 <p></p>
                              <%} %>
                           </div>
                           <div class="meta">
                              <time class="published" datetime="2015-11-01">07 26, 2021</time>
                              <a href="#" class="author"><span class="name">1��°  7��</span><img src="images/avatar.jpg" alt=""></a>
                           </div>
                        </header>
                        
                        
                        <%if(info==null){ %>
                           <a href="join.jsp" class="image featured"><img src="images/pic01.jpg" alt=""></a>
                              <p> �α��� �ϼž� �̿��� �� �ִ� ������ �Դϴ�. </p>
                           <footer>
                              <ul class="actions" style="margin-left: 175px;">
                                 <li ><a href="join.html"  class="button large">ȸ������ �Ϸ� ���� </a></li>
                              </ul>
                        <%}else{ %>                        
                           <a href="single.html" class="image featured"><img src="images/pic01.jpg" alt=""></a>
                              <p>������ �亯�� �޾� ���� ���̿��� </p>
                           <footer>
                              <ul class="actions" style="margin-left: 175px;">
                                 <li ><a href="main.jsp"  class="button large">�����ϱ� </a></li>
                              </ul>
                           
                        <%} %>
      
                              
                           
                           <ul class="stats">
                              <li><a href="#" class="icon solid fa-heart"></a></li>
                              <li><a href="#" class="icon solid fa-comment"></a></li>
                           </ul>
                        </footer>
                     </article>
            
               <section id="two">
                  <h2>Recent Work</h2>
                  <div class="row">
                     <article class="col-6 col-12-xsmall work-item">
                        <a href="images/fulls/01.jpg" class="image fit thumb"><img src="images/thumbs/01.jpg" alt="" /></a>
                        <h3>2021-07-25</h3>
                        <p>���� �������̿���</p>
                     </article>
                     <article class="col-6 col-12-xsmall work-item">
                        <a href="images/fulls/02.jpg" class="image fit thumb"><img src="images/thumbs/02.jpg" alt="" /></a>
                        <h3>2021-07-24</h3>
                        <p>���� �������̿���</p>
                     </article>
                     <article class="col-6 col-12-xsmall work-item">
                        <a href="images/fulls/03.jpg" class="image fit thumb"><img src="images/thumbs/03.jpg" alt="" /></a>
                        <h3>2021-07-23</h3>
                        <p>���� �������̿���</p>
                     </article>
                     <article class="col-6 col-12-xsmall work-item">
                        <a href="images/fulls/04.jpg" class="image fit thumb"><img src="images/thumbs/04.jpg" alt="" /></a>
                        <h3>2021-07-22</h3>
                        <p>���� �������̿���</p>
                     </article>
                     <article class="col-6 col-12-xsmall work-item">
                        <a href="images/fulls/05.jpg" class="image fit thumb"><img src="images/thumbs/05.jpg" alt="" /></a>
                        <h3>2021-07-21</h3>
                        <p>���� �������̿���</p>
                     </article>
                     <article class="col-6 col-12-xsmall work-item">
                        <a href="images/fulls/06.jpg" class="image fit thumb"><img src="images/thumbs/06.jpg" alt="" /></a>
                        <h3>2021-07-20</h3>
                        <p>���� �������̿���</p>
                     </article>
                  </div>
                  <ul class="actions">
                  
                     <li><a href="#"  style="margin-left: 300px; margin-top: 50px;" class="button">MORE</a></li>
                  </ul>
               </section>

               
         </div>

      <!-- Footer -->
         <footer id="footer">
            <div class="inner">
               <ul class="icons">
                  <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                  <li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
                  <li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
                  <li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
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