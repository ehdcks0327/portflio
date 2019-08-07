<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="max-width: 750px;">
	  <div class="modal-content">
		<div class="modal-header">
		  <h4 class="modal-title" id="myModalLabel" style="margin: 0 auto; padding-left: 42px;">관리자에게 질문하기</h4>
		  <button type="button" class="close" data-dismiss="modal" style="margin-left: 0px;"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		</div>
		<div class="modal-header">
		  <h6>관리자전달 사항</h6>
		</div>
		<div class="modal-body">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">질문</span>
					<span class="input-group-text">질문</span>
				</div>
			</div>
		</div>
		<div class="modal-body">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">질문</span>
				</div>
				<input type="text" class="form-control"><br/>
			</div>
		</div>
		<div class="modal-body"  style="padding-top: 0px;">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">내용</span>
				</div>
				<textarea class="form-control" rows="15" style="resize: none;"></textarea>
			</div>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
		  <button type="button" class="btn btn-primary">게시물 등록</button>
		</div>
 	 </div> <!-- 모달 콘텐츠 -->
   </div> <!-- 모달 다이얼로그 -->
</div> <!-- 모달 전체 윈도우 -->