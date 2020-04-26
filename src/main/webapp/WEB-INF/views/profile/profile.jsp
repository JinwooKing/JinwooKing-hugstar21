<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  font-family: Arial;
  color: white;
}
.split {
  height: 100%;
  width: 50%;
  position: fixed;
  /* z-index: 1; */
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}
.left {
  left: 0;
  background-color: #90CAF9;
}
.right {
  right: 0;
  background-color: #B2EBF2;
}
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}
.centered img {
  width: 150px;
  border-radius: 50%;
}
</style>
</head>
<body>
<div style="height: 1000px;">
<div class="split left">
  <div class="centered">
    <img src="${pageContext.request.contextPath}/resources/img/eunbori/hugstar21.jpg" alt="eunbori">
    <h2>hugstar21</h2>
    <p>안은별</p>
  </div>
</div>

<div class="split right">
  <div class="centered">
    <img src="${pageContext.request.contextPath}/resources/img/jinwoo/JinwooKing.jpg" alt="jinwoo">
    <h2>JinwooKing</h2>
    <p>박진우</p>
  </div>
</div>
</div>
</body>
</html>