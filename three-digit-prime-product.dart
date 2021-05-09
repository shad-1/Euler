void main() {
  
  
  //two digit prime 'a'
  int a = 11;
  //two digit reversable prime 'b'
  int b = 11;
  //three digit product, of which each digit is prime
  int prod; 
  
  bool isPrime(int test) {
    for(int i = test -1; i > 1; i--) {
      if(test % i == 0) {
        return false;
      }
    }
    return true;
  }
  
  bool triplePrime(int test) {
    List<String> brokenUp = test.toString().split('');
    
    if( test < 100 || test > 999) {
      return false;
    }
      
      for(int i = 0; i < brokenUp.length; i++) {
        if(isPrime(int.parse(brokenUp[i])) == false) {
         return false;
        }
      }
      return true;
  }
  
  for(int a = 11; a < 100; a++) {
    for(int b = 11; b < 100; b++){
      if(isPrime(a)){
        if(isPrime(b)){
          prod = a * b;
          if (triplePrime(prod)){
            print('a: $a, b: $b, prod: $prod');
          }
        }
      }
      
    }
  }

}
void main() {
  
  
  //two digit prime 'a'
  int a = 11;
  //two digit reversable prime 'b'
  int b = 11;
  //three digit product, of which each digit is prime
  int prod; 
  
  bool isPrime(int test) {
    for(int i = test -1; i > 1; i--) {
      if(test % i == 0) {
        return false;
      }
    }
    return true;
  }
  
  bool triplePrime(int test) {
    List<String> brokenUp = test.toString().split('');
    
    if( test < 100 || test > 999) {
      return false;
    }
      
      for(int i = 0; i < brokenUp.length; i++) {
        if(isPrime(int.parse(brokenUp[i])) == false) {
         return false;
        }
      }
      return true;
  }
  
  for(int a = 11; a < 100; a++) {
    for(int b = 11; b < 100; b++){
      if(isPrime(a)){
        if(isPrime(b)){
          prod = a * b;
          if (triplePrime(prod)){
            print('a: $a, b: $b, prod: $prod');
          }
        }
      }
      
    }
  }

}

