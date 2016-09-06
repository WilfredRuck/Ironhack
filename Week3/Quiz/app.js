"use strict";


class Question {
	constructor(){
		// this.answer1 = answer1;
		// this.answer2 = answer2;
		// this.answer3 = answer3;
		// this.id = id;
	}

	// firstQuestion{
		
	// }

	// secondQuestion{

	// }
	
	// thirdQuestion{

	// }
	
}

class Quiz {
	constructor(a_answer){
		this.a_answer = a_answer;
	}

	 quiz(){
	 	if (this.a_answer)
		console.log("\nAnswer: Don't ask stupid questions.");
	}
}

var read = require('read');

var options = {
    prompt: "What's your answer?  "
} // Our options object, the prompt is simply what will appear in the command line when read is called

read(options, displayName);
// The prompt itself, passing options, and using our callback function after input

function displayName (err, answers){
   var answer = new Quiz(answers);
   answer.quiz(); 
}
// Outputs whatever the user has entered back to the console








