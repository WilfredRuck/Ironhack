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
		success: showArtists,
		error: handleError
	});

	// open(`https://api.spotify.com/v1/search?type=artist&query=${artist}`);


	function showArtists(response){
		$('.js-artist-info').empty();
		$('.js-artist-albums').empty();

		var artistsArray = response.artists.items;

		artistsArray.forEach(function(artist){
			if (artist.images != 0){
				image = artist.images[1].url
			}
			else{
				image = "http://www.designofsignage.com/application/symbol/building/image/600x600/no-photo.jpg"
			}
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
					<img src = ${image} > 

				</li>
				`;
				$('.js-artist-info').append(html);
		});

		$('.js-albums').on('click', fetchAlbums);

	}

	function handleError(error){
		console.log("thumbs down");
		console.log(error.responseText);

	}
	
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





