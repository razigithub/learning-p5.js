class Drop {
 float x = random(width);
 float y = random (-500, -100);
 float z = random (0, 20);
 float rainspd = map(z, 0, 8, 4, 10);
 float rainlgh = map(z, 0, 20, 1, 20);
 
 void fall() {
  y = y + rainspd;
  float grav = map(z, 0, 20, 0, 0.02);
  rainspd = rainspd + grav;
  
  if (y>height){
     y = random (-500, -100);
     rainspd = map(z, 0, 20, 5, 20);
  }
 }

 void show() {
  float thick = map(z, 0, 20, 0.5, 2);
  strokeWeight(thick);
  stroke(138, 43, 226);
  line(x, y, x, y+rainlgh);
 }
}
