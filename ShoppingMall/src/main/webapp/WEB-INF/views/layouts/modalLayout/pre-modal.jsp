<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 회원가입 -->
<div class="modal fade" id="sign-up" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="max-width: 750px;">
	  <div class="modal-content">
  		<div class="modal-header card-header">
		  <h4 class="modal-title" id="myModalLabel" style="margin: 0 auto; padding-left: 42px;">회원 가입</h4>
		  <button type="button" class="close" data-dismiss="modal" style="margin-left: 0px;"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		</div>
		

		
		<form>
      <div class="card-body">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="text" id="firstName" class="form-control" placeholder="아이디" required="required" autofocus="autofocus">
                  <label for="firstName">아이디</label>
                </div>
              </div>
              
            </div>
          </div>
          
        <div class="form-group">
           <div class="form-row">
             <div class="col-md-6">
                <div class="form-label-group">
                  <input type="text" id="nickName" class="form-control" placeholder="닉네임" required="required">
                  <label for="nickName">닉네임</label>
                </div>
              </div>
              
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="password" id="inputPassword" class="form-control" placeholder="비밀번호" required="required">
                  <label for="inputPassword">비밀번호</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm password" required="required">
                  <label for="confirmPassword">비밀번호 확인</label>
                </div>
              </div>
            </div>
          </div>

          <div class="form-group">
            <div class="form-label-group">
              <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required">
              <label for="inputEmail">이메일 주소</label>
            </div>
          </div>
         </div>
         
         
         <div class="card-body">
         
         <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="text" id="userName" class="form-control" placeholder="이름" required="required">
                  <label for="userName">이름</label>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="text" id="phone" class="form-control" placeholder="이름" required="required">
                  <label for="phone">전화번호</label>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group form-inline">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="text" id="zoneCode" class="form-control" placeholder="우편번호" required="required" disabled>                
                  <label for="zoneCode">우편번호</label>
                </div>
              </div>
            </div>
         <button class="btn btn-outline-secondary" type="button" style="padding: var(--input-padding-y) var(--input-padding-x);" onclick="onclickAction()">우편번호 검색</button>
         </div>
         <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="firstAddress" class="form-control" placeholder="기본 주소" required="required" disabled>
              <label for="firstAdress">기본 주소</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="secondAddress" class="form-control" placeholder="상세 주소" required="required">
              <label for="secondAddress">상세 주소</label>
            </div>
          </div>
          <a class="btn btn-primary btn-block" href="ad_login.html">등록하기</a>
        <div class="text-center">
          <a class="d-block small mt-3" href="ad_login.html">로그인</a>
          <a class="d-block small" href="ad_forgot-password.html">비밀번호를 잊으셨나요?</a>
        </div>
          </div>
        </form>


    </div>
  </div>
</div>
<!-- 모달 콘텐츠 -->



<!-- 로그인 -->
<div class="modal fade" id="sign-in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="max-width: 400px;">
	  <div class="modal-content">
	  <div class="modal-header card-header">
		  <h4 class="modal-title" id="myModalLabel" style="margin: 0 auto; padding-left: 42px;">로그인</h4>
		  <button type="button" class="close" data-dismiss="modal" style="margin-left: 0px;"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	  </div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <div class="form-label-group">
              <input type="email" id="loginEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
              <label for="loginEmail">Email address</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="password" id="loginPassword" class="form-control" placeholder="Password" required="required">
              <label for="loginPassword">Password</label>
            </div>
          </div>
          <div class="form-group">
            <div class="checkbox">
              <label>
                <input type="checkbox" value="remember-me">
                Remember Password
              </label>
            </div>
          </div>
          <a class="btn btn-primary btn-block" href="ad_index.html">Login</a>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="ad_register.html">회원 가입</a>
          <a class="d-block small" href="ad_forgot-password.html">비밀번호를 잊으셨나요?</a>
        </div>
      </div>
 	 </div> <!-- 모달 콘텐츠 -->
   </div> <!-- 모달 다이얼로그 -->
</div> <!-- 모달 전체 윈도우 -->

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function onclickAction() {
		var zonecode=null;
	    new daum.Postcode({
	        oncomplete: function(data) {
				$('#zoneCode').attr('value', data.zonecode);
				$('#firstAddress').attr('value', data.address);
	        }
	    }).open();
	}
	
</script>

