$(document).ready(function(){
	$(".js-search-for-song").on("click", findSong);

	$('.btn-play').on('click', previewSong);

})



//===========================================================================

function findSong (theEvent){
	theEvent.preventDefault();

	var song = $(".js-song").val();
	console.log(song);

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=track&query=${song}`,
		success: showSongs,
		error: handleError
	});

	// open(`https://api.spotify.com/v1/tracks/${song.id}`);


	function showSongs(response){
		$('.js-song-info').empty();
		$('.js-song-album-cover').empty();
		$('.js-song-preview').empty();
		var firstSong = response.tracks.items[0];
		console.log(response.tracks.items[0]);

		var songDetails = `<p>
			 			<b> ${firstSong.name} </b>
			 			<br>
			 			${firstSong.album.name} 
			 		</p>
		`;
		$('.js-song-info').append(songDetails);
		
		console.log(firstSong.name);
		console.log(firstSong.album.name);

		var songAlbumCover = `
			<img src=${firstSong.album.images[1].url}>
		`;
		$('.js-song-album-cover').append(songAlbumCover);	
	
		var songPreview =`
			<audio src="${firstSong.preview_url}" class = "js-player"> </audio>
		`;
		$('.js-song-preview').append(songPreview);
		
	}

	function handleError(error){
		console.log("thumbs down");
		console.log(error.responseText);

	}
	
}

function previewSong(){
	$('.btn-play').toggleClass('playing');
	
	if ( $('.btn-play').hasClass('playing') ) {
		$('.js-player').trigger('play');
		
		
	}
	else {
		$('.js-player').trigger('pause');
	}
	
	

		

}






