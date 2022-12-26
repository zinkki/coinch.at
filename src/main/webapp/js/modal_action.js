
$(document).ready(function() {
	$("input:radio[name='ch1']").prop('checked',false);
	var next_btn = document.getElementById('next_btn');
	next_btn.disabled= false;
	$('.font_red').hide();
})


function request1() {
	
	var q1 = $('input[name="ch1"]:checked').val();
	var q2 = $('input[name="ch2"]:checked').val();
	/*var q3 = $('input[name="ch3"]:checked').val();
	var q4 = $('input[name="ch4"]:checked').val();
	var q5 = $('input[name="ch5"]:checked').val();
	var q6 = $('input[name="ch6"]:checked').val();
	var q7 = $('input[name="ch7"]:checked').val();*/
	
	if(!q1){
		$('q1').show();
	}else if(!q2){
		$('q2').show();
	}else {
	    alert(q1);
	    $('#myModal2').modal('show');
	}

}
