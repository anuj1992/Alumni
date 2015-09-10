$(function(){$('.InfoContainer').hide();})
$(document).ready(function(){


$('.aboutheding').click(function(){
	$('.InfoContainer').slideToggle('slow');
	});
	$('.msg_header').click(function(){
	$('.msg_wrapper').slideToggle('slow');
	});
		$(' .msg_close').click(function(){
			$('.msg_box').hide();
			});
		$('.user').click(function(){
			$('.msg_box').show();
			});
			
		$("textarea").keypress( 
		function(e){
			if(e.keyCode==13){
				var msg=$(this).val();
				$(this).val("");
				$("<div class='msg_rcevr'>"+msg+"</div>" ).insertBefore('.msg_insert');
			}
		});
	});