<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--         <script src="<c:url value="/resources/product/js/3.3.0/bootstrap.min.js"/>"></script> --%>
        <script src="<c:url value="/resources/product/jquery/3.2.1/jquery.min.js"/>"></script>
        <script src="<c:url value="/ckeditor/ckeditor.js"/>"></script> 
	
      <body>
        <div class="container">
	       <div class="row">
	        <div id="Product_main" class="tab-pane active">
	        <form class="" action="call_adder" enctype="multipart/form-data">
		          <fieldset>
		            <div class="col-lg-12 form-group margin50">
		              <label class="col-lg-2" for="p_title">상품 제목</label>
		              <div class="col-lg-4">
		                <input type="text" id="name" name="p_title" placeholder="" class="form-control name">
		              </div>
		            </div>
		
		            <div class=" col-lg-12 form-group">
		              <label class="col-lg-2" for="ProductType">카테고리 번호</label>
		              <div class="col-lg-4">
		                <select id="productType" name="c_id" class="form-control product-type">
		                    <option value="0">-선택-</option>
		                    <option value="1">-식품-</option>
		                    <option value="2">-가전-</option>
		                    <option value="3">-의류-</option>
		                </select>
		              </div>
		            </div>
		            <div class="col-lg-12 form-group">
		              <label class="col-lg-2" for="p_name">상품 이름</label>
		              <div class="col-lg-4">
		                <input type="text" id="name" name="p_name" placeholder="" class="form-control name">
		              </div>
		            </div>
		            <div class="col-lg-12 form-group">
		              <label class="col-lg-2" for="SKU">수량</label>
		              <div class="col-lg-4">
		                <input type="text" id="sku" name="p_quantity" placeholder="" class="form-control sku">
		              </div>
		            </div>
		            <div class="col-lg-12 form-group">
		              <label class="col-lg-2" for="Price">가격</label>
		              <div class="col-lg-4">
		                <input type="text" id="price" name="p_price" placeholder="" class="form-control price">
		              </div>
		            </div>
		            <div class="col-lg-12 form-group">
		              <label class="col-lg-2" for="p_name">상세 내용</label>
		              <input type="submit" class="btn btn-primary" name="" value="등록">
		            </div>
		     		<textarea id="editor" name="p_text" rows="8" cols="80"></textarea>
		     		<script>
	// 					CKEDITOR.replace("editor", {
							
	// 						filebrowserUploadUrl :"/main/upload/imageUpload"
							
	// 					   // filebrowserImageUploadUrl: 'MacaronicsServlet?command=ckeditor_upload'	
	// 					});
						CKEDITOR.replace('editor',
							{
								filebrowserUploadUrl:'<c:url value="/upload/imageUpload"/>?${_csrf.parameterName}=${_csrf.token}',
								height : "600px"
							} 
						);
					</script>
	 				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />   
		          </fieldset>
	        </form>
	        </div>
    	  </div>
    	</div><!-- 컨테이너 -->
    </body>
    </html>
