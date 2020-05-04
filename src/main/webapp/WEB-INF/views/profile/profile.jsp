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
    max-width: 1080px;
    margin-left: auto;
    margin-right: auto;
    color: #777;
}
.about h2{
	text-align: center;
	font-family: "Lato", sans-serif;
	margin: 10px 0px;
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
	text-align: center! important;
	float: left;
}
.material-icons{
	vertical-align: top;
}
.about_column img{
	opacity: 0.60;
	border-radius: 4px;
	max-width: 100%;
    height: auto;
    vertical-align: middle;
}
.about_column img:hover {
	opacity: 1;
}
.wide{
	letter-spacing: 10px;
}
.progress_good{
	height: 35px;
	font-weight: bold;
}

.progress_good div{
	background-color: #616161!important;
}
@media all and (max-width:700px){
.about_column{
	width: 100%
}
}
</style>
<script>
//페이지 내부 이동
function href(text){
	if(text==="home"){
		$('html').animate({scrollTop : 0}, 200);
	}else if(text==="About"){
		let h = $('.home_column')[0].clientHeight;
		$('html').animate({scrollTop : h}, 200);
	}	
}
$(document).ready(function(){
	// home 이미지 끝
	let h = $('.home_column')[0].clientHeight;
	// profile nav sticky
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
		    		<p class="p"><span><i class="material-icons mr-2">person</i>안은별</span></p>
		    		<img alt="eunbori" src="${pageContext.request.contextPath}/resources/img/eunbori/hugstar21.jpg">
		    	</div>
		    	<div class="about_column">
			    	<p class="p pt-5">Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
				    dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor
				    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
			    </div>
		    </div>
		
		<!-- 잘하는것 -->
      	<p class="p py-4" style="font-size: 18px; font-weight: bold;">Im really good at:</p>
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
		<p class="wide mt-3"><i class="material-icons mr-3">computer</i>Web Design</p>
      	<div class="progress progress_good">
  			<div class="progress-bar bg-secondary" style="width:90%">90%</div>
		</div>
	</div>
	
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
