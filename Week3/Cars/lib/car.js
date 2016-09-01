"use strict";

class Car{

	constructor(name,sound) {
		this.name = name;
		this.sound = sound;
	}

	carSound() {
		console.log(`${this.name}'s car goes ${this.sound}`);
	}
}

module.exports = Car;