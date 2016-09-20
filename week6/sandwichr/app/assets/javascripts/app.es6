$(document).on("turbolinks:load", function (){
	// alert( "We are using Javascript now...I think");
	

	$(".butter").on("click", butterToast )

});




function butterToast (event) {
	console.log("hello im working");
	event.preventDefault();

	var btn = event.currentTarget
	var dataID = $(btn).data("sand");

	var dataID2 = $(btn).data("ingred")

	var ingredientID = {
		ingredient_id: dataID2
	}
	

	$.ajax({
		type: "POST",
		url: `http://localhost:3000/api/sandwiches/${dataID}/ingredients/add`,
		data: ingredientID,
		success: add,
		error: handleError
	});
}

function handleError(error){
			console.log("thumbs down");
			console.log(error.responseText);

		}

function add(response){
			$(".js-ingredients-list").empty();
			console.log("thumbs up");
			console.log(response);
			var ingredients = response.ingredients
			
			ingredients.forEach (function (ingredient) {
				var html = `
					<li> ${ingredient.name} </li>
				`;
				$(".js-ingredients-list").append(html);
			});
}
