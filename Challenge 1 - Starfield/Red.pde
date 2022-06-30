class Red {
  float x;
  float y;
  float z;
  
  float px;
  float py;
  float pz;
  
  float re;
  float gr;
  float bl;
  
  
  Red() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
  }

  void update() {
    z = z - speed;
    if (z < 1) {
      z = width;
      x = random(-width, width);
      y = random(-height, height);  
      pz = z;
      re = random(200, 240);
      gr = random(10, 150);
      bl = random(10, 100);
    }
  }
  
  void show() {
    fill(re, gr, bl);
    noStroke();
    
    float sx = map (x/z, 0, 1, 0, width);
    float sy = map (y/z, 0, 1, 0, height);
    
    float r = map (z, 0, width, 6, 0);
    ellipse(sx, sy, r, r);
    
    float px = map (x/pz, 0, 1, 0, width);
    float py = map (y/pz, 0, 1, 0, height);
    pz = z;
    
    stroke(re, gr, bl);
    float thick = map (pz, 0, width, 4, 0); 
    strokeWeight(thick);
    line (px, py, sx, sy);  
    
  }
}
