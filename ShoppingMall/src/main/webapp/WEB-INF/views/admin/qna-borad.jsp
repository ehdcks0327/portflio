<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Insert title here</title>
  <link href="../resources/main/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/main/css/modern-business.css" rel="stylesheet">
  <style>
  	.nav-tabs .nav-link.active {
      color: black;
      font-weight: bold;
      border-color: #dee2e6 #dee2e6 white;
  	}
  	.nav-tabs .nav-link {
    }

  </style>
</head>
<body>
	  <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.html">Start Bootstrap</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="about.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="services.html">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.html">Contact</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Portfolio
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
              <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Blog
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
              <a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
              <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
              <a class="dropdown-item" href="blog-post.html">Blog Post</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Other Pages
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
              <a class="dropdown-item" href="full-width.html">Full Width Page</a>
              <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
              <a class="dropdown-item" href="faq.html">FAQ</a>
              <a class="dropdown-item" href="404.html">404</a>
              <a class="dropdown-item" href="pricing.html">Pricing Table</a>
              <a class="dropdown-item" href="admin/ad_index">Admin Page_1</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
    <!-- Page Content -->
  <div class="container" style="margin-top:20px; margin-bottom:20px;">
  	  <ul class="nav nav-tabs">
         <li class="nav-item">
         	<a class="nav-link active" href="#" onclick="boardClick(this)">공개 질문</a>
         </li>
         <li class="nav-item">
         	<a class="nav-link" href="#" onclick="boardClick(this)">비공개 질문</a>
         </li>
         <li class="nav-item" style="margin-left: 200px;">
          	<div class="input-group">
				<input type>          		
          	</div>
         </li>
     </ul>
  	<table class="table table-hover" style="text-align:center;">
  		<tr>
  			<th style="width: 10%; border-top: none;">
  				번호
  			</th>
  			<th style="width: 65%; border-top: none;">
  				제목
  			</th>
  			<th style="width: 15%; border-top: none;">
  				등록일
  			</th>
  			<th style="width: 10%; border-top: none;">
  				답변여부
  			</th>
  		</tr>
  		<tr>
  			<td>
  				1
  			</td>
  			<td>
  				Test
  			</td>
  			<td>
  				Test
  			</td>
  			<td>
  				Test
  			</td>
  		</tr>
  		<tr>
  			<td>
  				2
  			</td>
  			<td>
  				손놈에 대한 연구
  			</td>
  			<td>
  				2019-07-24
  			</td>
  			<td>
  				ㅇ
  			</td>
  		</tr>
  	</table>

  </div>
  <!-- /.container -->
  
    <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>
  

  <!-- Bootstrap core JavaScript -->
  
  <script src="../resources/main/vendor/jquery/jquery.min.js"></script>
  <script src="../resources/main/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script>
    function boardClick(obj) {
		$(obj).parent().siblings().children('a').removeClass('active');
		$(obj).addClass('active');
    }
  </script>
</body>
</html>