<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link href="<c:url value="/resources/product/css/2.3.2/bootstrap-cobinde.min.css"/>" rel="stylesheet" id="bootstrap-css">
    <style media="screen">

      .text {
        width=10;
      }
      .pagination {
        float : left;
      }
      .btn-toolbar {
        float : right;
      }
      .container_footer::after {
        content: "";
        display: block;
        clear : both;
      }
      .list p {
        text-align: center;
      }
      .p_id {
        width : 50px;
      }
      .p_title {
        width : 674px;
        text-align: center;
      }
      .u_nick {
        width : 250px;
      }
      .p_data {
        width: 100px;
      }
    </style>
  </head>
  <body>
    <body>
      <div class="container">
        <div class="list">
          <div class="well" style="margin-top : 46px; height : 720px;">
              <table class="table">
                <thead>
                  <tr class="list">
                    <th class="p_id"><p>#</p></th>
                    <th class="p_title"><p>제목</p></th>
                    <th class="u_nick"><p>닉네임</p></th>
                    <th class="P_date"><p>날짜</p></th>
                  </tr>
                </thead>
                <c:forEach items="${productList}" var="productList">
	                <tbody>
	                  <tr>
	                    <th class="p_id"><p>${product.p_id}</p></th>
	                    <th class="p_title"><p>${product.p_title}</p></th>
	                    <th class="u_nick"><p>${product.u_nick}</p></th>
	                    <th class="P_date"><p>${product.p_date}</p></th>
	                  </tr>
	                </tbody>
	             </c:forEach>
              </table>
          </div>
          <div class="container_footer">
            <div class="pagination">
                <ul>
                    <li><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </div>
            <div class="btn-toolbar">
                <a href="call_product"><button class="btn btn-primary">ìíë±ë¡</button></a>
            </div>
          </div>

        </div>
      </div>
    </body>
  </body>
</html>
