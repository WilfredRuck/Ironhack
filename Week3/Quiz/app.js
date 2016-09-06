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
			console.log(question1);
		}
	}

	secondQuestion(){
		var id = 2;

		if (this.idcheck === id)
			var question2 = "What is the best primary color? ";
			var answer2 = "red";
			console.log("YOU MADE IT TO THE SECOND QUESTION! YESSS!");
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
	 	this.a_answer[0].toUpperCase();
	 	if (this.a_answer !== "Apples"){
			console.log("\nResponse: Nah b.");
			console.log("Answer: Apples");
			console.log("\n Try Again \n");
			whichQuestion();
			read(options,giveAnswer);
		}

		else{
			console.log("\nResponse: Yassssss!");
			console.log("\n\n Next Question! Get Ready. \n\n");
			// whichQuestion(id + 1);
			// read(options,giveAnswer);
			console.log("Sike, haven't programmed this part yet\n");
		}



	}
}



function whichQuestion(number) {
	var thisId = new Question(number);
	thisId.firstQuestion();
}

whichQuestion(1);

var read = require('read');

var options = {
    prompt: "\nYour Answer:  "
} // Our options object, the prompt is simply what will appear in the command line when read is called

read(options, giveAnswer);
// The prompt itself, passing options, and using our callback function after input



function giveAnswer (err, answers){
 	var answer = new Quiz(answers);
	answer.quiz(); 
}
// Outputs whatever the user has entered back to the console








