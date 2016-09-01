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

	//var read = require("read");
	//read(options,callback);

})

function shout () {
	console.log("OHHHHHHYEAHHHHHHHHHH I waiteedddddd!!!!!!");
}

function shout2 () {
	console.log("I suck at waiting");
}

function shout3 () {
	console.log("I didn't wait long enough");
}
setTimeout(shout,10000);
setTimeout(shout2,5000);
setTimeout(shout3,3000);


console.log("End of Program!");