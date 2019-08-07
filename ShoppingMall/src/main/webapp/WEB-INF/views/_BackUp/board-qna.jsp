<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <div class="container" style="margin-top:20px; margin-bottom:20px;">
  	  <ul class="nav nav-tabs">
         <li class="nav-item">
         	<a class="nav-link active" href="#" onclick="boardClick(this)" title="public">공개 질문</a>
         </li>
         <li class="nav-item">
         	<a class="nav-link" href="#" onclick="boardClick(this)" title="secret">비공개 질문</a>
         </li>
         <li class="nav-item ml-auto" style="margin-left: 200px;">
          	<div class="input-group">
          	  	<i class="fas fa-search fa-lg" style="margin-left: 20px; margin-right: 5px; padding-top: 5px;"></i>
				<input type="text" placeholder="검색어 입력" style="text-align: center;border: none;border-bottom: 1px solid #dee2e6;margin-right: 20px;"> 
          	</div>
         </li>
     </ul>
  	<table class="table table-hover" style="text-align:center;">
  		<tr>
  			<th style="width: 10%; border-top: none;">
  				번호
  			</th>
  			<th style="width: 65%; border-top: none;">
  				제목
  			</th>
  			<th style="width: 15%; border-top: none;">
  				등록일
  			</th>
  			<th style="width: 10%; border-top: none;">
  				답변여부
  			</th>
  		</tr>
  		<c:forEach begin="0" end="">
  			
  		</c:forEach>
  	</table>
  	<ul class="pagination">
		<li class="page-item"><a class="page-link" href="#" onclick="pagingClick(this)">Previous</a></li>
	</ul>
  </div>
  
  <script>
  var nowPage = 0;
  var tabState = "public";
  var currentTabRows = 0;
  var cur_user = 1; 
  
  function boardClick(obj) {
	tabState = $(obj).attr("title");	  
  	$(obj).parent().siblings().children('a').removeClass('active');
  	$(obj).addClass('active');

	nowPage = 0;
  	$('td').remove();
	makePost();
  }

  function makePaging() {
		$('.pagination').children().remove();
		$('.pagination').append(('<li class="page-item"><a class="page-link" href="#" onclick="pagingPrevious()">Previous</a></li>'));

		if (currentTabRows <= 10) {
			$('.pagination').append(('<li class="page-item"><a class="page-link" href="#">1</a></li>'));
			$('.pagination').append(('<li class="page-item"><a class="page-link" href="#">Next</a></li>'));
		} else {
			for (let i = 1; i <= (currentTabRows / 10) + 1; i++) {
				$('.pagination').append($('<li class="page-item"><a class="page-link" href="#" onclick="pagingClick(this)">' + i + '</a></li>'));
			}
			$('.pagination').append(('<li class="page-item"><a class="page-link" href="#" onclick="pagingNext()">Next</a></li>'));
	    }
  }
  
  function makePost() {
	  $.ajax({
			type : "post",
			url : "/main/admin/func/" + tabState,
			dataType : "json",
			data : {"page" : nowPage, "u_id": cur_user},
			success : function(data) {
				for (let index = 0; index < data.length; index++) {

					if (index == (data.length - 1)) {
						if(data[index].rows != null) {
							currentTabRows = parseInt(data[index].rows);
							makePaging();
							break;
						}
					}
					
					var $tr = $('<tr></tr>');
					$tr.append('<td>' + data[index].no + '</td>');
					$tr.append('<td>' + data[index].que_title + '</td>');
					$tr.append('<td>' + data[index].que_date + '</td>');
					$tr.append('<td>' + data[index].que_check + '</td>');
					$('tbody').append($tr);
					
					delete data;
				}
			},
			error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    }
	  });
  }

  function pagingClick(obj) {
	  	nowPage = parseInt($(obj).text()) - 1;
	  	$('td').remove();
	  	makePost();
  }

  function pagingPrevious() {
		if (nowPage != 0){
			nowPage--;
		  	$('td').remove();
		  	makePost();			
		}		
  }

  function pagingNext() {
	  if (currentTabRows != 0 && nowPage + 1 < Math.floor(currentTabRows / 10 + 1)){
			nowPage++;
		  	$('td').remove();
		  	makePost();		
	  }
  }


  //=====================//

  makePost(); 

  //=====================//  
  
  </script>