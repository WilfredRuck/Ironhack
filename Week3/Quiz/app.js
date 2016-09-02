"use strict";


class Question {
	constructor(question){
		this.question = question;
	}

	 quiz(){
		console.log("\nAnswer: Don't ask stupid questions.");
	}
	
}

var read = require('read');

var options = {
    prompt: "What's your question?\n"
} // Our options object, the prompt is simply what will appear in the command line when read is called

read(options, displayName);
// The prompt itself, passing options, and using our callback function after input

function displayName (err, firstQuestion){
   var question1 = new Question(firstQuestion);
   question1.quiz(); 
}
// Outputs whatever the user has entered back to the console








