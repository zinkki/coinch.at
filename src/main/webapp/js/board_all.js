
$(document).ready(function() {
	
	var coin_user_adminYN = document.getElementById('coin_user_adminYN').value;
	
	if(coin_user_adminYN == 'Y'){
		$('#admin_space').show();
	}else {
		$('#admin_space').hide();
	}
})