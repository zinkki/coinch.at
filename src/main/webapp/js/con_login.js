
$(document).ready(function() {
	$('.check_check').hide();
	$('.check_login').hide();
	
	var session_email = document.getElementById('session_email').value;
	
	$.ajax({
			type:'post',
			url: '/login_session_check',
			data: { session_email : session_email },
			dataType: 'text',
			success : function(data) {
				if(data=="empty"){
					console.log('GOOD');
				}else {
					location.href="/page_error";
				}
			}				
		});	
})

function go_join() {
	location.href="/join";
}

function go_login() {
	var coin_user_email = document.getElementById('coin_user_email').value;
	var coin_user_pw = document.getElementById('coin_user_pw').value;
	
	if(!$('#coin_user_email').val() || !$('#coin_user_pw').val()){
		$('.check_login').show();
	}else {
		
		$.ajax({
			type:'POST',
			url: '/login_check',
			data: { coin_user_email : coin_user_email,
					coin_user_pw : coin_user_pw },
			dataType: 'text',
			success: function(data) {
				if(data=='ok') {
					alert("로그인 되었습니다.")
					location.href="/";
				}else {
					$('.check_login').show();
				}
			}
		})
		$('.check_check').hide();
		$('.check_login').hide();
	}
}