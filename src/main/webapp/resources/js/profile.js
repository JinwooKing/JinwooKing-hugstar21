$(document).ready(function(){
	// 화면 사이즈 변경 될 때 
	$(window).resize(function(){
		// 최하단 홈버튼 위치 조절
		set_homebtn();
	})
	// 홈 버튼 생성
	$('.footer_sec').prepend("<div class='homebtn' style='background-color: rgb(194, 202, 249); position:absolute; display:none; top: -20px; padding: 8px; cursor: pointer; box-shadow: 0 1px 3px rgba(0,0,0,.4);'>"+
								"<i class='material-icons' onclick=javascript:href('home') style='color:white'>arrow_upward</i></div>");
	// 홈버튼 위치 조절
	function set_homebtn(){
		let homebtnleft = $('body')[0].clientWidth/2 - 20;
		$('.homebtn')[0].style.left=homebtnleft+"px";	
	}
	set_homebtn();
	// end home btn
	
	
	// profile nav sticky 조건
	let h = $('.home_column')[0].clientHeight;
	window.onscroll = function() {prosticky(); prbar();};
	function prosticky() {
		if (document.documentElement.scrollTop >= h) {
			  if($(".right").css("width")==="0px"){
			  	eunpronav.classList.add("sticky")
			  }else{
			  	jinpronav.classList.add("sticky")		  
			  }
		  } else {
			  eunpronav.classList.remove("sticky");
			  jinpronav.classList.remove("sticky");
		  }
	}
	//end profile nav sticky	

	// hugstar21클릭
	$(".left").click(function(){	
		if($(".right").css("width")==="0px"){
			$(".left").css("width","50%");
			$(".right").css({"width":"50%","display":"block"});
			$('.homebtn').css("display","none");
		}else{
		$(".left").css("width","100%");
		$(".right").css("width","0%")
		setTimeout(() => {$(".right").css("display","none")
						  $('.homebtn').css("display","inline-block");	
							}, 300);
		$('html').animate({scrollTop : h}, 400);
		}; 
	})
	
	// JinwooKing클릭
	$(".right").click(function(){
		if($(".left").css("width")==="0px"){
			$(".left").css("width","50%");
			$(".right").css("width","50%");
			$('.homebtn').css("display","none");
		}else{
		$(".right").css("width","100%");
		$(".left").css("width","0%");
		setTimeout(() => {$('.homebtn').css("display","inline-block");}, 300);
		$('html').animate({scrollTop : h}, 400);
		}
	})
	
	// modal 이벤트 전파 막기
	document.getElementById("project-content").addEventListener("click", function(event){
			event.stopPropagation();
		});
	
	// modal 넘기기
	  $('#next').click(function() {
	    shiftSlide(-1);
		  });
	  $('#prev').click(function() {
	    shiftSlide(1);
	  });
	  
	  // modal 속 carousel
	 var carousel = $('#carousel'),
	    slideWidth = 700,
	    threshold = slideWidth / 3,
	    dragStart,
	    dragEnd;
	 
	 function shiftSlide(direction) {
		    if (carousel.hasClass('transition')) return;
		    dragEnd = dragStart;
		    $(document).off('mouseup');
		    carousel
		      .addClass('transition')
		      .css('transform', 'translateX(' + direction * slideWidth + 'px)');
		    setTimeout(function() {
		      if (direction === 1) {
		        $('.slide:first').before($('.slide:last'));
		      } else if (direction === -1) {
		        $('.slide:last').after($('.slide:first'));
		      }
		      carousel.removeClass('transition');
		      carousel.css('transform', 'translateX(0px)');
		    }, 700);
	}
})
//페이지 내부 이동
function href(text){
	// 이동할 위치
	let navh = 0;
	// pronavbar에 sticky 효과가 부여되면  
	if($('.sticky').length>0){
		if(text==="Jproject" || text==="JContact"){
			navh = $('.pronav')[0].clientHeight+$('.pronav')[1].offsetTop; // top에 fix된 네비바 길이
		}else{
			navh = $('.pronav')[0].clientHeight+$('.pronav')[0].offsetTop; 	
		}
	}else{
	// sticky 효과 없으면
		if(text==="Jproject" || text==="JContact"){
			navh = $('.navdiv')[0].clientHeight+2*$('.pronav')[1].offsetHeight; // 부여될 fix pronav 값까지 더해서 구해준다. (2배)
		}else{
			navh = $('.navdiv')[0].clientHeight+2*$('.pronav')[0].offsetHeight;	
		}	
	}
	// end href 변수
	if(text==="home"){
		$('html').animate({scrollTop : 0}, 200);
	}else if(text==="About"){
		let h = $('.home_column')[0].clientHeight;
		$('html').animate({scrollTop : h}, 200);
	}else if(text==="project"){
		let h = $('.project')[0].offsetTop-navh;
		$('html').animate({scrollTop : h}, 200);
	}else if(text==="Contact"){
		let h = $('.contact')[0].offsetTop-navh;
		$('html').animate({scrollTop : h}, 200);
		// Jinwoo navbar
	}else if(text==="Jproject"){
		let h = $('.project')[1].offsetTop-navh;
		$('html').animate({scrollTop : h}, 200);
	}else if(text==="JContact"){
		let h = $('.contact')[1].offsetTop-navh;
		$('html').animate({scrollTop : h}, 200);
	}
}
// 메일전송
function sendemail(text){

	let name = 	document.forms[text]["name"].value;
	let email = document.forms[text]["email"].value;
	let message = document.forms[text]["message"].value;
	let To = "";
	if(text==="JinwooForm"){
		To = "wlsdn9489@naver.com";
	}else{
		To = "hugstar21@gmail.com";
	}
	$.ajax({
		url : "${pageContext.request.contextPath}/sendMail"
		,data : {name, email, message, To} 
		,dataType : "text"
		,async: false
		,success:function(data){
			console.log(data);
			$('[name='+text+']').find('button').before('<div class="alert alert-info alert-dismissible" style="opacity:1">'+
					'<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+
		    		'<strong>Success!</strong> Mail sending success.</div>');
		}
		,error:function(e){
			console.log(e);
			$('[name='+text+']').find('button').before('<div class="alert alert-danger alert-dismissible" style="opacity:1">'+
					'<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+
		    		'<strong>Failed!</strong> Mail sending failed.</div>');
		}
	});
}
//end 메일전송

