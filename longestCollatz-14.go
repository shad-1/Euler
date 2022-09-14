package main

import "fmt"

func main() {
	largestCollatz := 0
	largestCollatzNumber := 0

	for n := 1; n < 1000000; n++ {
		fmt.Println(n)
		collatz := 0
		mutatedN := n
		for mutatedN > 1 {
			if mutatedN%2 == 0 {
				mutatedN = mutatedN / 2
			} else {
				mutatedN = 3*mutatedN + 1
			}
			//fmt.Print(mutatedN, " -> ")
			collatz++
		}
		if collatz > largestCollatz {
			largestCollatz = collatz
			largestCollatzNumber = n
		}
	}
	fmt.Println(largestCollatzNumber, largestCollatz)
}
