<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
	// 이미 저장된 이미지들 배열에 담기
	for (let i = 0; i < data.image_list.length; i++) {
	  filesArr.push({
	    'id': data.image_list[i]['id'],  // 삭제할 경우 백엔드에서 ID로 조회해야됨
	    'go_delete': false,	// 인덱스마다 go_delete 키를 추가
	  })
	  fileNo++
	}


	// 이미지 첨부
	function imgUpload(obj) {
	    
	    let maxFileCnt = 5   // 첨부파일 최대 개수
	    let attFileCnt = document.querySelectorAll('.filebox').length    // 기존 추가된 첨부파일 개수
	    let remainFileCnt = maxFileCnt - attFileCnt    // 추가로 첨부가능한 개수
	    let curFileCnt = obj.files.length  // 현재 선택된 첨부파일 개수
	    
	    // 첨부파일 개수 확인
	    // 최대 개수 초과 시
	    if (curFileCnt > remainFileCnt) {
	        alert("이미지는 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.")
	    }
	    
	    // 최대 개수 넘지 않았을 시
	    else {
	        for (const file of obj.files) {
	            
	          	// 파일 배열에 담기
	            filesArr.push(file)
	            filesArr[fileNo].is_delete = false
	          	/*
	            게시글 첫 업로드기능에서는 이미지를 파일 리스트에 추가할때
	            is_delete 키를 추가하지않고 삭제하는 경우만 true값으로 주었지만,
	          	수정기능에서는 기존이미지와 구분하기위해 미리 추가했다
	            */
	          	
	          	// 미리보기
	            let img = new Image()
	            img.src = URL.createObjectURL(file)
	            
	            let previewHtmlData = img
	            previewHtmlData.setAttribute('id', `preview-img-${fileNo}`)
	            $('.file-input-custom').before(previewHtmlData)
	            
	            // 파일 이름 및 삭제 버튼
	            let htmlData = ''
	            htmlData += '<div id="file' + fileNo + '" class="filebox">'
	            htmlData += '   <p class="name">' + file.name + '</p>'
	            htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ')">❌</a>'
	            htmlData += '</div>'
	            $('.file-list').append(htmlData)
	            
	            fileNo++
	        }
	    }
	}

	// 첨부파일 삭제 
	function deleteFile(num) {
	    document.querySelector("#file" + num).remove()
	    document.querySelector("#preview-img-" + num).remove()

	    // go_delete 키값을 조회함으로써 기존 이미지인지 새로 저장한 이미지인지 구분한다
	    if (filesArr[num]['go_delete'] == false) {
	      	// 기존에 저장된 이미지는 go_delete true 로 지정
	        filesArr[num].go_delete = true
	    }
	  	// 새로 첨부한 이미지는 is_delete true 로 지정
	    else {
	        filesArr[num].is_delete = true
	    }
	}
	
	// 이미 저장된 이미지들 배열에 담기
	for (let i = 0; i < data.image_list.length; i++) {
	  filesArr.push({
	    'id': data.image_list[i]['id'],  // 삭제할 경우 백엔드에서 ID로 조회해야됨
	    'go_delete': false,	// 인덱스마다 go_delete 키를 추가
	  })
	  fileNo++
	}


	// 이미지 첨부
	function imgUpload(obj) {
	    
	    let maxFileCnt = 5   // 첨부파일 최대 개수
	    let attFileCnt = document.querySelectorAll('.filebox').length    // 기존 추가된 첨부파일 개수
	    let remainFileCnt = maxFileCnt - attFileCnt    // 추가로 첨부가능한 개수
	    let curFileCnt = obj.files.length  // 현재 선택된 첨부파일 개수
	    
	    // 첨부파일 개수 확인
	    // 최대 개수 초과 시
	    if (curFileCnt > remainFileCnt) {
	        alert("이미지는 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.")
	    }
	    
	    // 최대 개수 넘지 않았을 시
	    else {
	        for (const file of obj.files) {
	            
	          	// 파일 배열에 담기
	            filesArr.push(file)
	            filesArr[fileNo].is_delete = false
	          	/*
	            게시글 첫 업로드기능에서는 이미지를 파일 리스트에 추가할때
	            is_delete 키를 추가하지않고 삭제하는 경우만 true값으로 주었지만,
	          	수정기능에서는 기존이미지와 구분하기위해 미리 추가했다
	            */
	          	
	          	// 미리보기
	            let img = new Image()
	            img.src = URL.createObjectURL(file)
	            
	            let previewHtmlData = img
	            previewHtmlData.setAttribute('id', `preview-img-${fileNo}`)
	            $('.file-input-custom').before(previewHtmlData)
	            
	            // 파일 이름 및 삭제 버튼
	            let htmlData = ''
	            htmlData += '<div id="file' + fileNo + '" class="filebox">'
	            htmlData += '   <p class="name">' + file.name + '</p>'
	            htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ')">❌</a>'
	            htmlData += '</div>'
	            $('.file-list').append(htmlData)
	            
	            fileNo++
	        }
	    }
	}

	// 첨부파일 삭제 
	function deleteFile(num) {
	    document.querySelector("#file" + num).remove()
	    document.querySelector("#preview-img-" + num).remove()

	    // go_delete 키값을 조회함으로써 기존 이미지인지 새로 저장한 이미지인지 구분한다
	    if (filesArr[num]['go_delete'] == false) {
	      	// 기존에 저장된 이미지는 go_delete true 로 지정
	        filesArr[num].go_delete = true
	    }
	  	// 새로 첨부한 이미지는 is_delete true 로 지정
	    else {
	        filesArr[num].is_delete = true
	    }
	}
	</script>
</head>
	
<body>
	<!-- 이미지 파일을 업로드할 수 있는 input 태그 -->
<input type="file" accept="image/*" onchange="imgUpload(this)" multiple />
</body>
</html>