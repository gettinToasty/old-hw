function printCallback(array) {
  array.forEach(function(el) {
    console.log(el);
  });
}

function titleize(array) {
  let newArray = array.map(function(el) {
    el = `Mx. ${el} Jingleheimer Schimdt`;
  });
  printCallback(newArray);
}

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!`);
};

Elephant.prototype.grow = function() {
  this.height += 12;
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function() {
  let i = Math.floor(Math.random() * (this.tricks.length + 1));
  console.log(this.tricks[i]);
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];


Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by!`);
};

herd.forEach(function(el) {
  Elephant.paradeHelper(el);
});

function dinerBreakfast(additions) {
  let order = "here's an order";
  function addItems() {
    order += additions;
  }
  return order;
}
