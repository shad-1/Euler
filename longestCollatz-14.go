package main

import (
	"fmt"
	"time"
)

func main() {
	start := time.Now()
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
	elapsed := time.Since(start)
	fmt.Println(largestCollatzNumber, largestCollatz)
	fmt.Println("Time taken:", elapsed)
}
