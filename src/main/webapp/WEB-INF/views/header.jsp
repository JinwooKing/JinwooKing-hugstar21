<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body, input, textarea, select, button, table {
    font-family: Avenir,'Lato',"나눔바른고딕",NanumBarunGothic,"애플 SD 산돌고딕 Neo","Apple SD Gothic Neo","나눔고딕",NanumGothic,"맑은 고딕","Malgun Gothic","돋움",dotum,AppleGothic,sans-serif;
    font-size: 12px !important;
    -webkit-text-size-adjust: none;
}
header{
	padding-top: 68px;
}
.navdiv{
    max-width: 100%;
    height: 68px;
    background-color: white;
    border-bottom: 1px solid #d6d6d6;    
}
.navdiv .navbar{
	height: 67px;
	max-width: 1180px;
	background-color: white;
    margin: 0px auto !important;
}
.navbar-brand{
	font-family: Avenir,'Lato',"애플 SD 산돌고딕 Neo","Apple SD Gothic Neo","나눔바른고딕",NanumBarunGothic,"나눔고딕",NanumGothic,"맑은 고딕","Malgun Gothic","돋움",dotum,AppleGothic,sans-serif;
	font-size: 16px;
    color: #a0a0a0 !important;
    margin-right: 0px;
}
.mobilenav{
	display: none !important;
}
.pcbtn_search, .mobilebtn_search{
    width: 43px;
    height: 34px;
    border: 0;
    border-radius: 0;
    margin-left: -10px;
    font-family: xeicon;
    background: #fff;
    color: #a5a5a5;
    font-size: 18px !important;
    letter-spacing: -2px;
    transition: all 0.3s ease;
}
.pcbtn_search{
	border-left: 1px solid #E7E7E7;
}
.search_input{
    border: 1px solid #d3d3d3;
    border-radius: 3px;
    width: 231px !important;
    padding: 0 10px;
    margin-right: 20px !important;
    height: 34px;
    color: #6e6e70;
    -webkit-appearance: none;
    transition: all 0.3s ease;
}
.mobilemenu {
  display: inline-block;
  cursor: pointer;
}
.bar1, .bar2, .bar3 {
  width: 24px;
  height: 2px;
  background-color: #a5a5a5;
  margin: 6px 0;
  transition: 0.4s;
}
.change .bar1 {
  -webkit-transform: rotate(-45deg) translate(-5px, 4px);
  transform: rotate(-45deg) translate(-5px, 4px);
}
.change .bar2 {opacity: 0;}
.change .bar3 {
  -webkit-transform: rotate(45deg) translate(-7px, -7px);
  transform: rotate(45deg) translate(-7px, -7px);
}
.togglenav, .togglesearch{
	display: none;
	/* padding-top: 67px; probar */
	background-color: white;
	border-bottom: 1px solid #d6d6d6;
}
.togglenav ul{
	/* border-top: 1px solid #d6d6d6; probar */
	padding: 5px 0 20px;	
}
.togglenav ul li{
	border-bottom: 0px solid #d6d6d6 !important;
	padding: 4px;
	text-align: center;
}
.togglenav ul li a {
    font-family: Avenir,'Lato',"나눔바른고딕",NanumBarunGothic,"애플 SD 산돌고딕 Neo","Apple SD Gothic Neo","나눔고딕",NanumGothic,"맑은 고딕","Malgun Gothic","돋움",dotum,AppleGothic,sans-serif;
    color: #000;
    font-size: 16px;
}
.togglenav ul li a:hover{
	text-decoration: none;
}
.togglesearch form{
	/* border-top: 1px solid #d6d6d6; probar */
}

.togglesearch input {
    width: 100% !important;
    margin: 7px 15px !important;
}

/* The progress container */
.progress-container {
  padding-top: 68px;
  width: 100%;
  height: 8px;
}

/* The progress bar (scroll indicator) */
.progress-bar {
  height: 8px;
  background: #dceffb;
  width: 0%;
}

@media all and (max-width:960px){
	.pcnav{ 
	 display: none;
	}
	.mobilenav{
	 display: block !important;
	}
}
</style>
<script>
//When the user scrolls the page, execute myFunction
window.onscroll = function() {prbar()};
function prbar() {
var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
var scrolled = (winScroll / height) * 100;
document.getElementById("prBar").style.width = scrolled + "%";
}
function menu(x) {
  x.classList.toggle("change");
}
$(document).ready(function(){
	//pc크기 펼쳐진 mobile 메뉴와 검색창 사라지기
	$(window).resize(function(){
		if($(document).width()>960){
			if($(".togglenav").css("display")==="block"){
				 $(".mobilemenu").trigger("click");
			}
			$(".togglesearch").css("display","none");
			$(".togglenav").css("display","none");
		}	  
	});	
	//모바일 메뉴 토글
	  $(".mobilemenu").click(function(){
		$(".togglesearch").css("display","none");
	    $(".togglenav").slideToggle("slow");
	  });
	//모바일 검색창 토글  
	  $(".mobilebtn_search").click(function(){
		  if($(".togglenav").css("display")==="block"){
			  $(".mobilemenu").trigger("click");
			  $(".togglenav").css("display","none");
		  }    
	    $(".togglesearch").slideToggle("slow");
	  });
});// end document	
</script>
</head>
<body>
<!-- nav -->
<div class="navdiv fixed-top">
	<nav class="navbar fixed-top navbar-light">
	
	  <!-- mobile icon -->
	  <div class="mobilemenu mobilenav" onclick="menu(this)">
		 <div class="bar1"></div>
		 <div class="bar2"></div>
		 <div class="bar3"></div>
	  </div>
	  
	  <!-- jinstar img -->
	  <a class="navbar-brand" href="${pageContext.request.contextPath}" style="font-weight: bolder;">
	    <img src="${pageContext.request.contextPath}/resources/img/logo1.png" width="100" height="auto" class="d-inline-block align-top" alt="">
	  </a>
	  
	  <!--  pcnav link -->
	  <a class="navbar-brand pcnav" href="profile">Profile</a>
	  <a class="navbar-brand pcnav" href="Story">Story</a>
	  <a class="navbar-brand pcnav" href="Board">Board</a>
	  <!-- <a class="navbar-brand pcnav" href="About">About</a> -->
	  
	  <!--  pcnav search -->
	  <form class="form-inline pcnav">
	    <input class="form-control mr-sm-1 search_input" type="search" placeholder="jinstar에서 검색" aria-label="Search">
	    <button type="submit" class="pcbtn_search">
	    	<i class="xi-search xi-x"></i>
	    </button>
	  </form>
	
	  <!-- mobile search call -->
	  <button type="submit" class="mobilebtn_search mobilenav">
	   	<i class="xi-search xi-x"></i>
	  </button>
	</nav>
	
	<!--  progress bar -->
	<div class="progress-container">
    	<div class="progress-bar" id="prBar"></div>
  	</div>  	
  	
  	<!-- mobile nav link -->
	<div class="togglenav">
		<ul class="list-group list-group-flush">
		  <li class="list-group-item"><a href="profile">Profile</a></li>
		  <li class="list-group-item"><a href="Story">Story</a></li>
		  <li class="list-group-item"><a href="Board">Board</a></li>
		  <!-- <li class="list-group-item"><a href="About">About</a></li> -->
		</ul>
	</div>
	
	<!-- mobile search input -->
	<div class="togglesearch">
		<form class="form-inline">
			<input class="form-control mr-sm-1 search_input" type="search" placeholder="jinstar에서 검색" aria-label="Search">
		</form>
	</div>
</div>
</body>
</html>
