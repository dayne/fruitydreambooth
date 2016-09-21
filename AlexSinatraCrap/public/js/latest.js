$(document).ready(function() {
	latest();
})

function latest()
{
	$.ajax({ 
		url: "/latest_image"
	}).done(function(data) {
		$('#picture-output').html('<img src="'+data+'">');
		setTimeout(latest, 5000);
	});
}

