
var temp_auth_number=0; 
var temp_check_auth=0; //0이면 인증실패

var double_check=0; //중복확인 안했으면 기본값0

var coin_user_alarmYN='N';

$(document).ready(function() {
	
		var joinBtn = document.getElementById('joinbtn');
		joinBtn.disabled= true;
    	//session있는지 체크해야됨 (일단 비워둬)
    	
    	//check_check(유효성검사)_ font_red 일단 다 안보이게처리하기
    	$('.check_check').hide();
    	
    	//체크박스 체크(전체체크or필수체크시 버튼활성화)
     	 $("[type=checkbox][name=check]").on("change", function(){ //0
             var check = $(this).prop("checked"); //1
             
             //전체 체크
             if($(this).hasClass("allcheck")){ //2
                 $("[type=checkbox][name=check]").prop("checked", check);
                 joinBtn.disabled= false;
                 
                 if(!$("#check0").is(":checked")){
                 	joinBtn.disabled= true;
                 }
             //단일 체크
             }else{ //3
                 var all = $("[type=checkbox][name=check].allcheck");
                 var allcheck = all.prop("checked")
                 if(check != allcheck){ //3-1
                     var len = $("[type=checkbox][name=check]").not(".allcheck").length; //3-2
                     var ckLen = $("[type=checkbox][name=check]:checked").not(".allcheck").length; //3-2
                     if(len === ckLen){ //3-3
                         all.prop("checked", true);
                     }if($("#check1").is(":checked") && $("#check2").is(":checked") && $("#check3").is(":checked")){
                     	joinBtn.disabled= false;
                     }else{
                         all.prop("checked", false);
                         joinBtn.disabled= true;
                     }
                 }
                 
             }
         });
         
        var session_email = document.getElementById('session_email').value;
	
		$.ajax({
			type:'post',
			url: '/join_session_check',
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
    
 function check_double_email() {
		
		var email = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var coin_user_email = document.getElementById('coin_user_email').value;
		
		if(email.test($('#coin_user_email').val())){ //인증번호 보내기 go~Ajax!
		
		$('.check_check').hide();
		
			$.ajax({
				type:'post',
				url: '/double_email_check',
				data: { coin_user_email : coin_user_email },
				dataType: 'text',
				success : function(data) {
					if(data=='success'){
						double_check=1;
						alert("사용가능한 이메일 주소입니다");
					}else {
						double_check=0;
						alert("이미 사용중인 이메일 주소입니다. 다시 입력해주세요");
					}
				}				
			});
		}else {
			$('.check_email').show();
			$('#coin_user_email').focus();
		}
	
	}   
 
 function check_join() {
	
	//유효성검사
		var email = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var pw = /^(?=.*[a-zA-Z])((?=.*\d)(?=.*\W)).{8,16}$/;
        var birth = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
        var name = /^[가-힣A-Za-z]{2,20}$/;
        var phone = /^01([0|1|6|7|8|9])-?([0-9]{4})-?([0-9]{4})$/;
    	
    	//가입버튼 눌렀을때 event처리
    	if(!$('#coin_user_email').val()){
			$('.check_check').hide();
			$('.check_email').show();
			$('#coin_user_email').focus();
		}else if(!$('#coin_user_pw').val()){
			$('.check_check').hide();
			$('.check_pw').show();
			$('#coin_user_pw').focus();
		}else if(!$('#coin_user_pw2').val() || $('#coin_user_pw').val() != $('#coin_user_pw2').val()){
			$('.check_check').hide();
			$('.check_pw2').show();
			$('#coin_user_pw2').focus();
		}else if(!$('#coin_user_name').val()){
			$('.check_check').hide();
			$('.check_name').show();
			$('#coin_user_name').focus();
		}else if(!$('#coin_user_birth').val()){
			$('.check_check').hide();
			$('.check_birth').show();
			$('#coin_user_birth').focus();
		}else if(!$('#coin_user_phone').val()){
			$('.check_check').hide();
			$('.check_phone').show();
			$('#coin_user_phone').focus();
		}else if(!$('#check1').is(':checked')){
			$('.check_check').hide();
			$('.check_check_box').show();
			$('#check1').focus();
		}else if(!$('#check2').is(':checked')){
			$('.check_check').hide();
			$('.checcheck_check_boxk_pw').show();
			$('#check2').focus();
		}else if(!$('#check3').is(':checked')){
			$('.check_check').hide();
			$('.check_check_box').show();
			$('#check3').focus();
		}else if(!$('#auth_number').val()){
			$('.check_check').hide();
			$('.check_auth_number').show();
			$('#auth_number').focus();
		}else if($('#auth_number').val().length < 4){
			$('.check_check').hide();
			$('.check_auth_number').show();
			$('#auth_number').focus();
		}else if(!email.test($('#coin_user_email').val())){
			$('.check_check').hide();
			$('.check_email').show();
			$('#coin_user_email').focus();
		}else if(!pw.test($('#coin_user_pw').val())){
			$('.check_check').hide();
			$('.check_pw').show();
			$('#coin_user_pw').focus();
		}else if(!name.test($('#coin_user_name').val())){
			$('.check_check').hide();
			$('.check_name').show();
			$('#coin_user_name').focus();
		}else if(!birth.test($('#coin_user_birth').val())){
			$('.check_check').hide();
			$('.check_birth').show();
			$('#coin_user_birth').focus();
		}else if(!phone.test($('#coin_user_phone').val())){
			$('.check_check').hide();
			$('.check_phone').show();
			$('#coin_user_phone').focus();
		}else if(temp_auth_number != $('#auth_number').val()){
			$('.check_check').hide();
			$('.check_auth_number').show();
			$('#auth_number').focus();
		}else if(double_check == 0){
			$('.check_check').hide();
			$('.check_double_email').show();
			$('#coin_user_email').focus();
		}else{
			if($('#check4').is(':checked')) { //알림설정!YES or NO
				coin_user_alarmYN='Y';
			}
			$('.check_check').hide();
			
			var coin_user_email = document.getElementById('coin_user_email').value;
			var coin_user_pw = document.getElementById('coin_user_pw').value;
			var coin_user_name = document.getElementById('coin_user_name').value;
			var coin_user_birth = document.getElementById('coin_user_birth').value;
			var coin_user_phone = document.getElementById('coin_user_phone').value;
			
			$.ajax({
				type:'POST',
				url:'/join_ok',
				data: { coin_user_email : coin_user_email,
						coin_user_pw : coin_user_pw,
						coin_user_name : coin_user_name,
						coin_user_birth : coin_user_birth,
						coin_user_phone : coin_user_phone,
						coin_user_alarmYN :coin_user_alarmYN
					   },
				dataType:'text',
				success : function(data) {
					if(data=='ok'){
						alert(coin_user_email + " 회원가입 완료 되었습니다.");
						location.href='/join_success';
					}else {
						alert("ERROR....");
					}
				}
			});
			
			
			
		}
    	
    }
    
    
    function send_auth_number() {
		
		var phone = /^01([0|1|6|7|8|9])-?([0-9]{4,4})-?([0-9]{4})$/;
		var coin_user_phone = document.getElementById('coin_user_phone').value;
	
		$.ajax({
			type:'POST',
			url: '/double_phone_check',
			data: { coin_user_phone : coin_user_phone },
			dataType: 'text',
			success : function(data) {
				if(data=='success') {
					$('.check_check').hide();
					if(phone.test($('#coin_user_phone').val())){
						$.ajax({
							type:'post',
							url: '/join_auth_num',
							data: { coin_user_phone : coin_user_phone },
							dataType: 'text',
							success : function(data) {
							alert('인증번호가 전송되었습니다.');
							temp_auth_number=data;
							}					
						});
					}
				}else {
					$('#coin_user_phone').focus();
					$('.check_phone_double').show();
					return false;
				}
			}
		});
	}
	
	
	
	
	
	