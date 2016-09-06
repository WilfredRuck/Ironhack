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
			// console.log("YOU MADE IT TO THE SECOND QUESTION! YESSS!");
			// console.log(question2);
	}
	
	thirdQuestion(){
		var id = 3;

		if (this.idcheck === id){
			var question3 = "What is the best borough in New York City? ";
			var answer3 = "Queens";
			// console.log("You printed all the questions. You the man.");
			// console.log(question3);
		}
	}
	
}

class Quiz {
	constructor(a_answer){
		this.a_answer = a_answer;
	}

	 quiz(){
	 	this.a_answer[0].toUpperCase();
	 	if (this.a_answer !== "Apples"){ //create a global variable instead of inputing a value
			console.log("\nResponse: Nah b.");
			console.log("Answer: Apples");
			console.log("\n Try Again \n");
			whichQuestion();			//create something to figure out which Question we are up to so it can
										//repeat that same question
			read(options,giveAnswer);
		}

		else{ 		//create a variable that counts up a number everytime 
			  		//a right answer is given so that it can call the next question!
			  		//ex. var countQuestion = 1; 
			  		//    countQuestion += 1;
			  		//    whichQuestion(countQuestion);
			console.log("\nResponse: Yassssss!");
			console.log("\n\n Next Question! Get Ready. \n\n");
			// whichQuestion(id + 1);  <<-- don't have access to "id", can't use this
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








