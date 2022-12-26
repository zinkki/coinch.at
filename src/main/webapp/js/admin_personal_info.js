
$(document).ready(function() {
	var check_admin = document.getElementById('check_admin').value;
	
	$.ajax({
			type:'post',
			url: '/admin_check',
			data: { check_admin : check_admin },
			dataType: 'text',
			success : function(data) {
				if(data=="Y"){
					console.log('GOOD');
				}else {
					location.href="/page_error";
				}
			}				
		});
})

function admin_pwChange() {

	if(confirm('해당 회원의 비밀번호를 변경하시겠습니까?')){
		//예(변경)
		var coin_user_email = document.getElementById('coin_user_email').value;
		var coin_user_pw = document.getElementById('coin_user_pw').value;
		
		$.ajax({
				type:'POST',
				url:'/admin_pw_change',
				data: { coin_user_email : coin_user_email,
						coin_user_pw : coin_user_pw },
				dataType:'json',
				success: function(data){
					if(data==0){
						alert('변경되었습니다!');
						location.href="/admin_user_info";
					}else {
						location.href="/page_error";
						alert('ERROR');
					}
				}
			});
	}else {
		//아니요(변경X)
		alert('변경이 취소되었습니다.');
	}
}

function admin_nameChange() {
	if(confirm('해당 회원의 이름을 변경하시겠습니까?')){
		//예(변경)
		var coin_user_email = document.getElementById('coin_user_email').value;
		var coin_user_name = document.getElementById('coin_user_name').value;
		
		$.ajax({
				type:'POST',
				url:'/admin_name_change',
				data: { coin_user_email : coin_user_email,
						coin_user_name : coin_user_name },
				dataType:'json',
				success: function(data){
					if(data==0){
						alert('변경되었습니다!');
						location.href="/admin_user_info";
					}else {
						location.href="/page_error";
						alert('ERROR');
					}
				}
			});
	}else {
		//아니요(변경X)
		alert('변경이 취소되었습니다.');
	}
}

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