function submit_btn() {
	
	var board_title = document.getElementById('board_title').value;
	var board_content = document.getElementById('editor-one').innerHTML;
	
	if(!$('#board_title').val()) {
		alert("제목을 입력하세요!");
		return false;
	}else if(!board_content) {
		alert("내용을 입력하세요!");
		return false;
	}else {
		$.ajax({
			type: 'POST',
			url: '/notice_insert_e',
			data: { board_title:board_title,
					board_content:board_content},
			dataType: 'text',
			success: function(data) {
				console.log(data);
				alert("OKOK");
				location.href="/notice_e";
			}
		});
	}
}

function go_list() {
	location.href="/notice_e";
}