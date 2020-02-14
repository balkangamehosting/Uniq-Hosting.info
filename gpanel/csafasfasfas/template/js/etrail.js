function Chat_Refresh(){
	$('#chat_messages ul').load('chatprocess.php?chat_refresh');	
}

function Online_Refresh(){
	$('#onlinea ul').load('chatprocess.php?online_refresh');	
}

function Clanovi_Refresh(){
	$('#clanovi ul').load('chatprocess.php?clanovi_refresh');	
}

function Online_Brojk(){
	$('.submit#klijenti').load('chatprocess.php?online_brojk');	
}

function Online_Broja(){
	$('.submit#admini').load('chatprocess.php?online_broja');	
}

function Refresh(){
	$('#rtest').fadeIn(300);
	$('#vtest').fadeIn(300);
	$('#btest').fadeIn(300);
	Chat_Refresh();
	Online_Refresh();
	Clanovi_Refresh();
	Online_Brojk();
	Online_Broja();
	$('#rtest').fadeOut(300);
	$('#vtest').fadeOut(300);
	$('#btest').fadeOut(300);
}
			
function Chat_Send(){
	$.ajax({
		type: 'POST',
		url: 'chatprocess.php?chat_send',
		data: "chat_text=" + $('#chat_text').val(),
		success: function(){
			Chat_Refresh();
		}
	});
	$('#chat_text').val('');
}	
			
function Chat_IzbrisiSve(){	
	$('#atest').fadeIn(300);		
	$.ajax({
		url: 'chatprocess.php?chat_delete_all',
		success: function(){
			Chat_Refresh();
			setTimeout(function() {
			 $('#atest').fadeOut(300);
			}, 1000 );
		}
	});
}

function Notif(){
	$('.notif').fadeOut(500);
}


setInterval('Chat_Refresh()', 2000);
setInterval('Online_Refresh()', 10000);
setInterval('Clanovi_Refresh()', 10000);
setInterval('Online_Brojk()', 10000);
setInterval('Online_Broja()', 10000);

setInterval('Notif()', 10000);

			
$(document).keydown(function(e) {
	var code = (e.keyCode) ? e.keyCode : e.which;
	if(code == 13) Chat_Send();
});   