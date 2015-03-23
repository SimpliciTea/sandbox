void setup() {
    size(400, 400);
    for (var i = 0; i<random(4, 9); i++) {
        drawSeaweed();
    };
}

background(89, 216, 255);

var drawSeaweed = function () {
    fill(30, 209, 122);
    stroke(19, 133, 76);
    strokeWeight(2);
    var x1 = random(0, 400);
    var y1 = 400;
    var cx1 = (x1 + 100) - random(0, 200);
    var cy1 = (x1 + 100) - random(0, 200);
    var cx2 = (x1 + 100) - random(0, 200);
    var cy2 = (x1 + 100) - random(0, 200);
    var x2 = (x1 + 40) - random(0, 80);
    var y2 = random(100, 350);
    bezier(x1, y1, cx1, cy1, cx2, cy2, x2, y2);
};



var drawFish = function (centerX, centerY, bodyLength, bodyHeight, bodyColor, tailWidth, tailColor, eyeSize) {
    noStroke();
    fill(bodyColor);
    // body
    ellipse(centerX, centerY, bodyLength, bodyHeight);
    // tail
    fill(tailColor);
    var tailWidth = tailWidth;
    var tailHeight = bodyHeight/2;
    triangle(centerX-bodyLength/2, centerY,
             centerX-bodyLength/2-tailWidth, centerY-tailHeight,
             centerX-bodyLength/2-tailWidth, centerY+tailHeight);
    // eye
    fill(33, 33, 33);
    ellipse(centerX+bodyLength/4, centerY, eyeSize, eyeSize);
};

var randomColor = function () {
    var red = random(0, 255);
    var green = random(0, 255);
    var blue = random(0, 255);
    return color(red, green, blue);
};

mouseClicked = function () {
    var centerX = mouseX;
    var centerY = mouseY;
    var bodyLength = 140 - random(0, 120);
    var bodyHeight = 80 - random(0, 60);
    var bodyColor = randomColor();
    var tailWidth = 30 - random(0, 20);
    var tailColor = randomColor();
    var eyeSize = random(3, 25);
    drawFish(mouseX, mouseY, bodyLength, bodyHeight, bodyColor, tailWidth, tailColor, eyeSize);
};
    
