<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
    <meta charset="utf-8">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
		function page(idx) {
			var pagenum = idx;
			var contentnum = $("#contentnum option:selected").val();
			location.href="${pageContext.request.contextPath}/product/list?pagenum="+pagenum+"&contentnum="+contentnum;
			}
		$(document).ready(function() {
			$(".value_list").click(function(){
				
				})
			})
    </script>
  <body>
    <body>
      <div class=container>
        <div class="list">
          <div class="well">
            <select name="contentnum" id="contentnum">
            	<option value="10">10</option>
              	<option value="20">20</option>
              	<option value="30">30</option>
            </select>
            <div class="btn-toolbar">
                <a href="call_product"><button class="btn btn-primary">상품등록</button></a>
            </div>
              <table class="table">
                <thead>
                  <tr class="list">
                    <th class="p_id"><p>#</p></th>
                    <th class="p_title"><p>제목</p></th>
                    <th class="u_nick"><p>닉네임</p></th>
                    <th class="P_date"><p>작성일</p></th>
                  </tr>
                </thead>
                <c:forEach items="${list}" var="list">
		                <tbody>
		                  <a href="product/product_page?p_id=${list.p_id}">
			                  <tr class="value_list">
			                    <th class="p_id"><p>${list.p_id}</p></th>
			                    <th class="p_title"><p>${list.p_title}</p></th>
			                    <th class="u_nick"><p>${list.u_nick}</p></th>
			                    <th class="P_date"><p>${list.p_date}</p></th>
			                  </tr>
		                  </a>
		                </tbody>
	             </c:forEach>
              </table>
          </div>
          <div class="container_footer">
            <div class="pagination">
                <tr>
                	<td>
                		<c:if test="${page.prev}">
                			<a style="text-decoration: none;" href="javascript:page(${page.getStartPage()-1});">&laquo;</a>
                		</c:if>
                		<c:forEach begin="${page.getStartPage()}" end="${page.getEndPage()}" var="idx">
                			<a style ="text-decoration: none;" href="javascript:page(${idx});">${idx}</a>
                		</c:forEach>
                		
                		<c:if test="${page.next}">
                			<a style="text-decoration: none;" href="javascript:page(${page.getEndPage()+1});">&raquo;</a>
                		</c:if>
                	</td>
                </tr>
            </div>
          </div>

        </div>
      </div>
    </body>
  </body>
</html>