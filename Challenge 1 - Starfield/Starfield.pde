Red[] reds = new Red[400];
Blue[] blues = new Blue[400];

float speed;
void setup() {
  size(800, 800);
  for (int i = 0; i < reds.length; i++){
    reds[i] = new Red();
  }
  for (int j = 0; j < blues.length; j++){
    blues[j] = new Blue();
  }
}

void draw(){
  speed = map(mouseX, 0, width, 0, 100);
  background (0);
  translate(width/2, height/2);
  rotate(360); //how to rotate
  for (int i = 0; i < reds.length; i++){
 
    reds[i].update();
    reds[i].show();
  }
  for (int j = 0; j < blues.length; j++){

    blues[j].update();
    blues[j].show();
  }
}
