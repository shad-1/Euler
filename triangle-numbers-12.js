let triNum = 1; 
let iterator = 2; 
let divisorCount = 0;

while(true) {
  computeDivisors(triNum)
  if(divisorCount < 501) {    
    //add iterator to triNum to create the next triangle number (1, 3, 6, 10, 15, 21, 28...)
    triNum += iterator; 
    //increase the iterator to use the next natural number
    iterator ++; 
  }
  else {
      console.log(`triNum: ${triNum}, divisors: ${divisorCount}`)
      break;
  }
  //if divisorCount is less than 501, it needs to be reset to test the next number
  divisorCount = 0
}


function computeDivisors(dividend) {
  let upperLimit = dividend
  //for each number below the largest divisor
  for(i = 1; i < upperLimit; i++) {
    //if it divides evenly
    if (dividend % i == 0) {
      //update the upper limit of possible remaining divisors as the quotient of the dividend and the newest sub-meridian divisor
      upperLimit = dividend / i
      //update the tally by two because divisors come in pairs
      divisorCount += 2
    }
  }
}