
var now_pw = '';
var okok1=0;
var okok2=0;
var okok3=0;

$(document).ready(function(){ 
	//PW조건: 영문,숫자,특수문자포함 8-16자
	var pw = /^(?=.*[a-zA-Z])((?=.*\d)(?=.*\W)).{8,16}$/;
	var coin_user_email = document.getElementById('coin_user_email').value;
	
	$('.check_check').hide();
	
	$.ajax({
	type:'post',
	url: '/pw_change_page_session_check',
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
	
	$.ajax({
		type:'POST',
		url:'/get_my_info',
		async:false,
		data: { coin_user_email : coin_user_email },
		dataType: 'json',
		success: function(data) {
			now_pw = data.coin_user_pw;
		}
	});
	
	//현재 사용중인 PW 일치하는지 check_check...
	$('#coin_now_pw').blur(function() {
		if($('#coin_now_pw').val() == now_pw){
			$('.okok1').show();
			$('.check_now_pw').hide();
			okok1=1;
		}else{
			$('.check_now_pw').show();
			$('.okok1').hide();
			okok1=0;
		}
	})
	
	$('#coin_new_pw').blur(function() {
		if(!pw.test($('#coin_new_pw').val())) {
			$('.check_new_pw').show();
			$('.okok2').hide();
			$('.check_double').hide();
			okok2=0;
		}else if($('#coin_new_pw').val() == now_pw) {
			$('.check_new_pw').hide();
			$('.check_double').show();
			$('.okok2').hide();
			okok2=0;
		}else{
			$('.check_new_pw').hide();
			$('.check_double').hide();
			$('.okok2').show();
			okok2=1;
		}
	})
	
	$('#coin_new_pw2').blur(function() {
		if($('#coin_new_pw').val() != $('#coin_new_pw2').val()) {
			$('.check_new_pw2').show();
			$('.okok3').hide();
			okok3=0;
		}else {
			$('.check_new_pw2').hide();
			$('.okok3').show();
			okok3=1;
		}
	})
	
})

function pw_change() {
	
	var coin_user_email = document.getElementById('coin_user_email').value;
	var coin_user_pw = document.getElementById('coin_new_pw').value;
	
	if(okok1==1 && okok2==1 && okok3==1){
		if($('#coin_new_pw').val() != $('#coin_new_pw2').val()){
			$('.check_new_pw2').show();
			$('.okok3').hide();
			return false;
		}else{
			$.ajax({
				type:'POST',
				url:'/my_pw_change',
				data: { coin_user_email : coin_user_email,
						coin_user_pw : coin_user_pw },
				dataType:'json',
				success: function(data){
					if(data==0){
						alert('비밀번호 변경이 완료되었습니다! 변경된 비밀번호로 다시 로그인해주세요.');
						location.href="/login";
					}
				}
			})
		}
	}else {
		console.log('faile...');
		return false;
	}
}

function no_change() {
	location.href="/my_info";
}