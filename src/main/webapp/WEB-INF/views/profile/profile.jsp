<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  font-family: Arial;
  color: white;
  overflow-x: hidden;
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
  height: 94vh;
  width: 50%;
  padding-top: 34vh;
  z-index: 1;
}
/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
<script>
$(document).ready(function(){
	// hugstar21클릭
	$(".left").click(function(){		
		if($(".right").css("width")==="0px"){
			$(".left").css("width","50%");
			$(".right").css({"width":"50%","display":"block"});
		}else{
		$(".left").css("width","100%");
		$(".right").css("width","0%")
		setTimeout(() => {$(".right").css("display","none")}, 300);
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
		}
	})
})
</script>
</head>
<body>
<div style="height: 94vh;">
<div class="row">
  <div class="column left">
    <img src="${pageContext.request.contextPath}/resources/img/eunbori/hugstar21.jpg" alt="eunbori">
    <h2>hugstar21</h2>
    <p>안은별</p>
  </div>
  <div class="column right">
    <img src="${pageContext.request.contextPath}/resources/img/jinwoo/JinwooKing.jpg" alt="jinwoo">
    <h2>JinwooKing</h2>
    <p>박진우</p>
  </div>
	</div>
</div>


  

</body>
</html>