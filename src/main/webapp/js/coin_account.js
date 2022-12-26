

$(document).ready(function() {
	$('.check_check').hide();
})

function email_send(){
	
	var phone = /^01([0|1|6|7|8|9])-?([0-9]{4})-?([0-9]{4})$/;
	var name = /^[가-힣A-Za-z]{2,20}$/;
	
	var coin_user_name = document.getElementById('coin_user_name').value;
	var coin_user_phone = document.getElementById('coin_user_phone').value;
	
	var coin_user_namev = document.getElementById('coin_user_name');
	var coin_user_phonev = document.getElementById('coin_user_phone');
	var send_btn = document.getElementById('send_btn');
	
	if(phone.test($('#coin_user_phone').val()) && name.test($('#coin_user_name').val())){
		
		$.ajax({
			type: 'POST',
			url: 'check_user_name_phone',
			data: { coin_user_name : coin_user_name, 
					coin_user_phone : coin_user_phone },
			dataType: 'text',
			success: function(data) {
				if(data=='success'){
					$('.check_check').hide();
					//이밑으로 AJAX꺼내꺼내~
					$.ajax({
						type:'POST',
						url: '/go_email_send',
						data: { coin_user_phone : coin_user_phone },
						dataType: 'json',
						success: function(data) {
							coin_user_namev.disabled=true;
							coin_user_phonev.disabled=true;
							send_btn.disabled=true;
							console.log(data);
							alert('등록된 핸드폰번호로 ID(이메일주소)를 전송하였습니다.');
						}
					})
					
				}else{
					$('.check_phone_and_name').show();
					$('.check_name').hide();
					$('.check_phone').hide();
					return false; //이름또는 폰번호가 맞지않다고 하기
				}
			}
		})
		
	}else {
		if(phone.test($('#coin_user_phone').val())==false){
			$('.check_phone').show();
			$('.check_name').hide();
			$('.check_phone_and_name').hide();
		}else if(name.test($('#coin_user_name').val())==false){
			$('.check_name').show();
			$('.check_phone').hide();
			$('.check_phone_and_name').hide();
		}
	}
		
}

function pw_send() {
	
	var email = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var phone = /^01([0|1|6|7|8|9])-?([0-9]{4})-?([0-9]{4})$/;
	
	var coin_user_email = document.getElementById('coin_user_email').value;
	var coin_user_phone = document.getElementById('coin_user_phone1').value;
	
	if((email.test($('#coin_user_email').val())==true) && (phone.test($('#coin_user_phone1').val())==true)) {
		$('.email_test').hide();
		$('.phone_test').hide();
		$.ajax({
			type:'POST',
			url: '/check_email_phone',
			data: { coin_user_email : coin_user_email,
					coin_user_phone : coin_user_phone },
			dataType:'json',
			success: function(data) {
				if(data==1){ //일치O(ajax한번 더 보내서 임시비밀번호 보내기)
					$('.no_info').hide();
					$.ajax({
						type:'POST',
						url: '/send_new_pw',
						data: { coin_user_email : coin_user_email,
								coin_user_phone : coin_user_phone },
						dataType: 'text',
						success: function(data){
							if(data == null){
								alert('ERROR...');
							}else {
								alert('등록하신 휴대폰번호로 임시비밀번호를 전송했습니다. 임시비밀번호로 로그인 하신 후, 마이페이지에서 비밀번호를 변경해주세요.');
								location.href="/login";
							}
						}
					})
				}else {//일치X 빨간글씨(등록되지 않은 사용자) data==0
					$('.no_info').show();
				}
			}
		});
	}else if(email.test($('#coin_user_email').val())==false) {
		$('.email_test').show();
		$('.phone_test').hide();
		$('.no_info').hide();
	}else if(phone.test($('#coin_user_phone').val())==false) {
		$('.phone_test').show();
		$('.email_test').hide();
		$('.no_info').hide();
	}
}