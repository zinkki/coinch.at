
$(document).ready(function() {
	
	var next_btn = document.getElementById('next_btn');
	next_btn.disabled= false;
	$('.font_red').hide();
})


function request1() {
	$('.font_red').hide();
	
	var name = /^[가-힣A-Za-z]{2,20}$/;
	var email=/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var phone = /^01([0|1|6|7|8|9])-?([0-9]{4,4})-?([0-9]{4})$/;
	
	var q1 = $('input[name="Q1_채굴에대한경험_얼마나?"]:checked').val();
	var q2 = $('input[name="Q2_코인챗서비스_어떤경로?"]:checked').val();
	var q3 = $('input[name="Q3_채굴기_보유현황?"]:checked').val();
	var q4 = $('input[name="Q4_그래픽카드_채굴기_필요유무"]:checked').val();
	var q5 = $('input[name="Q5_채굴기조립_필요유무"]:checked').val();
	var q6 = $('input[name="Q6_예상투자금액"]:checked').val();
	var q7 = $('input[name="Q7_코인종류_선택"]:checked').val();
	
	if(!q1){
		$('.q1').show();
	}else if(!q2){
		$('.q2').show();
	}else if(!q3){
		$('.q3').show();
	}else if(!q4){
		$('.q4').show();
	}else if(!q5){
		$('.q5').show();
	}else if(!q6){
		$('.q6').show();
	}else if(!q7){
		$('.q7').show();
	}else if(!$('#coin_user_name').val()){
		$('.err_name').show();
	}else if(!name.test($('#coin_user_name').val())){
		$('.err2_name').show();
	}else if(!$('#coin_user_phone').val()){
		$('.err_phone').show();
	}else if(!phone.test($('#coin_user_phone').val())){
		$('.err2_phone').show();
	}else if(!$('#coin_user_email').val()){
		$('.err_email').show();
	}else if(!email.test($('#coin_user_email').val())){
		$('.err2_email').show();
	}else {
	   var formData=$('#contactForm').serialize();
	   
	   $.ajax({
		url: 'https://script.google.com/macros/s/AKfycbzJW76cDbpfl7YtYdvrLjyI6Hp0FPxZjT2ahY2Hy5Fj1Thkzv5dnvn_S7hIoxHMkvlg/exec',
		type: 'POST',
		data: formData
		});
	    
	   $("[data-dismiss=modal]").trigger({ type: "click" });
	   $('#myModal2').modal('show');
	   
	   var next_btn = document.getElementById('next_btn');
	   var user_name = document.getElementById('coin_user_name');
	   var user_email = document.getElementById('coin_user_email');
	   var user_phone = document.getElementById('coin_user_phone');
	   var user_msg = document.getElementById('message');
	   
	   next_btn.disabled= true;
	   user_name.disabled = true;
	   user_email.disabled = true;
	   user_msg.disabled = true;
	   user_phone.disabled = true;
	   
	   $('.font_red').hide();
	}

}