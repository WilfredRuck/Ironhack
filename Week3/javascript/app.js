// var countColors = require("./lib/count-colors.js");

// var colorArray = ["baby blue", "red", "indigo", "teal", "black", "black","teal"];

// console.log(countColors("indigo", colorArray) === 1);
// console.log(countColors("red", colorArray) === 1);
// console.log(countColors("teal", colorArray) === 2);

// console.log(countColors("blue", colorArray) === 0);
// console.log(countColors("white", colorArray) === 0);

// capsColors = colorArray.map(function (color) {
// 	return color.toUpperCase();
// })

// console.log(capsColors);

function averageColon(num){
	
	if (num === undefined){
		return 0;
	}

	var average = 0;
	var array = numbers.split(/[\s:&]+/);
	console.log(array);

	
	array.forEach(function (number) {
		average += parseInt(number); 
	});
	
	average = average/array.length;
	
	return average;

}


var numbers = '80:70:90:100';

console.log( averageColon(numbers) === 85);  //=> true
console.log( averageColon() === 0);  //=> true
console.log( averageColon('80&70&90&100') === 85);  //=> true
console.log( averageColon('80:70&90:100') === 85);  //=> true
