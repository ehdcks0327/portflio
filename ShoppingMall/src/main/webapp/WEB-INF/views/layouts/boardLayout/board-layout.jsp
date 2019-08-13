<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Modern Business - Start Bootstrap Template</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/admin/vendor/fontawesome-free/css/all.min.css"/>"  rel="stylesheet" type="text/css">

  <!-- Bootstrap core CSS -->
  <link href="<c:url value="/resources/main/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/main/css/modern-business.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/admin/css/sb-admin.css"/>" rel="stylesheet">
  
</head>
  <style>
    .custom-icon-pos {
   	    color: #fff;
	    background-color: #dc3545;
	    position: absolute;
	    margin-left: 0.75rem;
	    top: 0.1rem;
	    /* font-weight: 400; */
	    /* right: 1.25rem; */
	    left: 0.4rem;
	    font-size: 0.5rem;
    }
    
	input:focus {
	    outline: none;
	}
    
    tr:nth-last-child(1) {
    	border-bottom: 3px double #dee2e6;
    	
    }
    
    .custom-control-after::after {
		display: none;
    }
  </style>
<body>
  <sec:authorize access="isAnonymous()">
      <tiles:insertAttribute name="post_modal" ignore="ture"/>
  
  </sec:authorize>
  <sec:authorize access="isAuthenticated()">
      <tiles:insertAttribute name="pre_modal" ignore="ture"/>
  
  </sec:authorize>

  <tiles:insertAttribute name="header" ignore="ture"/>
  <tiles:insertAttribute name="control" ignore="ture"/>
  <div id="container_cover">
  	<tiles:insertAttribute name="container" ignore="ture"/>
  </div>
  <tiles:insertAttribute name="footer" ignore="ture"/>
  <!-- Bootstrap core JavaScript -->
  <a href="#sign-in" data-toggle="modal">테스트</a>
  <script src="<c:url value="/resources/main/vendor/jquery/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/main/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
  <script src="<c:url value="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

</body>

</html>
