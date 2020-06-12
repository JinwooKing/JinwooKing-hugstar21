<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
.content{
	padding: 64px 16px 0px;
    max-width: 1200px;
    margin-left: auto;
    margin-right: auto;
    color: #777;
}
.post_article {
    position: relative;
    width: 100%;
    max-width: 1148px;
    margin: 0 auto;
}
.cont_post{
    position: relative;
    max-width: 1148px;
	border-bottom: 1px solid #ededed;
	margin-bottom: 50px;
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
<div class="content" style="min-height: 90vh">
		<div class="post_article">
			<div class="cont_post">
				<h2>${detail.btitle}</h2>
				<dl><dt><i class="xi-time-o"><span class="blind">등록일</span></i></dt><dd>${detail.bwritedate}</dd>
					<dt><span class="blind">|</span></dt><dd><span class="line_bar">|</span></dd>
					<dt><i class="xi-eye"><span class="blind">카운트</span></i></dt><dd>${detail.bhit }</dd></dl>
				<%-- <div class="cont_img">
					<img src="${pageContext.request.contextPath}/resources/img/logo1.png" width="100%" height="100%" alt="">
				</div> --%>
					<div class="post_txt">${detail.bcontent}</div>
			</div>
		
		<a class="btn btn-secondary mb-5" href="${pageContext.request.contextPath}/Board/deleteBoard?bno=${detail.bno}">글삭제</a>
		<a class="btn btn-secondary mb-5" href="${pageContext.request.contextPath}/Board/update?bno=${detail.bno}">글수정</a>
		<a class="btn btn-secondary mb-5" href="${pageContext.request.contextPath}/Board">글목록</a>
		</div>
		
</div>
</body>
</html>