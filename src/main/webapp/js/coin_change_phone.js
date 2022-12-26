var temp_auth_number=99; 

$(document).ready(function() {
	$('.check_check').hide();
	
	var coin_user_email = document.getElementById('coin_user_email').value;
	
	$.ajax({
		type:'post',
		url: '/phone_change_page_session_check',
		data: { coin_user_email : coin_user_email },
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

function send_auth_number() {
	
	var phone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	var coin_user_phone = document.getElementById('coin_user_phone').value;
	var coin_user_phonev = document.getElementById('coin_user_phone');
	$.ajax({
		type:'POST',
		url: '/double_phone_check',
		data: { coin_user_phone : coin_user_phone },
		dataType: 'text',
		success: function(data) {
			if(data=='success'){ //등록할 핸드폰 중복체크 성공
				$('.check_check').hide();
				if(phone.test($('#coin_user_phone').val())){
					$.ajax({
						type:'POST',
						url: '/join_auth_num',
						data: { coin_user_phone : coin_user_phone },
						dataType: 'text',
						success: function(data) {
							alert('인증번호가 전송되었습니다.');
							coin_user_phonev.disabled = true;
							temp_auth_number=data;
							//alert(temp_auth_number);
						}
					});
				}else{
					$('.check_phone').show();
				}
			}else {
					$('.check_phone').hide();
					$('#coin_user_phone').focus();
					$('.check_phone_double').show();
					return false;
				}
		}
	})
}

function phone_change() {
	
	var coin_user_email = document.getElementById('coin_user_email').value;
	var coin_user_phone = document.getElementById('coin_user_phone').value;
	
	if($('#auth_number').val() != temp_auth_number){
		$('.check_auth_number').show();
		return false;
	}else if(!$('#coin_user_phone').val()){
		$('.check_phone').show();
		return false;
	}else {
		$('.check_auth_number').hide();
		$.ajax({
			type:'POST',
			url: '/my_phone_change',
			data: { coin_user_email : coin_user_email, 
					coin_user_phone : coin_user_phone },
			dataType:'json',
			success: function(data){
				if(data==99){
					alert('전화번호가 변경되었습니다.');
					location.href="/my_info";
				}else{
					console.log('ERROR...');
					alert('ERROR!');
					location.href="/";
				}
			}
		});
	}
}

function no_change() {
	location.href='/my_info';
}