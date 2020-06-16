<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
.content{
	padding: 64px 16px 0px;
    max-width: 1100px;
    margin-left: auto;
    margin-right: auto;
    color: #777;
}
.post_article {
    overflow: hidden;
    position: relative;
    max-width: 1100px;
    margin: 0 0px 30px 0;
}
.cont_post{
    position: relative;
    max-width: 1100px;
	padding-right: 200px;
	border-bottom: 1px solid #ededed;
}
.cont_post h2 {
    font-size: 24px;
    color: #434a53;
    padding-bottom: 14px;
}
.cont_post a {
    text-decoration: none;
    color: inherit;
}
.post_article .cont_img {
    position: absolute;
    top: 0;
    right: 0;
    width: 170px;
    height: 120px;
}
.cont_post .post_txt {
    font-size: 14px;
    line-height: 20px;
    max-height: 40px;
    overflow: hidden;
    text-overflow: ellipsis;
    word-break: break-word;
    margin-bottom: 15px;
    color: #666;
}
.cont_post dl {
    font-size: 12px;
    color: #b5b5b5;
    font-family: Avenir,'Lato',"애플 SD 산돌고딕 Neo","Apple SD Gothic Neo","나눔바른고딕",NanumBarunGothic,"나눔고딕",NanumGothic,"맑은 고딕","Malgun Gothic","돋움",dotum,AppleGothic,sans-serif;
    overflow: hidden;
    padding: 7px 0;
    padding-bottom: 30px;
    width: 100%;
}
dl, dd, dt{
	margin-bottom: 0px;
}
.cont_post dt {
    float: left;
    margin-right: 5px;
}
.cont_post dd {
    float: left;
}
.cont_post dd .line_bar {
    margin: 0 15px;
    color: #eaeaea;
}
.blind {
    visibility: hidden;
    overflow: hidden;
    position: absolute;
    top: 0;
    left: -9999px;
    width: 0;
    height: 0;
    font-size: 0;
    line-height: 0;
}
.btn {
	color: white;
}
.paginate_box{
	text-align: center;
}
.paginate a{
	border: 1px solid silver;
	border-radius: 16px;
	padding: 5px 10px;
	margin: 2px;
	font-size: 14px;
	color: #a0a0a0;
	text-decoration: none;
}
.paginate a:hover, .currpage{
	color: white !important;
	background-color: #a0a0a0;
}
@media all and (max-width:768px){
.contents {
    max-width: 100%;
    margin: 0 15px;
}
.post_article {
    max-width: 100%;
    margin: 0 0 30px 0;
}
.cont_post {
    max-width: 100%;
    padding: 0;
}
.cont_post h2 {
    font-size: 22px;
    padding-bottom: 15px;
}
.post_article .cont_img {
    position: relative;
    float: left;
    width: 100px;
    height: 70px;
    overflow: hidden;
}
.post_article .post_txt_wrap {
    display: block;
    overflow: hidden;
    padding-left: 20px;
}
.cont_post .post_txt {
    max-height: 60px;
    margin-bottom: 0;
    margin-top: 0;
}
.cont_post dl {
    padding-top: 15px;
}
}
@media all and (max-width:576px){
}

</style>
</head>
<body>
<!-- <div class="ready"><i class="material-icons">watch_later</i><h2>게시판 준비중입니다.</h2></div> -->
<div class="content" style="min-height: 90vh">
	<c:forEach var="index" items="${list}">
		<div class="post_article">
			<div class="cont_post">
				<h2><a href="${pageContext.request.contextPath}/Board/detail?bno=${index.bno}">${index.btitle}</a></h2>
				<div class="cont_img">
					<a href="${pageContext.request.contextPath}/Board/detail?bno=${index.bno}">
					<img src="${pageContext.request.contextPath}/resources/img/logo1.png" width="100%" height="100%" alt=""></a>
				</div>
				<a href="${pageContext.request.contextPath}/Board/detail?bno=${index.bno}" class="post_txt_wrap">
					<div class="post_txt">${index.bcontent}</div>
			    </a>
				<dl><dt><i class="xi-time-o"><span class="blind">등록일</span></i></dt><dd>${index.bwritedate}</dd>
					<dt><span class="blind">|</span></dt><dd><span class="line_bar">|</span></dd>
					<dt><i class="xi-eye"><span class="blind">카운트</span></i></dt><dd>${index.bhit}</dd></dl>
			</div>
		</div>
		
	</c:forEach>
	<div>
	<a class="btn btn-secondary mb-2" href="${pageContext.request.contextPath}/Board/write?category=board">글작성</a>
	</div>
	<div class="paginate_box">
	<div class="paginate">
	<c:if test="${page.prev}"><a style="padding: 5px 2px" href="${pageContext.request.contextPath}/Board?page=${page.startBlock-1}"><i style="vertical-align: bottom;" class="material-icons">navigate_before</i></a></c:if>
	
	<c:forEach var="index" begin="${page.startBlock}" end="${page.endBlock}" >
	<c:if test="${page.currPage eq index}"><a class="currpage">${index}</a></c:if>
	<c:if test="${page.currPage ne index}"><a href="${pageContext.request.contextPath}/Board?page=${index}">${index}</a></c:if>
	</c:forEach>
	
	<c:if test="${page.next}"><a style="padding: 5px 2px" href="${pageContext.request.contextPath}/Board?page=${page.endBlock+1}"><i style="vertical-align: bottom;" class="material-icons">navigate_next</i></a></c:if>
	</div>
	</div>
</div>
</body>
</html>