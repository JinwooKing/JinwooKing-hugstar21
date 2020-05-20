<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
.content{
	padding: 64px 16px;
    max-width: 1200px;
    margin-left: auto;
    margin-right: auto;
    color: #777;
}
.post_article {
    overflow: hidden;
    position: relative;
    max-width: 840px;
    margin: 0 310px 30px 0;
}
.cont_post{
    position: relative;
    max-width: 840px;
    min-width: 640px;
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
@media all and (max-width:960px){
.post_article {
    margin: 0 0px 30px 0;
}

}
@media all and (max-width:500px){
}

</style>
</head>
<body>
<!-- <div class="ready"><i class="material-icons">watch_later</i><h2>게시판 준비중입니다.</h2></div> -->
<div class="content">
	<c:forEach var="index" items="${list}">
		<div class="post_article">
			<div class="cont_post">
				<h2><a href="#">${index.title}</a></h2>
				<div class="cont_img">
					<a href="#">
					<img src="${pageContext.request.contextPath}/resources/img/logo1.png" width="100%" height="100%" alt=""></a>
				</div>
				<a href="#" class="post_txt_wrap">
					<div class="post_txt">${index.content}</div>
			    </a>
				<dl><dt><i class="xi-time-o"><span class="blind">등록일</span></i></dt><dd>${index.date}</dd>
					<dt><span class="blind">|</span></dt><dd><span class="line_bar">|</span></dd>
					<dt><i class="xi-eye"><span class="blind">카운트</span></i></dt><dd>2699</dd></dl>
			</div>
		</div>
	</c:forEach>
</div>
</body>
</html>