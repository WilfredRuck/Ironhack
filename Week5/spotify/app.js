$(document).ready(function(){
	$(".js-search-for-artist").on("click", findArtist);
})

function findArtist (theEvent){
	theEvent.preventDefault();

	var artist = $(".js-artist").val();
	console.log(artist);

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${artist}`,
		success: showCharacters,
		error: handleError
	});

	// open(`https://api.spotify.com/v1/search?type=artist&query=${artist}`);


	function showCharacters(response){
		$('.js-artist-info').empty();
		$('.js-artist-albums').empty();

		var charactersArray = response.artists.items;

		charactersArray.forEach(function(artist){
			if (artist.images != 0){
				var html =` 
				<li>
					<button class= "js-albums" data-blah= "${artist.id}"  
					style= "background-color: gold"> 
						
					<h2> Name: ${artist.name} </h2> 
					</button>
					<br>
					<br>
					^^^^^^^^^^^^^^^^^^^^^^^^
					<br>
					<img src = ${artist.images[1].url} > 

				</li>
				`;
				$('.js-artist-info').append(html);
			}
		});

		$('.js-albums').on('click', fetchAlbums);

	}

	function handleError(error){
		console.log("thumbs down");
		console.log(error.responseText);

	}
	
		// if ( $('.js-albums').hasClass('active') ) {
		// 	console.log("HIDE IT!");
		// }
		// else {
		// 	console.log("SHOW IT!");
		// }

		// $('.js-albums').toggleClass('active');
	
}

function fetchAlbums(theEvent){
		console.log("I was clicked!");
		var artist_id = $(theEvent.currentTarget).data("blah");
		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/artists/${artist_id}/albums`,
			success: showAlbums,
			error: errorHandler
		});
	
	function showAlbums(response){
		$('.js-artist-albums').empty();
		var albumArray = response.items;
		console.log(albumArray);

		albumArray.forEach(function(album){
			console.log(album);

				var html =` 
				<li>
					<p> Name: ${album.name} </p>  

				</li>
				`;
				$('.js-artist-albums').append(html);
		});

	}

	function errorHandler(error){
		console.log("thumbs down");
		console.log(error.responseText);

	}

}





