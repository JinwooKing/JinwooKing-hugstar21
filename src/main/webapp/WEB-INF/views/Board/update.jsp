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
.write {
    overflow: hidden;
    position: relative;
    max-width: 1150px;
    margin: 0 0px 30px 0;
}

.btn {
	font-size: 1rem !important;
}

.title{
	border: 0px;
	border-bottom: 1px solid silver;
	width: 100%;
	padding: 15px;
	outline: none;
	font-size: 12em;
}
@media all and (max-width:768px){
.contents {
    max-width: 100%;
    margin: 0 15px;
}
.write {
    max-width: 100%;
    margin: 0 0 30px 0;
}

}
@media all and (max-width:576px){
	
}


</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
<div class="content" style="min-height: 90vh">
		<div class="write">
			<form action="${pageContext.request.contextPath}/Board/updateBoard" method="post">
			<input type="hidden" id="bno" name="bno" value="${detail.bno}">
			<input class="title mb-3" type="text" id="btitle" name="btitle" placeholder="제목" value="${detail.btitle}">	
			<textarea name="ir1" id="ir1" rows="10" cols="100" style="width:100%; height:612px; display:none;">${detail.bcontent }</textarea>
	<p>
		<input class="btn btn-secondary" type="button" onclick="submitContents(this);" value="글수정" />
		
	</p>
</form>
		</div>
</div>
<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
 oAppRef: oEditors,
 elPlaceHolder: "ir1",
 sSkinURI: "${pageContext.request.contextPath}/resources/smarteditor/SmartEditor2Skin.jsp",
 fCreator: "createSEditor2"
});

function submitContents(elClickedObj) {
	oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
	
	// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
	
	try {
		elClickedObj.form.submit();
	} catch(e) {}
}
</script>
</body>
</html>