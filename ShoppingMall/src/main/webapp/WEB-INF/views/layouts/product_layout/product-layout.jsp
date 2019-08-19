<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Modern Business - Start Bootstrap Template</title>

  <tiles:insertAttribute name="css" ignore="ture"/>
</head>  

<body>
  <tiles:insertAttribute name="header" ignore="ture"/>
  <div id="container_cover">
  	<tiles:insertAttribute name="container" ignore="ture"/>
  </div>
  <tiles:insertAttribute name="footer" ignore="ture"/>
  <!-- Bootstrap core JavaScript -->

</body>
    <tiles:insertAttribute name="script" ignore="ture"/>
  
</html>
