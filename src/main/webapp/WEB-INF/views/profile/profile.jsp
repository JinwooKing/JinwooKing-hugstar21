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
  z-index: 1;
}
/* about */
.about, .portfolio, .contact{
	padding: 64px 16px;
    max-width: 1200px;
    margin-left: auto;
    margin-right: auto;
    color: #777;
}
.about h2, .portfolio h2, .contact h2{
	text-align: center;
	font-family: "Lato", sans-serif;
	font-weight: bold;
	margin: 30px 0px;
	color: #444649;
}
.about p, .portfolio p, .contact p{
	font-family: "Lato", sans-serif;
	font-size: 15px;
}
.about .p, .portfolio .p, .contact .p{
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
.background_portfolio{
	background-color: #F5F5F5;
}
.portfolio p, .contact p{
	text-align: center;
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
}
.contact_form button{
	float: right;
}
.contact button:hover {
	background-color: #d1ecf1;
	border: 1px solid #d1ecf1;
	color: white;
}

@media all and (max-width:960px){
.about_column{
	width: 100%
}
.pronav a{
	padding: 9px 22px;
}
.about h2, .portfolio h2, .contact h2{
	margin: 20px 0px;
}
.contact_form{
	width: 90%;
}
}

@media all and (max-width:390px){
.pronav a{
	padding: 9px 11px;
	font-size: 14px;
}
}
</style>
<script>
$(document).ready(function(){
	
	$(window).resize(function(){
		set_homebtn();
	})
	// home btn
	$('.footer_sec').prepend("<div class='homebtn' style='background-color: rgb(194, 202, 249); position:absolute; display:none; top: -20px; padding: 8px; cursor: pointer;'>"+
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
})
//페이지 내부 이동
function href(text){
	// href 변수
	let navh = 0;
	// pronavbar에 sticky 효과가 부여되면  
	if($('.sticky').length>0){
		if(text==="JPortfolio" || text==="JContact"){
			navh = $('.pronav')[0].clientHeight+$('.pronav')[1].offsetTop; // top에 fix된 네비바 길이
		}else{
			navh = $('.pronav')[0].clientHeight+$('.pronav')[0].offsetTop; 	
		}
	}else{
	// sticky 효과 없으면
		if(text==="JPortfolio" || text==="JContact"){
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
	}else if(text==="Portfolio"){
		let h = $('.portfolio')[0].offsetTop-navh;
		$('html').animate({scrollTop : h}, 200);
	}else if(text==="Contact"){
		let h = $('.contact')[0].offsetTop-navh;
		$('html').animate({scrollTop : h}, 200);
		// Jinwoo navbar
	}else if(text==="JPortfolio"){
		let h = $('.portfolio')[1].offsetTop-navh;
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
		,data : {"name" : name, "email" : email, "message" : message, "To" : To} 
		,dataType : "text"
		,async: false
		,success:function(data){
			console.log(data);
			$('[name='+text+']').find('button').before('<div class="alert alert-info alert-dismissible fade in" style="opacity:1">'+
					'<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+
		    		'<strong>Success!</strong> Mail sending success.</div>');
		}
		,error:function(e){
			console.log(e);
		}
	});
	
	
	
	
}
</script>
</head>
<body>
<!-- home -->
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
			<a class="navbar-brand" href="javascript:href('Portfolio')">Portfolio</a>
			<a class="navbar-brand" href="javascript:href('Contact')">Contact</a>
		</nav>
	</div>
	<!-- about -->
	<div class="about">
		<h2>ABOUT ME</h2>
		<p class="p mb-3">I love eunbori 은별하트진우</p>
		<p>We have created a fictional "personal" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa
	    qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
	        <div class="row mt-5 mb-3">
	       		<div class="row about_column px-1">
	       			<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">favorite</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">애기천사<p>
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
	       					<p class="info_label">상승세<p>
	       					<p>잘하고 있다.<p>
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
	       					<p class="info_label">노력쟁이<p>
	       					<p>매사 열심히 노력함<p>
      					</div>
   					</div>
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">thumb_up</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">인기<p>
	       					<p>지덕체 다 가지고 있다. 팔망미인<p>
      					</div>
   					</div>
	       		</div>
	        </div>
		    <div class="row">
		   		<div class="about_column about_img_container">
		    	<!-- img -->	
		    		<p class="p"><span><i class="material-icons mr-2">person</i>안은별</span></p>
		    		<img alt="eunbori" src="${pageContext.request.contextPath}/resources/img/eunbori/hugstar21.jpg">
		    		<p class="mt-3">I'm a Front-End Developer for 용인 in 대한민국, CA. I have serious passion for UI effects, animations and creating intuitive, dynamic user experiences. Let's make something special.</p>
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
			  			<div class="progress-bar" style="width:80%">80%</div>
					</div>
					<p class="wide mt-3">SQL</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:80%">80%</div>
					</div>
					<p class="wide mt-3">진우사랑</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:100%">100%</div>
					</div>
			    </div>
		    </div>
	</div>
	
	<!-- portfolio -->
	<div class="background_portfolio">
	<div class="portfolio">
	<h2>PORTFOLIO</h2>
	<p class="p mb-3">My WorK</p>
		<p>Here are some of my latest lorem work ipsum tipsum. Click on the images to make them bigger</p>
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
			<a class="navbar-brand" href="javascript:href('JPortfolio')">Portfolio</a>
			<a class="navbar-brand" href="javascript:href('JContact')">Contact</a>
		  </nav>
		</div>
		
	<!-- about -->
	<div class="about">
		<h2>ABOUT ME</h2>
		<p class="p mb-3">I love eunbori 은별하트진우</p>
		<p>We have created a fictional "personal" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa
	    qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
	        <div class="row mt-5 mb-3">
	       		<div class="row about_column px-1">
	       			<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">favorite</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">애기천사<p>
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
	       					<p class="info_label">상승세<p>
	       					<p>잘하고 있다.<p>
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
	       					<p class="info_label">노력쟁이<p>
	       					<p>매사 열심히 노력함<p>
      					</div>
   					</div>
			      	<div class="about_column_info px-3">
	       				<div class="hex-wrap">
	       					<div class="hexagon">
	       						<i class="material-icons">thumb_up</i>
	       					</div>
	       				</div>
	       				<div class="about_info">
	       					<p class="info_label">인기<p>
	       					<p>지덕체 다 가지고 있다. 팔망미인<p>
      					</div>
   					</div>
	       		</div>
	        </div>
		    <div class="row">
		   		<div class="about_column about_img_container">
		    	<!-- img -->	
		    		<p class="p"><span><i class="material-icons mr-2">person</i>박진우</span></p>
		    		<img alt="eunbori" src="${pageContext.request.contextPath}/resources/img/jinwoo/JinwooKing.jpg">
		    		<p class="mt-3">I'm a Front-End Developer for 서울 in 대한민국, CA. I have serious passion for UI effects, animations and creating intuitive, dynamic user experiences. Let's make something special.</p>
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
					<p class="wide mt-3">SPRING</p>
			      	<div class="progress progress_good">
			  			<div class="progress-bar" style="width:85%">85%</div>
					</div>
			    </div>
		    </div>
	</div>
	
	<!-- portfolio -->
	<div class="background_portfolio">
	<div class="portfolio">
	<h2>PORTFOLIO</h2>
	<p class="p mb-3">My WorK</p>
		<p>Here are some of my latest lorem work ipsum tipsum. Click on the images to make them bigger</p>
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
