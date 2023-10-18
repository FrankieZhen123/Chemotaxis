Bacteria [] bob;
void setup() {
  size(500,500);
  background(255);
  frameRate(60);
  bob = new Bacteria[15];
  for (int i = 0; i < bob.length; i++){
    bob[i] = new Bacteria();
  }
}
void draw() {
  noStroke();
  background(255);
  for(int i = 0; i < bob.length; i++){
    bob[i].move();
    bob[i].show();
  }
}
class Bacteria {
  int x, y;
  color c;
  Bacteria(){
    x = 250;
    y = 250;
    c = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void move(){
    if(mouseX < x){
      x += ((int)(Math.random()*5)-1);
    } else { 
      x += ((int)(Math.random()*5)-3);
    }
    if(mouseY < y){
      y += ((int)(Math.random()*5)-1);      
    } else { 
      y += ((int)(Math.random()*5)-3);
    }
  }
  void show(){
    fill(c);
    ellipse(x,y,25,25);
    noFill();
    fill(0);
    ellipse(x-4, y-5, 7, 7);
    ellipse(x-10, y-5, 7, 7);
    rect(x-13, y, 12, 5);
  }
}
