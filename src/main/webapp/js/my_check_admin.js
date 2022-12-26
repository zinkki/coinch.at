
$(document).ready(function() {
	
	$('#admin_space').hide();
	
	//admin페이지가는거 check해서 일반사용자에게 안보이게하기
	var check_admin = document.getElementById('check_admin').value;
	
	if(check_admin == 'Y'){
		$('#admin_space').show();
	}else {
		$('#admin_space').hide();
	}

    var session_email = document.getElementById('session_email').value;
	
	$.ajax({
		type:'post',
		url: '/my_session_check',
		data: { session_email : session_email },
		dataType: 'text',
		success : function(data) {
			if(data=="not_empty"){
				console.log('GOOD');
			}else {
				location.href="/page_error";
			}
		}				
	});

})
