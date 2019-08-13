<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link href="../resources/product/css/4.1.1/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="../resources/product/css/4.1.1/productpage.css" rel="stylesheet" type="text/css">
    <script src="../resources/product/js/4.1.1/bootstrap.min.js"></script>
    <script src="../resources/product/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
  </head>
  <body>
    <div class="container">
    <div class="row">
      <div class="col-lg-12" style=" margin-top : 35px;">
        <div class="card mb-10">

          <div class="card-body store-body">
            <div class="product-info">
              <div class="product-gallery">
<!--                 <div class="product-gallery-thumbnails"> -->
<!--                   <ol class="thumbnails-list list-unstyled"> -->
<!--                     <li><img src="https://via.placeholder.com/350x350/ffcf5b" alt=""></li> -->
<!--                     <li><img src="https://via.placeholder.com/350x350/f16a22" alt=""></li> -->
<!--                     <li><img src="https://via.placeholder.com/350x350/d3ffce" alt=""></li> -->
<!--                     <li><img src="https://via.placeholder.com/350x350/7937fc" alt=""></li> -->
<!--                     <li><img src="https://via.placeholder.com/350x350/930000" alt=""></li> -->
<!--                   </ol> -->
<!--                 </div> -->
                <div class="product-gallery-featured">
                  <img src="https://via.placeholder.com/350x350/ffcf5b" alt="">
                </div>
              </div>
              <div class="product-seller-recommended">
<!--                 <h3 class="mb-5">판매자의 다른 상품</h3> -->
<!--                 <div class="recommended-items card-deck"> -->
<!--                   <div class="card"> -->
<!--                     <img src="https://via.placeholder.com/157x157" alt="" class="card-img-top"> -->
<!--                     <div class="card-body"> -->
<!--                       <h5 class="card-title">U$ 55.00</h5> -->
<!--                       <span class="text-muted"><small>T-Shirt Size X - Large - Nickony Brand</small></span> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                   <div class="card"> -->
<!--                     <img src="https://via.placeholder.com/157x157" alt="" class="card-img-top"> -->
<!--                     <div class="card-body"> -->
<!--                       <h5 class="card-title">U$ 55.00</h5> -->
<!--                       <span class="text-muted"><small>T-Shirt Size X - Large - Nickony Brand</small></span> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                   <div class="card"> -->
<!--                     <img src="https://via.placeholder.com/157x157" alt="" class="card-img-top"> -->
<!--                     <div class="card-body"> -->
<!--                       <h5 class="card-title">U$ 55.00</h5> -->
<!--                       <span class="text-muted"><small>T-Shirt Size X - Large - Nickony Brand</small></span> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                   <div class="card"> -->
<!--                     <img src="https://via.placeholder.com/157x157" alt="" class="card-img-top"> -->
<!--                     <div class="card-body"> -->
<!--                       <h5 class="card-title">U$ 55.00</h5> -->
<!--                       <span class="text-muted"><small>T-Shirt Size X - Large - Nickony Brand</small></span> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </div> -->
<!--                 /.recommended-items -->
<!--                 <p class="mb-5 mt-5"><a href="#">See all ads from this seller</a></p> -->
                <div class="product-description mb-5">

                  <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Odit nemo reiciendis quisquam a quis delectus consectetur ipsa eligendi aliquam earum in vitae voluptate ratione fugiat similique nostrum debitis dolor, ipsam quo officiis quas
                    necessitatibus? Magnam eveniet iure, eligendi est ullam consectetur repellat quis doloremque ad perspiciatis assumenda ducimus distinctio quaerat sit repudiandae illo praesentium modi dolor. Veritatis aperiam, minima natus assumenda
                    ipsum voluptatem reprehenderit? Possimus nobis, voluptate, blanditiis, temporibus ad nostrum corrupti quos corporis voluptas tempora aliquid magnam quia voluptatem rerum odit fugiat facere necessitatibus adipisci sunt. Veritatis architecto,
                    perferendis labore sit nobis eaque perspiciatis et iusto, in doloribus est!</p>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus vel reiciendis voluptatibus assumenda tempora vitae aut adipisci harum, corporis in id perferendis quia repellat reprehenderit temporibus aspernatur ab ullam magni error
                    consectetur, facilis inventore ipsum, veniam voluptas. Error laboriosam atque quisquam facere esse repellat consectetur quos eum, quaerat blanditiis saepe?</p>
                </div>
                <div class="product-faq mb-5">
                  <h2 class="mb-3">Questions and Answers</h2>
                  <p class="text-muted">What information do you need?</p>
                  <div class="main-questions d-inline" data-container="body" data-toggle="popover" data-placement="right" data-content="Are you in doubt? these shortcuts can help you!">
                    <a href="#" class="btn btn-outline-primary">Cost and Delivery time</a>
                    <a href="#" class="btn btn-outline-primary">Warranty</a>
                    <a href="#" class="btn btn-outline-primary">Payment options</a>
                  </div>
                </div>
                <div class="product-comments">
                  <h5 class="mb-2">Or ask to David's Store</h5>
                  <form action="" class="form-inline mb-5">
                    <textarea name="" id="" cols="50" rows="2" class="form-control mr-4" placeholder="write a question"></textarea><button class="btn btn-lg btn-primary">Ask</button>
                  </form>
                  <h5 class="mb-5">Lastest Questions</h5>
                  <ol class="list-unstyled last-questions-list">
                    <li><i class="fa fa-comment"></i> <span>Hello david, can i pay with credit card?</span></li>
                    <li><i class="fa fa-comment"></i> <span>can i send it to another address?</span></li>
                  </ol>
                </div>
              </div>
            </div>
            <div class="product-payment-details">
              <p class="last-sold text-muted"><small>145 items sold</small></p>
              <h4 class="product-title mb-2">제목${p_title}</h4>
              <h2 class="product-price display-4"><fmt:formatNumber value="${bookList.book_cnt}" pattern="#,###"/>원</h2>
              <!-- <p class="text-success"><i class="fa fa-credit-card"></i> 12x or  5x $ 5.00</p> -->

              <label for="quant" style="margin-top : 20px;">수량</label>
              <input type="number" name="quantity" min="1" max="10" id="quant" class="form-control mb-5 input-lg" placeholder="Choose the quantity">

              <div class="text-muted mb-2"><small></small></div>
              <button class="btn btn-primary btn-lg btn-block" style="margin-top : 50px;">안전거래 신청</button>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </body>
</html>
