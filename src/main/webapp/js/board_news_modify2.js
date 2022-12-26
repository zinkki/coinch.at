
$(document).ready(function() {
	var coin_user_adminYN = document.getElementById('coin_user_adminYN').value;
	
	if(coin_user_adminYN == 'Y'){
		$('#admin_space').show();
		$('#admin_space2').show();
	}else {
		$('#admin_space').hide();
		$('#admin_space2').hide();
	}
})

function modify() {
	var board_seq = document.getElementById	('board_seq').value;
	var board_title = document.getElementById('board_title').value;
	var board_content = document.getElementById('editor-one').innerHTML;
	
	if(!$('#board_title').val()) {
		alert('(영문버전)제목을 입력하세요!');
		return false;
	}else if(!board_content) {
		alert('(영문버전)내용을 입력하세요!');
		return false;
	}else {
		$.ajax({
			type: 'POST',
			url: '/news_modify_e',
			data: {board_seq:board_seq,
				   board_title:board_title,
				   board_content:board_content},
			dataType: 'text',
			success: function(data) {
				console.log(data);
				alert("(영문버전)수정되었습니다.");
				location.href="/news_detail_e?board_seq="+board_seq;
			}
		});
	}
}

function goback() {
	history.go(-1);
}

function news_delete() {
	var board_seq = document.getElementById	('board_seq').value;
	var result = confirm("(영문버전)삭제하시겠습니까?");
	if(result == true) {
		$.ajax({
			type: 'POST',
			url: '/news_delete_e',
			data: {board_seq:board_seq},
			dataType: 'text',
			success: function(data) {
				console.log(data);
				alert("(영문버전)삭제되었습니다.");
				location.href="/news_e";
			}
		});
	}else {
		alert("(영문버전)삭제가 취소되었습니다.");
	}
}