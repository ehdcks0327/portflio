<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
    <html lang="ko" dir="ltr">
      <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title></title>


        <link href="../resources/product/css/3.3.0/bootstrap.min.css"" rel="stylesheet" id="bootstrap-css">
        <link href="../resources/product/css/3.3.0/adder.css" rel="stylesheet" type="text/css">
        <script src="../resources/product/js/3.3.0/bootstrap.min.js"></script>
        <script src="../resources/jquery/1.11.1/jquery-1.11.1.min.js"></script>
        <script src="../resources/ckeditor/ckeditor.js"></script>
        <script src="../resources/ckeditor/samples/js/sample.js"></script>

      </head>
      </style>
      <body>
        <div class="container">

        <div class="clearfix"></div>
        	<div class="row">
        		<div><ul class="nav nav-tabs col-lg-12" role="tablist">
              <li class="active"><a href="#Product_main" role="tab" data-toggle="tab">상품등록</a></li>
                </ul></div>
                <div class="clearfix"></div>
                <div class="Product_Content tab-content">
                    <div id="Product_main" class="tab-pane active">
         <form class="" action="call_adder" method="get">
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
            </div>
     		<textarea id="editor" name="p_text" rows="8" cols="80"></textarea>
            <input type="submit" class="btn btn-primary" name="" value="등록">
          </fieldset>
        </form>

    </body>
    <script>
      initSample();
    </script>
    </html>
