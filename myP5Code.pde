setup = function() {
  size(400, 600);
  background(255);

  // FOR loop
  for (var x = 80; x <= 240; x += 80) {
    drawFlower(x, 100);
  }

  // FOR loop with IF
  for (var i = 0; i < 3; i++) {
    var x = 100 + i * 100;
    var y = 300;
    if (i === 1) {
      x += 20; // shift one flower
    }
    drawFlower(x, y);
  }
};

// Flower shape
var drawFlower = function(a, b) {
  stroke(0);
  noFill();
  ellipse(a - 20, b, 30, 20);
  ellipse(a + 20, b, 30, 20);
  ellipse(a, b - 20, 20, 30);
  ellipse(a, b + 20, 20, 30);
  ellipse(a, b, 13, 13);
};