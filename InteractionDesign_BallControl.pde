//1102702506 Izat Shakrinal
//Assignment 1 - Interaction Design

//Mouse data - Move the mouse to move the ball
//Mouse Button - Click mouse key to the change of cursor and color
//Keyboard Data - Press any alphabet
//Coded Keys - Left/Right


float x;
float y;
float easing = 0.05;

void setup() {
  size(350,330);
 textSize(140);
}

void draw() { 
  background(194,250,15);  // set up background color
   line(330, 110, 10, 110); // Coded Keys left/right button
   if (key == CODED) { 
    if (keyCode == LEFT) {
      y = -175;
    } else if (keyCode == RIGHT) {
      y = 170;
    }
  } else {
    y = -10;
  }
  
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
   
   if (mousePressed == true) {
    fill(28,148,211); // blue
  } else {
    fill(142,40,198); // purple
  }
  rect(170, 60, y,130);
  text(key, 130, 320); // Draw at coordinate (130,320)
  ellipse(mouseX, mouseY, 20, 20); // Draw circle
  
  if (mousePressed == true) {
    cursor(HAND); // Draw cursor as hand
  } else {
    cursor(MOVE); // Draw cursor as move
  }
}




