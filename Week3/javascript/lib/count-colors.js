function countColors(theColor,colorArray){
	var count = 0;
	var x;
	
	colorArray.forEach(function (color){
		if (color === theColor) {
			count ++;
		}
	});
	return count;

}

module.exports = countColors;