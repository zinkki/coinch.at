
$(document).ready(function() {
	
	var coin_user_email = document.getElementById('coin_user_email').value;
	
	$.ajax({
		type:'POST',
		url: '/get_my_info',
		data: { coin_user_email : coin_user_email },
		dataType: 'json',
		success: function(data) {
			$('input[name=coin_user_name]').attr('value',data.coin_user_name);
			$('input[name=coin_user_birth]').attr('value',data.coin_user_birth);
			$('input[name=coin_user_phone]').attr('value',data.coin_user_phone);
			if(data.coin_user_alarmYN=='Y'){
				$('input[name=coin_user_alarmYN]').attr('checked','checked');
			}
		}
	})
	
	$.ajax({
		type:'post',
		url: '/my_info_session_check',
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

//이벤트 혜택 알림설정
function change_alarm() {
	if($('input[name=coin_user_alarmYN]').is(':checked')==false){
		var coin_user_email = document.getElementById('coin_user_email').value;
		var coin_user_alarmYN = document.getElementById('coin_user_alarmYN').value;
		
		$.ajax({
			type:'POST',
			url:'/change_alarmN',
			data: { coin_user_email : coin_user_email, 
					coin_user_alarmYN : coin_user_alarmYN },
			dataType:'json',
			success: function(data) {
				if(data==0){
					alert("해당 회원의 이벤트 혜택 알림 설정을 끄셨습니다.");
				}else {
					location.href="/page_error";
					alert("ERROR");
				}
			}
		});
		
	}else{
		var coin_user_email = document.getElementById('coin_user_email').value;
		var coin_user_alarmYN = document.getElementById('coin_user_alarmYN').value;
		
		$.ajax({
			type:'POST',
			url:'/change_alarmY',
			data: { coin_user_email : coin_user_email, 
					coin_user_alarmYN : coin_user_alarmYN },
			dataType: 'json',
			success: function(data) {
				if(data==0) {
					alert("해당 회원의 이벤트 혜택 알림 설정을 켰습니다.");
				}else {
					location.href="/page_error";
					alert("ERROR");
				}
			}
		});
	}
}

function coin_user_name_change() {
	
	var coin_user_email = document.getElementById('coin_user_email').value;
	var coin_user_name = document.getElementById('coin_user_name').value;
	
	if($('#coin_user_name').val()){
		if (confirm('이름을 변경 하시겠습니까?') == true) {
			$.ajax({
				type: 'POST',
				url: '/change_user_name',
				data: {
					coin_user_email: coin_user_email,
					coin_user_name: coin_user_name
				},
				dataType: 'json',
				success: function(data) {
					if (data == 0) {
						alert('이름 변경이 완료되었습니다');
					} else {
						alert('ERROR...');
					}
				}
			})

		} else {
			alert('변경이 취소되었습니다.');
			history.go(0);
		}
	}else{
		alert('이름을 입력해주세요!');
		return false;
	}
}