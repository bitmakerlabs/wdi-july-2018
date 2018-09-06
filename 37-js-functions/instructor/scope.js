
var book = "The Hobbit";

function doStuff() {
  console.log(elephant);
  var elephant = "Dumbo";
}

function doStuff(arg1) {
  var elephant;
  console.log(elephant);
  elephant = "Dumbo";

  return elephant;
}


doStuff("Hello");
// console.log(elephant); // <<< doesn't work! out of scope.




function buildHouse(foundation, frame, furniture) {
  console.log(foundation);
}

buildHouse("Cement", "Wood");
buildHouse();

var apple = true;
var pear = false;
var items = [apple, pear];
console.log(items);
items = [apple, pear];
console.log(items);















//
