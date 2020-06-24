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
<script src="${pageContext.request.contextPath}/resources/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script>
$(document).ready(function(){
	

	var body = document.getElementById('test');
	console.log(test);
	var smart = document.getElementById('smart_editor2');
	console.log(smart);
})

</script>
</head>
<body>
<div id="test" class="content" style="min-height: 90vh">

		<div class="write">
			<form action="${pageContext.request.contextPath}/Board/insertBoard" method="post">
			<input class="title mb-3" type="text" id="btitle" name="btitle" placeholder="제목">	
			<textarea name="ir1" id="ir1" rows="10" cols="100" style="width:100%; height:612px; display:none;"></textarea>
	<p>
		<!-- <input class="btn btn-secondary" type="button" onclick="pasteHTML();" value="본문에 내용 넣기" />
		<input class="btn btn-secondary" type="button" onclick="showHTML();" value="본문 내용 가져오기" />
		<input class="btn btn-secondary" type="button" onclick="setDefaultFont();" value="기본 폰트 지정하기 (궁서_24)" /> -->
		<input class="btn btn-secondary" type="button" onclick="submitContents(this);" value="글작성" />
		
	</p>
</form>
		</div>
</div>
<script>
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
 oAppRef: oEditors,
 elPlaceHolder: "ir1",
 sSkinURI: "${pageContext.request.contextPath}/resources/smarteditor/SmartEditor2Skin.jsp",
 fCreator: "createSEditor2"
});

/* function pasteHTML() {
	var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
	oEditors.getById["ir1"].exec("PASTE_HTML", [sHTML]);
}

function showHTML() {
	var sHTML = oEditors.getById["ir1"].getIR();
	alert(sHTML);
}

function setDefaultFont() {
	var sDefaultFont = '궁서';
	var nFontSize = 24;
	oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
} */	

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