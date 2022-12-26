
$(document).ready(function() {
	var session_email = document.getElementById('session_email').value;
	
	$.ajax({
		type:'post',
		url: '/join_success_session_check',
		data: { session_email : session_email },
		dataType: 'text',
		success : function(data) {
			if(data=="empty"){
				location.href="/page_error";
			}else {
				console.log('GOOD');
			}
		}				
	});
})