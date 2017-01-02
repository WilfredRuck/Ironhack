"use strict";

var fs = require("fs");

fs.readFile("lib/movies1.txt","utf8", function (theError, movieFileContents) {
	
	if (theError !== undefined){
		console.log("Don't know that file bruh...")
	}

	else {
		var moviesArray = movieFileContents.split("\n");
		console.log(moviesArray);
	}

	var read = require("read");
	var theOptions = {prompt: "What is your name?"};

	function greetUser (theError, givenName){
		console.log(`Hello, ${givenName}.`);
	
		var options2 = {prompt: "What is your DOB?"};

		

		function displayBirthday(theError, birthDate){
			console.log(`You were born on: ${birthDate}`);
		}
	
		read(options2,displayBirthday);
	}
	read(theOptions,greetUser);

})

function shout () {
	console.log("You a bum");
}gnsa

function shout2 () {
	console.log("YOU DON'T KNOW YA NAME!?");
}

function shout3 () {
	console.log("DAMN YOU SLOW");
}
setTimeout(shout,10000);
setTimeout(shout2,5000);
setTimeout(shout3,3000);


console.log("End of Program!");