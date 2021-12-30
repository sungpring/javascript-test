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
<script>
var getValue = getParameterByName("eiNum");

window.addEventListener('load',async function(){
 
    let res=await galleryOptionLoopCall();
    let html = '<option value="">갤러리 선택</option>';
    for (let galleryInfo of res) {
        html += '<option value="' + galleryInfo.giNum + '">' + galleryInfo.giName + '</option>';
    }
    document.querySelector('#gallery').innerHTML = html;
    
    
    let exhibition=await getOpenLoopCall(getValue);
    document.getElementById('eiNum').value=exhibition.eiNum;
    document.getElementById('eiStatus').value=exhibition.eiStatus;
    document.getElementById('gallery').value=exhibition.galleryInfo.giNum;
    document.getElementById('eiName').value=exhibition.eiName;
    document.getElementById('eiArtist').value=exhibition.eiArtist;
    document.getElementById('eiCharge').value=exhibition.eiCharge;
    document.getElementById('eiStartDate').value=exhibition.eiStartDate;
    document.getElementById('eiEndDate').value=exhibition.eiEndDate;
    document.getElementById('eiStartTime').value=exhibition.eiStartTime;
    document.getElementById('eiEndTime').value=exhibition.eiEndTime;
 
    document.getElementById('fileMemory').value=exhibition.fileInfo.fiOriginalname;
    document.getElementById('eiContent').value=exhibition.eiContent;
    
    document.getElementById('uiNum').value=exhibition.userInfo.uiNum;
})

function galleryOptionLoopCall() {
    return new Promise(function(resolve, reject){
        let xhr = new XMLHttpRequest();
        xhr.open('GET', '/Gallery-lists'); //GalleryController
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                let res = JSON.parse(xhr.responseText);
                resolve(res);
                
            }
        }
        xhr.send();
    })
}

function getOpenLoopCall(obj){
    return new Promise(function(resolve, reject){
        let xhr = new XMLHttpRequest();
        xhr.open('GET', '/exhibition?eiNum='+obj); //ExhibitionController
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                
                let exhibition = JSON.parse(xhr.responseText);
                resolve(exhibition);
                            
            }
        }
        xhr.send();
    })
}

</script>
</body>
</html>