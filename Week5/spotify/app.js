$(document).ready(function(){
	$(".js-search-for-artist").on("click", findArtist);
})

function findArtist (theEvent){
	theEvent.preventDefault();
	console.log("I made it!")

	var artist = $(".js-artist").val();
	console.log(artist);

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${artist}`,
		success: showCharacters,
		error: handleError
	});

	console.log("I'm still here!")
	// open(`https://api.spotify.com/v1/search?type=artist&query=${artist}`);


	function showCharacters(response){
		$('.js-artist-info').empty();
		var charactersArray = response.artists.items;
		console.log(response);

		charactersArray.forEach(function(artist){
			var html =` 
			<li>
				<button class = "js-albums" style = "background-color: gold"> 
					<h2> Name: ${artist.name} </h2> 
				</button>
				<br>
				<img src = ${artist.images[1].url} > 

			</li>
			`;
			$('.js-artist-info').append(html);
			console.log(html);
		});

	}

	function handleError(error){
		console.log("thumbs down");
		console.log(error.responseText);

	}
	$('.js-albums').on('click', function () {
	
		if ( $('.js-albums').hasClass('active') ) {
			console.log("HIDE IT!");
		}
		else {
			console.log("SHOW IT!");
		}

		$('.js-albums').toggleClass('active');
	});
}




