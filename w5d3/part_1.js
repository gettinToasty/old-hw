function madLib(verb, adj, noun) {
  let v = verb.toUpperCase();
  let a = adj.toUpperCase();
  let n = noun.toUpperCase();
  console.log(`We shall ${v} the ${a} ${n}`);
}


function isSubstring(searchString, subString) {
  for(let i1 = 0; i1 < searchString.length; i1 ++) {
    for(let i2 = i1; i2 < searchString.length; i2 ++) {
      if(searchString.substring(i1, i2) === subString) {
        return true;
      }
    }
  }
  return false;
}

function fizzBuzz(array) {
  let newArray = [];
  array.forEach(function(el) {
    if((el%3===0 || el%5===0) && !(el%3===0 && el%5===0)) {
      newArray.push(el);
    }
  });
  return newArray;
}

function isPrime(number) {
  if(number === 2) { return true; }
  for(let i = 2; i < number; i ++) {
    if(number%2===0) { return false; }
  }
  return true;
}

function sumOfNPrimes(n) {
  let sum = 0;
  while(n>0) {
    if(isPrime(n)) {
      sum += n;
    }
    n--;
  }
  return sum;
}

function allOrNothing(mod, ...numbers) {
  numbers.forEach(function(el) {
    if(!(mod%el===0)) { return false; }
  });
  return true;
}
