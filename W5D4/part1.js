function isPrime(number) {
  if(number < 2) {
    return false;
  } else {
    for (let i = 2; i <= number/2; i++) {
      if(number % i == 0) {
        return false;
      }
    }
  }
  return true;
}

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));
console.log(isPrime(3548563));


function firstNPrimes(n) {
  result = [];
  let number = 2;
  while (result.length < n) {
    if (isPrime(number)) {
      result.push(number);
    }
    number++;
  }
  return result;
}

function getSum(total, num) {
  return total + num;
}

function sumOfNPrimes(n) {
  if (n <= 0) {
    return 0;
  } else {
  return (firstNPrimes(n).reduce(getSum));
}
}

console.log(firstNPrimes(0));
console.log(firstNPrimes(1));
console.log(firstNPrimes(4));

console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));
