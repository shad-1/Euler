let start = new Date();

let largestCollatz = 0
let largestCollatzNumber = 0

	for (let n = 1; n < 1000000; n++) {
		console.log(n)
		let collatz = 0
		let mutatedN = n
		while (mutatedN > 1) {
			if (mutatedN % 2 == 0) {
				mutatedN = mutatedN / 2
			} else {
				mutatedN = 3*mutatedN + 1
			}
			collatz++
		}
		if (collatz > largestCollatz) {
			largestCollatz = collatz
			largestCollatzNumber = n
		}
	}

elapsed = (new Date() - start)/1000;

console.log(`largest Collatz Number: ${largestCollatzNumber}, collatz: ${largestCollatz} `)
console.log(`elapsed: ${elapsed} seconds`)