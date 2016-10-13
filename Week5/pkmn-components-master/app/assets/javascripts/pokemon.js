// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.PokemonComponent = class{
	constructor(pokemonUri){
		this.id = PokemonApp.idFromUri(pokemonUri);
	}
	render(){
		console.log(`PokemonComponent rendering pokemon #${this.id}`);

		$.ajax({
			type: "GET",
			url: `/api/v1/pokemon/${this.id}`,
			success: PokemonApp.showPokemonModal,
			error: PokemonApp.handleError
		});
	}
		

}

PokemonApp.showPokemonModal = function (result){
	console.log("Pokemon Info: ");
	console.log(result);

	$(".js-pokemon-modal").modal("show");
	
	console.log(`Name: ${result.name}`);
	$(".js-poke-name").html(result.name);

	console.log(`Number: ${result.pkdx_id}`);
	$(".js-poke-num").html(`#${result.pkdx_id}`);

	console.log(`Height: ${result.height}`);
	$(".js-poke-height").html(result.height);

	console.log(`HP: ${result.hp}`);
	$(".js-poke-hp").html(result.hp);

	console.log(`Weight: ${result.weight}`);
	$(".js-poke-weight").html(result.weight);



	var x = 0;
	while (x < result.types.length){
		console.log(result.types.length)
		console.log(`Type(s): ${result.types[x].name}`);
		$(".js-poke-types").html(result.types[x].name);
		x+=1;	
	}




	console.log(`Attack: ${result.attack}`);
	$(".js-poke-attack").html(result.attack);

	console.log(`Special Attack: ${result.sp_atk}`);
	$(".js-poke-spAttack").html(result.sp_atk);

	console.log(`Defense: ${result.defense}`);
	$(".js-poke-defense").html(result.defense);

	console.log(`Special Defense: ${result.sp_def}`);
	$(".js-poke-spDefense").html(result.sp_def);

	console.log(`Speed: ${result.speed}`);
	$(".js-poke-speed").html(result.speed);
	
	// console.log('Picture: ${result.image}');
	// $(".js-poke-image").html(result.image);
}

PokemonApp.handleError = function (theError){
	console.log("Pokemon Component Error");
	console.log(theError.responseText);
}

// idFromUri
// Input: "api/v1/pokemon/57/"

// Output: 57 
PokemonApp.idFromUri = function(pokemonUri){
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
}


$(document).ready(function(){

	$(".js-show-pokemon").on("click", function(theEvent){
		
		var theUri = $(theEvent.currentTarget).data("pokemon-uri");

		var pokeComponent = new PokemonApp.PokemonComponent(theUri);
		pokeComponent.render();

	});
});