<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
html {
  scroll-behavior: smooth;
}
a{
	cursor: pointer;
}
body {
  font-family: Arial;
  overflow-x: hidden;
  line-height: 1.8;
}
h1{
	margin: 0px;
}
.left {
  background-color: #90CAF9;
  transition: 0.3s;
}
.left:hover{
  background-color: #64B5F6
}
.right {
  background-color: #B2EBF2;
  transition: 0.3s;
}
.right:hover{
  background-color: #80DEEA
}
.home_column img {
  width: 150px;
  border-radius: 50%;
}
.home_column {
  color: white;
  float: left;
  width: 50%;
  text-align: center;
  height: 93vh;
  padding-top: 34vh;
}
/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
/* Navbar */
.pronav {
  display: flex;  
  background-color: white;
  border-bottom: 1px solid #d6d6d6;
  width: 100%;
  box-shadow: 0 1px 3px rgba(0,0,0,.4);
}
.pronav nav{
  height: 47px;
  max-width: 1180px;
  margin: 0px auto !important;
  padding: 0px;
}
/* Navbar */
.pronav a {
  float: left;
  color: #f2f2f2;
  text-decoration: none;
  padding: 9px 44px;
}
.row{
	margin-right: 0px;
	margin-left: 0px;
}
/* The sticky class is added to the navbar with JS when it reaches its scroll position */
.sticky {
  position: fixed;
  top: 68px;
  width: 100%;
  z-index: 2;
}
/* about */
.about, .project, .contact{
	padding: 64px 16px;
    max-width: 1200px;
    margin-left: auto;
    margin-right: auto;
    color: #777;
}
.about h2, .project h2, .contact h2{
	text-align: center;
	font-family: "Lato", sans-serif;
	font-weight: bold;
	margin: 30px 0px;
	color: #444649;
}
.about p, .project p, .contact p{
	font-family: "Lato", sans-serif;
	font-size: 15px;
}
.about .p, .project .p, .contact .p{
	text-align: center;
	margin: 15px 0px;
}
.about_column{
	width: 50%;
	padding: 12px 24px;
	text-align: center!;
	float: left;
}
.material-icons{
	vertical-align: top;
}
.about_column_info{
	width: 50%;
	text-align: center;
}
.hex-wrap{
	display: inline-block;
    position: relative;
    text-align: center;
    width: 100px;
    height: 100px;
}
.hexagon {
    background-color: #91D8FA;
    display: inline-block;
    height: 100%;
    width: calc(100% * 0.57735);
}
.hexagon:before {
    background-color: inherit;
    content: "";
    height: inherit;
    position: absolute;
    right: calc((100% / 2) - ((100% * 0.57735) / 2));
    top: 0;
    transform: rotateZ(60deg);
    width: inherit;
}
.hexagon:after {
    background-color: inherit;
    content: "";
    height: inherit;
    position: absolute;
    right: calc((100% / 2) - ((100% * 0.57735) / 2));
    top: 0;
    transform: rotateZ(-60deg);
    width: inherit;
}
.hexagon .material-icons{
	color: white;
	left: 0;
    position: absolute;
    right: 0;
    top: 20px;
    z-index: 1;
    font-size: 60px;
}
.about_info{
	color: #616161;
}
.info_label{
	font-size: 18pt !important;
	font-weight: bold !important;
}
.about_info p{
	margin-bottom: 0px;
}
.about_info p:first-child{
	margin-top: 10px;
}
.about_column img{
	opacity: 0.60;
	border-radius: 4px;
	max-width: 100%;
    height: auto;
}
.about_img_container{
	text-align: center;
}
.about_column img:hover {
	opacity: 1;
}
.wide{
	letter-spacing: 10px;
}
.progress_good{
	height: 25px;
	font-weight: bold;
	background-color: #CDECFA;
}
.progress_good div{
	background-color: #46B8FF!important;
	animation: flipInX 0.75s ease both;
}
.background_project{
	background-color: #F5F5F5;
}
.project p, .contact p{
	text-align: center;
}
.project_third{
	width: 33.333333%;
	float: left;
}
.project_third img{
	
}
.contact_form{
	text-align: center;
	margin: 0px auto;
	width: 800px;
}
input[type=text], input[type=email], textarea{
	padding: 10px 15px;
	margin: 10px 0;
	display: block;
    width: 100%;
    border: 1px solid silver;
    border-radius: 3px;
    box-shadow: 0 1px 3px rgba(0,0,0,.2);
}
/* contact */
.contact button{	
	padding: 10px 30px;
	background-color: rgb(194, 202, 249);
	border: 1px solid rgb(194, 202, 249);
    border-radius: 5px;
    color: white;
    font-weight: bold;
    transition: all 0.5s;
    box-shadow: 0 1px 3px rgba(0,0,0,.4);
}
.contact_form button{
	float: right;
}
.contact button:hover {
	background-color: #d1ecf1;
	border: 1px solid #d1ecf1;
	
	color: white;
}
/* img  */ 
.overlay {
  position: absolute;
  bottom: 0;
  background: rgb(0, 0, 0);
  background: rgba(0, 0, 0, 0.5); /* Black see-through */
  color: #f1f1f1;
  width: 100%;
  transition: .5s ease;
  opacity:0;
  color: white;
  font-size: 20px;
  padding: 20px;
  text-align: center;
}
.imgcontainer {
  position: relative;
}
.imgcontainer:hover .overlay {
  opacity: 1;
}
/* modal */
.projectmodal {
  display: none;
  position: fixed;
  z-index: 1031;
  padding-top: 80px;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0, 0, 0, 0.5);
}
.project-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  width: 700px;
}
.carouselimg{
  height: 450px;
  cursor: pointer;
}
.info-box {
    padding: 35px 60px 90px 25px;
    border-top: 3px solid #1b242f;
    box-sizing: border-box;
    color: #444;
}
.title {
    font-size: 22pt;
    line-height: 30pt;
}
.tag {
    font-size: 11pt !important;
    border-bottom: 1px solid rgba(0, 0, 0, 0.1);
    color: #c0c0c0;
    display: block;
    font-size: 8pt;
    font-weight: 300;
    padding-bottom: 15px;
}
.detail {
    font-size: 11pt;
    line-height: 18pt;
    margin-top: 15px;
}
.close {
    bottom: 25px;
    color: #bbb;
    cursor: pointer;
    font-size: 20pt;
    font-weight: 800;
    position: absolute;
    right: 25px;
}
.bottom-left{
	position: absolute;
	left: 0px;
	bottom: 0px;
	cursor: pointer;
	color: #fff;
	background: rgba(0, 0, 0, 0.3);
	padding: 10px 15px;
	font-size: 35px;
    font-weight: 800;
}
.bottom-right{
	position: absolute;
	right: 0px;
	bottom: 0px;	
	cursor: pointer;
	color: #fff;
	background: rgba(0, 0, 0, 0.3);
	padding: 10px 15px;
	font-size: 35px;
    font-weight: 800;
}
.window {
    background: #222;
    overflow: hidden;
    position: relative;
}
#carousel {
    transform: translateX(0px);
    position: relative;
    left: -700px;
    top: 0;
    width: 10000px;
}
.slide{
	width: 700px;
	height: 450px;
	cursor: pointer;
    display: flex;
    flex-direction: column;
    float: left;
    justify-content: center;
}
.transition{
	transition: 0.7s;
}
@media all and (max-width:960px){
.about_column{
	width: 100%
}
.pronav a{
	padding: 9px 22px;
}
.about h2, .project h2, .contact h2{
	margin: 20px 0px;
}
.contact_form{
	width: 90%;
}
.project_third{
	width: 50%;
}
}
@media all and (max-width:500px){
.pronav a{
	padding: 9px 11px;
	font-size: 14px;
}
.project_third{
	width: 100%;
}
}
</style>
<script>
$(document).ready(function(){
	
	$(window).resize(function(){
		set_homebtn();
	})
	// home btn
	$('.footer_sec').prepend("<div class='homebtn' style='background-color: rgb(194, 202, 249); position:absolute; display:none; top: -20px; padding: 8px; cursor: pointer; box-shadow: 0 1px 3px rgba(0,0,0,.4);'>"+
								"<i class='material-icons' onclick=javascript:href('home') style='color:white'>arrow_upward</i></div>");
	function set_homebtn(){
		let homebtnleft = $('body')[0].clientWidth/2 - 20;
		$('.homebtn')[0].style.left=homebtnleft+"px";	
	}
	set_homebtn();
	// end home btn
	
	// profile nav sticky
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
	  $('#next').click(function() {
	    shiftSlide(-1);
		  });
	  $('#prev').click(function() {
	    shiftSlide(1);
	  });
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
		      .off('mousemove')
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
	// href 변수
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

	 
	
</script>
</head>
<body>
<!-- home -->
	<!-- modal -->
	<div id="ProjectModal" class="projectmodal" onclick="closeModal(this);">
		<div class="project-content" id="project-content" >
		 <div class="project-carousel">
			 <div class="carousel-wrap">
				 	<div class="window">
					 	<div class="carouselimg" id="carousel">
					 		<div class="slide"></div>
					 		<div class="slide"></div>
					 		<div class="slide"></div>
					 		<div class="slide"></div>
					 		<div class="slide"></div>
					 		<div class="slide"></div>
					 	</div>
				 	<i class="material-icons bottom-left" id="prev">keyboard_arrow_left</i>
				 	<i class="material-icons bottom-right" id="next">keyboard_arrow_right</i>
				 	</div>
		 	</div>
		 	<div class="info-box">
		 		<div class="title"></div>
		 		<div class="tag"></div>
		 		<div class="detail"></div>
		 	</div>
		 	<i class="material-icons close" onclick="closeModal();">close</i>
		 </div>
		</div>
	</div>
  <!-- modal -->
<section style="height: 93vh;">
	<div class="row">
	  <div class="home_column left" data-toggle="collapse" data-target="#hugstar21">
	    <img src="${pageContext.request.contextPath}/resources/img/eunbori/hugstar21.jpg" alt="eunbori">
	    <h2>hugstar21</h2>
	    <p>안은별</p>
	  </div>
	  
	  <div class="home_column right" data-toggle="collapse" data-target="#JinwooKing">
	    <img src="${pageContext.request.contextPath}/resources/img/jinwoo/JinwooKing.jpg" alt="jinwoo">
	    <h2>JinwooKing</h2>
	    <p>박진우</p>
	  </div>
	</div>
</section>
<!-- hugstar21 -->
<section id="hugstar21" class="collapse">
	<!-- eunpronav -->
	<div id="eunpronav" class="pronav">
		<nav class="navbar navbar-light">
			<a class="navbar-brand" href="javascript:href('home')">Home</a>
			<a class="navbar-brand" href="javascript:href('About')">About</a>
			<a class="navbar-brand" href="javascript:href('project')">Project</a>
			<a class="navbar-brand" href="javascript:href('Contact')">Contact</a>
		</nav>
	</div>
	<!-- about -->
	<div class="about">
		<h2>ABOUT ME</h2>
		<p class="p mb-3">창의와 혁신으로 힘차게 끊임없이 달리는 자전거</p>
		<p>지속적인 자기개발을 통해 무한한 추진력을 보태는 개발자입니다. 책임감과 성실함을 장점으로 어디서나 인정받는 사람입니다. 남들이 망설이는 일일지라도 해야 한다고 느끼는 일은 무슨 일이 있어도 마무리를 짓는 다부진 면도 있습니다.
		매사 신중하게 행동합니다. 다년간의 공동체 생활을 통해 어느 새 하고 싶은 것보다 해야 할 것을 우선시하고, 절제를 당연하게 여기는 사람이 되었습니다. 
		항상 배운다는 낮은 자세로 임하여 스스로를 개선하고 발전합니다. ui/ux 디자인은 물론 외국어까지 다방면으로 능력을 쌓아 내가 차지하고 있는 몫 이상의 의미와 가치를 가진 사람입니다.
		앞으로도 최우선의 목표가 무엇인지 생각하고 그 목표를 위해 효율적인 방법을 생각하여 보완하겠습니다.</p>
	        <div class="row mt-5 mb-3">
	       		<div class="row about_column px-1">
	       			<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">group_add</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">화합<p>
	       					<p>사람을 배려하며 함께의 가치를 살림.<p>
	       					</div>
	       			</div>
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">trending_up</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">자기개발<p>
	       					<p>지치지 않고 끊임없이 성장.<p>
       					</div>
       				</div>
	       		</div>
	       		<div class="row about_column px-1">
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">whatshot</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">성실함<p>
	       					<p>어디서든 인정받는 정성.<p>
      					</div> 
   					</div>
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">sentiment_very_satisfied</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">팔망미인<p>
	       					<p>디자인은 물론 외국어까지.<p>
      					</div>
   					</div>
	       		</div>
	        </div>
		    <div class="row">
		   		<div class="about_column about_img_container">
		    	<!-- img -->	
		    		<p class="p"><span><i class="material-icons mr-2">person</i>안은별</span></p>
		    		<img alt="eunbori" src="${pageContext.request.contextPath}/resources/img/eunbori/hugstar21.jpg">
		    		<p class="mt-3">저는 프론트 엔드 개발자입니다. 특유의 꼼꼼함과 섬세함으로 세부 사항을 조정하여 직관적이고 편리한 사용자 경험을 만드는 데 열정적입니다.<!-- I' m a Front-End Developer of 용인 in Korea. I' m passionate about creating an intuitive and convenient user experience through fine-tuning of the details. Let's make something special. --></p>
		    	</div>
		    	<div class="about_column">
			    	<!-- skils -->
			      	<p class="p"><i class="material-icons mr-2">edit</i>Skils</p>
			      	<p class="wide mt-3">Java</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:100%">100%</div>
					</div>
					<p class="wide mt-3">HTML</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:90%">90%</div>
					</div>
					<p class="wide mt-3">CSS</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:90%">90%</div>
					</div>
					<p class="wide mt-3">JvavScript</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:85%">85%</div>
					</div>
					<p class="wide mt-3">SQL</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:85%">85%</div>
					</div>
					<p class="wide mt-3">Linux</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:50%">50%</div>
					</div>
					<p class="wide mt-3">Development potential</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:100%">100%</div>
					</div>
			    </div>
		    </div>
	</div>
	
	<!-- project -->
	<div class="background_project">
	<div class="project">
	<h2>PROJECTS</h2>
	<p class="p mb-3">My WorK</p>
		<p class="mb-5">Here are some of my latest work. Click on the images to make them bigger.</p>
		<div class="row">
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('ejumptocoding');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/ejumptocoding1.png" style="width: 100%">
				<div class="overlay">Jump To Coding</div>
			</div>
			</div>
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('eloling');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/eloling1.png" style="width: 100%">
				<div class="overlay">LoLing</div>
			</div>
			</div>
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('esbbj');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/esbbj1.png" style="width: 100%">
				<div class="overlay">SBBJ</div>
			</div>
			</div>		
		</div>
	</div>
	</div>
	
	<!-- contact -->
	<svg preserveAspectRatio="none" viewBox="0 0 100 102" height="75" width="100%">
          <path d="M0 0 L50 100 L100 0 Z" fill="#F5F5F5" stroke="white"></path>
        </svg>
	<div class="contact mb-5">
	<h2>CONTACT</h2>
	<p class="p mb-5">Have a question or want to work together?</p>
		<form action="javascript:sendemail('EunboriForm')" class="contact_form mb-5" name="EunboriForm">
			<input type="text" name="name" placeholder="이름" required="required">
			<input type="email" name="email" placeholder="이메일" required="required">
			<textarea style="min-height: 200px" name="message" placeholder="메시지" required="required"></textarea>
			<button type="submit" class="mt-1 mb-5">SUBMIT</button>
		</form>
		
	</div>
</section>

<!-- JinwooKing -->
<section id="JinwooKing" class="collapse">
		<!-- jinpronav -->
		<div id="jinpronav" class="pronav">
		  <nav class="navbar navbar-light">
			<a class="navbar-brand" href="javascript:href('home')">Home</a>
			<a class="navbar-brand" href="javascript:href('About')">About</a>
			<a class="navbar-brand" href="javascript:href('Jproject')">Project</a>
			<a class="navbar-brand" href="javascript:href('JContact')">Contact</a>
		  </nav>
		</div>
		
	<!-- about -->
	<div class="about">
		<h2>ABOUT ME</h2>
		<p class="p mb-3">어제보다 나은 오늘, 오늘보다 나은 내일을 그리는 프로그래머</p>
		<p>대학교 때 전자공학을 전공하여 하드웨어와 소프트웨어 전반에 대한 IT 지식을 가지고 있습니다. 특히 소프트웨어와 프로그래밍에 관심이 많은데 프로그램의 구조를 직접 설계하고 코드를 짜며 결과를 도출하는 작업을 할 때 큰 성취감을 느낍니다.
		책임감과 끈기를 가진 성격 덕분에 코딩이 술술 풀리는 상황에 한정되지 않고, 어떤 상황에서도 맡은 역할을 해내는 사람입니다.
		부족한 부분은 채우고 강점은 발전시키면서 어제보다 나은 오늘, 오늘보다 나은 내일을 그리는 프로그래머가 되는 것이 저의 목표입니다. 
		 </p>
	        <div class="row mt-5 mb-3">
	       		<div class="row about_column px-1">
	       			<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">favorite</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">마음<p>
	       					<p>따듯한 마음을 가지고 있다.<p>
	       					</div>
	       			</div>
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">trending_up</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">자기개발<p>
	       					<p>지치지 않고 끊임없이 성장.<p>
       					</div>
       				</div>
	       		</div>
	       		<div class="row about_column px-1">
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">settings_input_component</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">끈기<p>
	       					<p>수십, 수백 번 도전.<p>
      					</div>
   					</div>
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">accessibility</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">체력<p>
	       					<p>지칠줄 모르는 체력<p>
      					</div>
   					</div>
	       		</div>
	        </div>
		    <div class="row">
		   		<div class="about_column about_img_container">
		    	<!-- img -->	
		    		<p class="p"><span><i class="material-icons mr-2">person</i>박진우</span></p>
		    		<img alt="eunbori" src="${pageContext.request.contextPath}/resources/img/jinwoo/JinwooKing.jpg">
		    		<p class="mt-3">백엔드 개발자를 꿈꾸고 있습니다. 특유의 끈기와 열정으로 꾸준히 성장해나가고 있습니다.</p>
		    	</div>
		    	<div class="about_column">
			    	<!-- skils -->
			      	<p class="p"><i class="material-icons mr-2">edit</i>Skils</p>
			      	<p class="wide mt-3">Java</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:100%">100%</div>
					</div>
					<p class="wide mt-3">HTML</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:85%">85%</div>
					</div>
					<p class="wide mt-3">CSS</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:80%">80%</div>
					</div>
					<p class="wide mt-3">JvavScript</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:90%">90%</div>
					</div>
					<p class="wide mt-3">SQL</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:95%">95%</div>
					</div>
					<p class="wide mt-3">Linux</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:50%">50%</div>
					</div>
					<p class="wide mt-3">Development potential</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:90%">90%</div>
					</div>
			    </div>
		    </div>
	</div>
	
	<!-- project -->
	<div class="background_project">
	<div class="project">
	<h2>PROJECTS</h2>
	<p class="p mb-3">My WorK</p>
		<p>Here are some of my latest work. Click on the images to make them bigger.</p>
		<div class="row">
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('jjumptocoding');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/jjumptocoding1.png" style="width: 100%">
				<div class="overlay">Jump To Coding</div>
			</div>
			</div>
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('jloling');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/jloling1.png" style="width: 100%">
				<div class="overlay">LoLing</div>
			</div>
			</div>
			<div class="project_third">
			<div class="imgcontainer" onclick="openModal('jsbbj');">
				<img src="${pageContext.request.contextPath}/resources/img/carousel/jsbbj1.png" style="width: 100%">
				<div class="overlay">SBBJ</div>
			</div>
			</div>		
		</div>
	</div>
	</div>
	
	<!-- contact -->
	<svg preserveAspectRatio="none" viewBox="0 0 100 102" height="75" width="100%">
          <path d="M0 0 L50 100 L100 0 Z" fill="#F5F5F5" stroke="white"></path>
        </svg>
	<div class="contact mb-5">
	<h2>CONTACT</h2>
	<p class="p mb-5">Have a question or want to work together?</p>
		<form action="javascript:sendemail('JinwooForm')" class="contact_form mb-5" name="JinwooForm">
			<input type="text" name="name" placeholder="이름" required="required">
			<input type="email" name="email" placeholder="이메일" required="required">
			<textarea style="min-height: 200px" name="message" placeholder="메시지" required="required"></textarea>
			<button type="submit" class="mt-1 mb-5">SUBMIT</button>
		</form>
	</div>
</section>
</body>
</html>