$(document).ready(function(){

	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-add-kanye").on("click", addKanye);
	$(".js-add-new-character").on("click", addNewCharacter);

});

function fetchCharacters(){

	$.ajax({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError
	})

	function showCharacters(response){
		var charactersArray = response;

		charactersArray.forEach(function(theCharacter){
			var html =` 
			<li>
				<h2> Name: ${theCharacter.name} </h2> 
				<h2> Occupation: ${theCharacter.occupation} </h2> 
				<h2> Weapon: ${theCharacter.weapon} </h2>
				<h2> Debt: ${theCharacter.debt} </h2>  

			</li>
			`;
			$('.js-characters-list').append(html);
			console.log(html);
		});

	}

	function handleError(error){
		console.log("thumbs down");
		console.log(error.responseText);

	}
}

// ----------------------------------------------------------------

function addKanye(response){
	var newCharacter = {
		name: "Kanye",
		occupation: "Musician",
		weapon: "Taylor Swift"
	};


	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newCharacter,
		success: updateList,
		error: handleError
	})
}
	function updateList(){

	}

	function handleError(){

	}

// ----------------------------------------------------------------

function addNewCharacter(theEvent){
	theEvent.preventDefault();
	console.log("Add New Character Click");

	var name = $(".js-name").val();
	var weapon = $(".js-weapon").val();
	var occupation = $(".js-occupation").val();

	var addCharacter = {
		name: name,
		weapon: weapon,
		occupation: occupation
	}

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: addCharacter,
		success: updateList,
		error: handleError
	});


	console.log(`Name: ${name}`);
	console.log(`Occupation: ${occupation}`);
	console.log(`Weapon: ${weapon}`);

}

function fetchCharacters(){
	console.log("Fetch Characters Click");

}

function handleError(error){
	console.log("Handle Click Errors");

}