Bacteria [] colony;

void setup(){
  size (300,300);
  colony = new Bacteria[25];
  for (int i = 0; i < colony.length; i++){
    colony[i] = new Bacteria();
  }
}

void draw(){
  background(0);
  for (int i = 0; i < colony.length; i++){
    colony[i].show();
    colony[i].move();
  }
}

class Bacteria{
  int x,y,myColor;
  Bacteria(){
    x = (int)(Math.random()*50)+125;
    y = (int)(Math.random()*50)+125;
    myColor = color(255,(int)(Math.random()*256),(int)(Math.random()*256));
  }
  
  void move(){
    x = x+(int)(Math.random()*5)-2;
    y = y+ (int)(Math.random()*5)-2;
    if (mouseX > x){
      x = x + (int)(Math.random()*5)-1;
    }
    else
      x = x + (int)(Math.random()*5)-3;
    if (mouseY > y){
      y = y + (int)(Math.random()*5)-1;
    }
    else
      y = y + (int)(Math.random()*5)-3;
  }
  
  void show(){
    fill(myColor);
    noStroke();
    rect(x,y,10,10);
    triangle(x,y,x+5,y-15,x+10,y);
    triangle(x+10,y,x+25,y+5, x+10,y+10);
    triangle(x+10,y+10,x+5,y+25,x,y+10);
    triangle(x,y+10,x-15,y+5,x,y);
  }
}
