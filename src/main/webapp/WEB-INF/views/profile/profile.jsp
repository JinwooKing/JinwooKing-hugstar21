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
  padding: 9px 33px;
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
.about{
	padding: 64px 16px;
    max-width: 1200px;
    margin-left: auto;
    margin-right: auto;
    color: #777;
}
.about h2{
	text-align: center;
	font-family: "Lato", sans-serif;
	margin: 30px 0px;
	color: #444649;
}
.about p{
	font-family: "Lato", sans-serif;
	font-size: 15px;
}
.about .p{
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
    background-color: #777;
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
}

.progress_good div{
	background-color: #616161!important;
	animation: flipInX 0.75s ease both;
}

@media all and (max-width:960px){
.about_column{
	width: 100%
}
}
</style>
<script>
$(document).ready(function(){
	
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
		}else{
		$(".left").css("width","100%");
		$(".right").css("width","0%")
		setTimeout(() => {$(".right").css("display","none")}, 300);
		$('html').animate({scrollTop : h}, 400);
		}; 
	})
	// JinwooKing클릭
	$(".right").click(function(){
		if($(".left").css("width")==="0px"){
			$(".left").css("width","50%");
			$(".right").css("width","50%");
		}else{
		$(".right").css("width","100%");
		$(".left").css("width","0%");
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
		navh = $('.pronav')[0].clientHeight+$('.pronav')[0].offsetTop; // top에 fix된 네비바 길이
	}else{
	// sticky 효과 없으면 
		navh = 2*$('.pronav')[0].offsetHeight+$('.navdiv')[0].clientHeight; // 부여될 fix pronav 값까지 더해서 구해준다. (2배)
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
	}
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
			<a class="navbar-brand" href="#">Contact</a>
		</nav>
	</div>
	<!-- about -->
	<div class="about">
		<h2>ABOUT ME</h2>
		<p class="p mb-3">I love eunbori 은별하트진우</p>
		<p>We have created a fictional "personal" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa
	    qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
	       진우는 은별이를 좋아해</p>
	        <div class="row">
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
	<div class="portfolio">
	portfolio
	</div>
	<h1 style="color: black;">hugstar219</h1>
	<h1 style="color: black;">hugstar220</h1>
	<h1 style="color: black;">hugstar221</h1>
	<h1 style="color: black;">hugstar222</h1>
	<h1 style="color: black;">hugstar223</h1>
	<h1 style="color: black;">hugstar224</h1>
	<h1 style="color: black;">hugstar225</h1>
	<h1 style="color: black;">hugstar226</h1>
	<h1 style="color: black;">hugstar227</h1>
	<h1 style="color: black;">hugstar228</h1>
	<h1 style="color: black;">hugstar229</h1>
	<h1 style="color: black;">hugstar230</h1>
	<h1 style="color: black;">hugstar211</h1>
	<h1 style="color: black;">hugstar212</h1>
	<h1 style="color: black;">hugstar213</h1>
	<h1 style="color: black;">hugstar214</h1>
	<h1 style="color: black;">hugstar215</h1>
	<h1 style="color: black;">hugstar216</h1>
	<h1 style="color: black;">hugstar217</h1>
	<h1 style="color: black;">hugstar218</h1>
	<h1 style="color: black;">hugstar219</h1>
	<h1 style="color: black;">hugstar220</h1>
	<h1 style="color: black;">hugstar221</h1>
	<h1 style="color: black;">hugstar222</h1>
	<h1 style="color: black;">hugstar223</h1>
	<h1 style="color: black;">hugstar224</h1>
	<h1 style="color: black;">hugstar225</h1>
	<h1 style="color: black;">hugstar226</h1>
	<h1 style="color: black;">hugstar227</h1>
	<h1 style="color: black;">hugstar228</h1>
	<h1 style="color: black;">hugstar229</h1>
	<h1 style="color: black;">hugstar230</h1>
</section>



<!-- JinwooKing -->
<section id="JinwooKing" class="collapse">
		<!-- jinpronav -->
		<div id="jinpronav" class="pronav">
		  <nav class="navbar navbar-light">
			<a class="navbar-brand" href="javascript:href('home')">Home</a>
			<a class="navbar-brand" href="javascript:href('About')">About</a>
			<a class="navbar-brand" href="#">Portfolio</a>
		  </nav>
		</div>
		
	<!-- about -->
	<div class="about">
		<h2>ABOUT</h2>
		<p class="p">I love eunbori 은별하트진우</p>
		<p>We have created a fictional "personal" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa
	    qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
	       진우는 은별이를 좋아해</p>
		    <div class="row">
		    	<div class="about_column">
		    		<p class="p"><span><i class="material-icons mr-2">person</i>박진우</span></p>
		    		<img alt="jinwoo" src="${pageContext.request.contextPath}/resources/img/jinwoo/JinwooKing.jpg">
		    	</div>
		    	<div class="about_column">
			    	<p class="p pt-5">Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
				    dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor
				    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
			    </div>
		    </div>
		<!-- 잘하는것 -->
      	<p class="p py-4" style="font-size: 18px; font-weight: bold;">Im really good at:</p>
      	<p class="wide mt-3"><i class="material-icons mr-3">computer</i>은별사랑</p>
      	<div class="progress progress_good">
  			<div class="progress-bar bg-secondary" style="width:100%">100%</div>
		</div>
		<p class="wide mt-3"><i class="material-icons mr-3">computer</i>Web Design</p>
      	<div class="progress progress_good">
  			<div class="progress-bar bg-secondary" style="width:90%">90%</div>
		</div>
		<p class="wide mt-3"><i class="material-icons mr-3">computer</i>Web Design</p>
      	<div class="progress progress_good">
  			<div class="progress-bar bg-secondary" style="width:90%">90%</div>
		</div>
		<p class="wide mt-3"><i class="material-icons mr-3">computer</i>Web Design</p>
      	<div class="progress progress_good">
  			<div class="progress-bar bg-secondary" style="width:90%">90%</div>
		</div>
	</div>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>	
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
	<h1 style="color: black;">JinwooKing</h1>
</section>
</body>
</html>
