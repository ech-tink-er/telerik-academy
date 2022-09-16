// Problem 1. Exchange if greater
// Write an if statement that takes two double variables a and b and exchanges their values if the first one is greater than the second.
// As a result print the values a and b, separated by a space.

// Examples:
// a		b			result
// 5		2			2		5
// 3		4			3		4
// 5.5		4.5			4.5		5.5

function methodOne(a, b) {
	console.log('Start: a = ' + a + ' b = ' + b);

	if(a > b) {
		a = a + b;
		b = a - b;
		a = a - b;
	}

	console.log('End: a = ' + a + ' b = ' + b + '\n');
}

function methodTwo(a, b) {
	var swap;

	console.log('Start: a = ' + a + ' b = ' + b);

	if(a > b) {
		swap = a;
		a = b;
		b = swap;
	}

	console.log('End: a = ' + a + ' b = ' + b + '\n');
}

(function main() {
	var numbers,
		examples = [
						[5, 2],
						[3, 4],
						[5.5, 4.5]
					];

	console.log('Method 1:');
	for(numbers of examples) {
		methodOne(numbers[0], numbers[1]);
	}
	console.log('Method 2:');
	for(numbers of examples) {
		methodTwo(numbers[0], numbers[1]);
	}
})();