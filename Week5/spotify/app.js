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
				<h2> Name: ${artist.name} </h2> 
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
}