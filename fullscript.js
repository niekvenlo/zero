function createStudent(first,last) {
  return {
    firstName: first,
    lastName: last
  }
}

var tim  = createStudent("Tim", "Garcia")
var matt = createStudent("Matt", "Lane")
var elie = createStudent("Elie", "Shop")

var students = [tim,matt,elie]

function findStudentByFirstName(search_for) {
  var yes = false;
  students.forEach(function(student){
    if (student.firstName.toLowerCase() == search_for.toLowerCase()) {
      yes = true
    }
  });
  return yes
}

console.log(findStudentByFirstName('elie')) // true
console.log(findStudentByFirstName('Elie')) // true
console.log(findStudentByFirstName('Janey')) // false
console.log(findStudentByFirstName('Janey')) // false
console.log(findStudentByFirstName('TIM')) // true
console.log(findStudentByFirstName('MMMaaaTTTtttTTT')) // false


function extractEveryThird(array) {
  let reduced = [];
  array.forEach(function(e,i) {
    if ((i+1) % 3 == 0) { reduced.push(e) }
  });
  return reduced
}

r = extractEveryThird(["a","b","c","d"])
console.log(r);


function countEvensAndOdds(array) {
  let odds = 0, evens = 0;
  array.forEach(function(e) {
    (e % 2 == 0) ? evens++ : odds++;
  });
  return { odds: odds, evens: evens }
}

console.log(countEvensAndOdds([1,2,3,4]));
console.log(countEvensAndOdds([1,2,3,4,5,6,7]));


var personObject = (function invokeRightAway(){
    var person = "Elie";
    return {
        getName: function(){
            return person;
        },
        setName: function(newName){
            person = newName;
        }
    };
})();

var personObject2 = {
    person: "Elie",
    getName: function(){
        return this.person;
    },
    setName: function(newName){
        this.person = newName;
    }
}


function log(p) {
  console.log(p);
}


function difference(a,b) {
  return (a-b)
}

log(difference(2,2));
log(difference(0,2));

function product(a,b) {
  return a*b;
}

log(product(2,2));
log(product(0,2));

function printDay(a) {
  weekdays = [null, 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
  return weekdays[a];
}

log(printDay(4));
log(printDay(41));

function lastElement(array) {
  if (array.length == 0) { return undefined; }
  return array.slice(-1);
}

log(lastElement([1,2,3,4]));
log(lastElement([]));

function numberCompare(a,b) {
  if (a > b) {
    return "First is greater";
  } else if (a < b) {
    return "Second is greater";
  } else {
    return "Equal";
  }
}

log(numberCompare(1,1)); // "Numbers are equal"
log(numberCompare(2,1)); // "First is greater"
log(numberCompare(1,2)); // "Second is greater"


function each(array,func) {
  for (let i=0; i<array.length; i++) {
    func(array[i])
  }
}

// each([1,2,3,4], function(val) { console.log(val)});
// each([1,2,3,4], function(val) { console.log(val*2)});

function map(array,func) {
  out = [];
  for (let i=0; i<array.length; i++) {
    if (func(array[i])) {
      out.push(array[i]);
    }
  }
  return out;
}

//log(map([1,2,3,4], function(val) { return val > 2; }));


function createCounter() {
  var count = 1
  return function() { return count++ }
}

counter = createCounter();
log(counter());
log(counter());


mathMod = (function(){
  function add(a,b) {
    return a+b;
  }
  function minus(a,b) {
    return a-b;
  }
  return { add: add, minus, minus }
})();

log(mathMod.add(2,3));
log(mathMod.minus(2,3));


function countDown(a) {
  let count = a;
  int = setInterval(down, 1000)
  function down() {
    (count > 0) ? log(count--) : (log('done'), clearTimeout(int))
  }
}

log(countDown(4));
