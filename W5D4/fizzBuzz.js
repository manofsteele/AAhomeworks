function fizzBuzz(array) {
  result = []
  array.forEach(el => {
    if((el % 3 == 0 || el % 5 == 0) && el % 15 != 0)
      result.push(el);
  });
  return result;
}

arr = [1, 3, 5, 7, 9, 15, 30, 27, 25, 12]
console.log(fizzBuzz(arr));
