
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
