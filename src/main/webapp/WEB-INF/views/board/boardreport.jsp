<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/boardwrite.css"
	type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="resources/summernote/summernote-lite.js"></script>
  		<script src="resources/summernote/summernote-ko-KR.js"></script>
  		<link rel="stylesheet" href="resources/summernote/summernote-lite.css">

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
		<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> 
		<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
		<script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>


<script>
	$(function() {
		//입력박스 숨어있다가
		$("#otherreason").hide();
		$("#r_reason").change(function() {
			//기타를 선택하면 등장
			if ($("#r_reason").val() == "etc") {
				$("#otherreason").show();
				alert("기타사유를 작성해주세요.");
			} else {
				$("#otherreason").hide();
			}
		})
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<!-- 신고 게시판 -->
	<div class="report">
		<form action="breport" method="post" enctype="multipart/form-data">
			<div class="title">REPORT</div>
			<input type="hidden" name="b_num" value="${b_num }">
			<table>
			<thead id="thead">
				<tr>
					<th>게시글 제목</th>
					<th id="reportid">신고사유</th>
					<th>첨부파일</th>
				</tr>
			</thead>
			<tbody id="tbody">
				<tr>
					<td>${b_title }</td>
					<td><select name="r_reason" id="r_reason">
							<option value="원치않는 상업성 콘텐츠 또는 스팸,도배">원치않는 상업성 콘텐츠 또는 스팸,도배</option>
							<option value="포르노 또는 음란물">포르노 또는 음란물</option>
							<option value="증오심 표현 또는 혐오적인 발언 및 욕설">증오심 표현 또는 혐오적인 발언 및 욕설</option>
							<option value="희롱 또는 괴롭힘">희롱 또는 괴롭힘</option>
							<option value="잘못된 정보">잘못된 정보</option>
							<option value="개인정보 노출">개인정보 노출</option>
							<option value="etc" id="etc">기타</option>
					</select>
					<input type="text" id="otherreason" name="otherreason" placeholder="신고 사유를 40자 이내로 작성해주세요."/></td>
					<td><input type="file" name="r_file1"></td>	
				</tr>
			</tbody>
			</table>
			<input type="submit" id="submit" value="신고하기">
		</form>
	</div>
	<script>
$('.summernote').summernote({
	width: 995,
     height: 230,                 // 에디터 높이
      minHeight: null,             // 최소 높이
      maxHeight: null,             // 최대 높이
      focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
      lang: "ko-KR",                    // 한글 설정
      placeholder: '내용을 입력하세요.'    //placeholder 설정
   });
$('.note-statusbar').hide()
</script>
</body>
</html>