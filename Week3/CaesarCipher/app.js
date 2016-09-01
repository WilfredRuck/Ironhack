function caesarCipher(message){
	array = message.split();

	newArray = array.map(function (letter){
		letter = (letter.ord + 3).chr;
	});
	
	return array;
}

var encrypted = caesarCipher("brutus");

console.log(encrypted);
//=> "_orqrp"