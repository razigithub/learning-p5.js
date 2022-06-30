import peasy.*;

float x = 0.01;
float y = 0;
float z = 0;

float a = 10; //alpha
//float b = 15;
float b = 16; //rho
float c = 8.0/3.0; //beta

ArrayList<PVector> points = new ArrayList<PVector>();

PeasyCam cam;

void setup (){
  size (800, 600, P3D);
  colorMode(HSB);
  cam = new PeasyCam(this, 500);
}

void draw(){
  background(0);
  //b = random(13, 28);
  float dt = 0.01;
  float dx = (a * (y - x)) * dt;
  float dy = (x * (b - z) - y) * dt;
  float dz = (x * y - c * z) * dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;
  
  points.add(new PVector(x, y, z));
  translate (0, -40, -80);
  //translate(width/2, height/2);
  scale(3);
  stroke(255);
  noFill();
  //point(x, y, z);
  float hu = 0;
  beginShape();
  for (PVector v : points) {
    stroke(hu, 255, 255);
    vertex(v.x, v.y, v.z);
    
    //PVector offset = PVector.random3D();
    //offset.mult(0.01);
    //v.add(offset);
    
    hu += 0.2;
    if (hu > 255) {
      hu = 0;
    }
  }  
  endShape();
}
  
