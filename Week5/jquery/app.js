$ (document).on('ready', function(){
 


	$(".js-like-button").on('click', function (){
		if ( $(".js-like-button").hasClass('btn-success') ){
			$(".js-like-button").html("Like");
		}

		else {
			$(".js-like-button").html("Liked +1");
		}

		$(".js-like-button").toggleClass('btn-default')
		$(".js-like-button").toggleClass('btn-success')	
	});

	$(".unicorn-mode").on("click", function(){
		$("").style.color();
	});


	$(".except-me").on("click", function(){
		$("div").fadeToggle(200);
	})

});