//modal
	function openModal(item) {
	  fillModal(item);
	  document.getElementById("ProjectModal").style.display = "block";
	}
	
	function closeModal() {
	  document.getElementById("ProjectModal").style.display = "none";
	}
	
	var modalText = {
			ejumptocoding : {
				title : 'Jump To Coding',
				tag : '반응형‘종합학습사이트’',
				detail : ' 언어소개담당'
			},
			eloling : {
				title : 'LOLING',
				tag : ' 폐쇄형‘게임정보공유커뮤니티’',
				detail : ' 대회갤린더게시판 담당 '
			},
			esbbj : {
				title : 'SBBJ',
				tag : ' 관리자, 판매자, 구매자 ‘3계층 오픈마켓’',
				detail : ' 상품상세보기·장바구니·고객센터·FAQ·서버/DB 구축관리 담당'
			},
			jjumptocoding : {
				title : 'Jump To Coding',
				tag : '반응형‘종합학습사이트’',
				detail : ' 메인담당'
			},
			jloling : {
				title : 'LOLING',
				tag : ' 폐쇄형‘게임정보공유커뮤니티’',
				detail : ' 조장·회원가입·원딜게시판·DB 구축관리 담당'
			},
			jsbbj : {
				title : 'SBBJ',
				tag : ' 관리자, 판매자, 구매자 ‘3계층 오픈마켓’',
				detail : ' 회원가입·로그인·상품리스트·리뷰·관리자페이지·서버 구축관리 담당'
			}
	}
	
	function fillModal(item) {
	    $('#project-content .title').text(modalText[item].title);
	    $('#project-content .detail').text(modalText[item].detail);
	    $('#project-content .tag').text(modalText[item].tag);
	    
	    $.each($('#carousel .slide'), function(index, value) {
	        $(this).css({
	          background:
	        	  "url('${pageContext.request.contextPath}/resources/img/carousel/"+item+index+".png') center center/cover",
	          backgroundSize: 'cover'
	        });
	      });
	}