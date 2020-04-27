<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
html {
  scroll-behavior: smooth;
}
body {
  font-family: Arial;
  color: white;
  overflow-x: hidden;
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
.column img {
  width: 150px;
  border-radius: 50%;
}
.column {
  float: left;
  width: 50%;
  text-align: center;
  height: 93vh;
  width: 50%;
  padding-top: 34vh;
}
/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.pronav {
  display: flex;  
  background-color: white;
  border-bottom: 1px solid #d6d6d6;
  max-width: 100%;
  box-shadow: 0 1px 3px rgba(0,0,0,.4);
}
.pronav nav{
  height: 47px;
  max-width: 1180px;
  margin: 0px auto !important;
  padding: 0px;
}
/* Navbar links */
.pronav a {
  float: left;
  color: #f2f2f2;
  text-decoration: none;
  padding: 9px 33px;
}

.pronav a:first-child{
  padding-left: 44px;
}
/* The sticky class is added to the navbar with JS when it reaches its scroll position */
.sticky {
  position: fixed;
  top: 68px;
  width: 100%;
}
</style>
<script>
$(document).ready(function(){
	// profile nav sticky
	window.onscroll = function() {prosticky(); prbar();};
	function prosticky() {
		if (document.documentElement.scrollTop >= 900) {
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
		setTimeout(() => {location.href="#eunpronav"}, 400);
		} 
	})
	// JinwooKing클릭
	$(".right").click(function(){
		if($(".left").css("width")==="0px"){
			$(".left").css("width","50%");
			$(".right").css("width","50%");
		}else{
		$(".right").css("width","100%");
		$(".left").css("width","0%");
		setTimeout(() => {location.href="#jinpronav"}, 400);
		}
	})
})
</script>
</head>
<body>
<!-- home -->
<div style="height: 93vh;">
	<div class="row">
	  <div class="column left" data-toggle="collapse" data-target="#hugstar21">
	    <img src="${pageContext.request.contextPath}/resources/img/eunbori/hugstar21.jpg" alt="eunbori">
	    <h2>hugstar21</h2>
	    <p>안은별</p>
	  </div>
	  
	  <div class="column right" data-toggle="collapse" data-target="#JinwooKing">
	    <img src="${pageContext.request.contextPath}/resources/img/jinwoo/JinwooKing.jpg" alt="jinwoo">
	    <h2>JinwooKing</h2>
	    <p>박진우</p>
	  </div>
	</div>
</div>
<!-- about -->
	<div id="hugstar21" class="collapse">
		<div id="eunpronav" class="pronav">
			<nav class="navbar navbar-light">
				<a class="navbar-brand" href="#">Home</a>
				<a class="navbar-brand" href="#">About</a>
				<a class="navbar-brand" href="#">Portfolio</a>
			</nav>
		</div>
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
	</div>
	
	<div id="JinwooKing" class="collapse">
		<div id="jinpronav" class="pronav">
		  <nav class="navbar navbar-light">
			<a class="navbar-brand" href="#">Home</a>
			<a class="navbar-brand" href="#">About</a>
			<a class="navbar-brand" href="#">Portfolio</a>
		  </nav>
		</div>
	<h1 style="color: black;">JinwooKing</h1>	
	</div>
</body>
</html>
