<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/admin/vendor/fontawesome-free/css/all.min.css"/>"  rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.css"/>"  rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/admin/css/sb-admin.css"/>" rel="stylesheet">
</head>
	<body>
		<tiles:insertAttribute name="header"/>

		<tiles:insertAttribute name="container"/>
	
		<tiles:insertAttribute name="footer"/>
	</body>
  <!-- Bootstrap core JavaScript-->
  <script src="<c:url value="/resources/admin/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

  <!-- Core plugin JavaScript-->
  <script src="<c:url value="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

  <!-- Page level plugin JavaScript-->
  <script src="<c:url value="/resources/admin/vendor/chart.js/Chart.min.js"/>"></script>
  <script src="<c:url value="/resources/admin/vendor/datatables/jquery.dataTables.js"/>"></script>
  <script src="<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.js"/>"></script>

  <!-- Custom scripts for all pages-->
  <script src="<c:url value="/resources/admin/js/sb-admin.min.js"/>"></script>

  <!-- Demo scripts for this page-->
  <script src="<c:url value="/resources/admin/js/demo/datatables-demo.js"/>"></script>
  <script src="<c:url value="/resources/admin/js/demo/chart-area-demo.js"/>"></script>
</html>