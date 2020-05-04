<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--  Bootstrap CSS --> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
					   integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
					   crossorigin="anonymous">  
<!--  jquery -->   
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<!-- Popper.js first, then Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script> 

<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<!-- google icon -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<title>jinstar</title>
<style>
*{
 	font-family: Avenir,'Lato',"애플 SD 산돌고딕 Neo","Apple SD Gothic Neo","나눔바른고딕",NanumBarunGothic,"나눔고딕",NanumGothic,"맑은 고딕","Malgun Gothic","돋움",dotum,AppleGothic,sans-serif;
}
body::-webkit-scrollbar { 
    display: none;
}
/* 준비중 */
	.ready{ 
	width: 45vh; 
	height: 45vh;
	border: 1px solid #d6d6d6;
	border-radius: 22.5vh;
	box-shadow: 0 1px 1.5vh rgba(0,0,0,.4);
	margin: 20vh auto;
	text-align: center;
	}
	.ready .material-icons{
	margin: 12.5vh 17.5vh 0;
	font-size: 10vh;
	color: rgba(0,0,0,.25);
	}
	
	.ready h2{
	padding-top: 2vh;
	padding-left: 1vh;
	font-size: 3vh;
	color: rgba(0,0,0,.3);
	font-weight: bolder;
	}
/* end 준비중 */
</style>
</head>
<body>
	<header>
		<jsp:include page="header.jsp" />
	</header>
	<section>
		<jsp:include page="${contentpage}" />
	</section>
	<footer>
		<jsp:include page="footer.jsp" />
	</footer>
</body>
</html>


