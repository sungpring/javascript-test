<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8" />
</head>
<body>
<div class="form-group">
<div id="summernote-name"><input type="text" id="name" class="name-style" placeholder="Name : Please input text."></div>
<div id="summernote"></div>
<div id="summernote-button"><button id="insert-button" class="insert-button-style" onclick="insertNoticePosting(); return false;">Posting</button></div>
</div>
<script>

$(document).ready(function() {
	
});

/* summernote */
$('#summernote').summernote({
	placeholder: 'Writing Please.',
	tabsize: 2,
	top: 10,
	height: 200,
	minHeight: 200,             // set minimum height of editor
	maxHeight: null,
	toolbar: [
	  ['style', ['style']],
	  ['font', ['bold', 'underline', 'clear']],
	  ['color', ['color']],
	  ['para', ['ul', 'ol', 'paragraph']],
	  ['table', ['table']],
	  ['insert', ['link', 'picture']],
	  ['view', ['codeview']],
	  //['mybutton', ['hello']]
	],
	callbacks: {	//여기 부분이 이미지를 첨부하는 부분
		onImageUpload : function(files) {
			uploadImageFile(files[0],this);
		},
		onPaste: function (e) {
			var clipboardData = e.originalEvent.clipboardData;
			if (clipboardData && clipboardData.items && clipboardData.items.length) {
				var item = clipboardData.items[0];
				if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
					e.preventDefault();
				}
			}
		}
	},
	/*
	buttons: {
		hello: HelloButton
	},
	*/
	focus: true
	//lang: 'ko-KR'
});
/*
$('#summernote').on('summernote.image.upload', function(we, files) {
  // upload image to server and create imgNode...
  $summernote.summernote('/notice-writing-img', files);
});
*/

function uploadImageFile(file, editor) {
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url : "/notice/upload-image-file",
		contentType : false,
		processData : false,
		success : function(data) {
			console.log(data);
			$(editor).summernote('insertImage', data.url);
		}
	});
}

/* summernote end */

window.addEventListener('load', () => {
	getCookie();
});

function getCookie(){
	document.cookie = "safeCookie1=foo; SameSite=Lax"; document.cookie = "safeCookie2=foo"; document.cookie = "crossCookie=bar; SameSite=None; Secure";
}

let insertNoticePosting = function(){
	
}

</script>

</body>
</html>