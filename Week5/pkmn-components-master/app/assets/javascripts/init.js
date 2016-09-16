if(window.PokemonApp === undefined){
	window.PokemonApp = {};
}

PokemonApp.begin = function (){
	console.log("Pokemon App Online!");
};

$(document).on("ready", function(){
	PokemonApp.begin();
})