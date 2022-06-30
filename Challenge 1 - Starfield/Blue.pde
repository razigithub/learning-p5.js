class Blue {
  float x;
  float y;
  float z;

  float px;
  float py;
  float pz;

  float re;
  float gr;
  float bl;

  Blue() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    re = random(130, 255);
    gr = random(200, 240);
    bl = random(240, 255);
  }

  void update() {
    z = z - speed;
    if (z < 1) {
      z = width;
      x = random(-width, width);
      y = random(-height, height);
      pz = z;
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

    stroke(255);
    float thick = map(pz, 0, width, 4, 0);
    strokeWeight(thick);
    line (px, py, sx, sy);
  }
}
