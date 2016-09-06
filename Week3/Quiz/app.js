"use strict";


class Question {
	constructor(idcheck){
		this.idcheck = idcheck;
	}

	firstQuestion(){
		var id = 1;
		
		if (this.idcheck === id){
			var question1 = "What is the most popular fruit in the US? ";
			var answer1 = "apples";
			console.log("You got this part to work!");
			console.log(answer1);
		}
	}

	secondQuestion(){
		var id = 2;
		var question2 = "What is the best primary color? ";
		var answer2 = "red";
	}
	
	thirdQuestion(){
		var id = 3;
		var question3 = "What is the most popular fruit in the US? ";
		var answer3 = apples;
	}
	
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



function whichQuestion() {
	var id = 1;
	var thisId = new Question(id);
	thisId.firstQuestion();
}

whichQuestion();

// var read = require('read');

// var options = {
//     prompt: "What's your answer?  "
// } // Our options object, the prompt is simply what will appear in the command line when read is called

// read(options, giveAnswer);
// // The prompt itself, passing options, and using our callback function after input



// function giveAnswer (err, answers){
//    var answer = new Quiz(answers);
//    answer.quiz(); 
// }
// // Outputs whatever the user has entered back to the console








