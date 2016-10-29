/* @pjs preload="jurajflare.jpg"; */  
PImage img;
Cell[] cells;

final int noCells = 1000;

class Cell {
  int x, y;
  byte lastRot = 0;
  
  final int maxEatup = 200;
  
  void act() {
    if (red(pixels[(y*width)+x]) > red(img.pixels[(y*img.width)+x])) {
      pixels[(y*width)+x] = color( 
        max(red(pixels[(y*width)+x]) - maxEatup,
            red(img.pixels[(y*img.width)+x]))); 
    }
      if (lastRot % 20 < 5) {
      x++;
      y++;
      lastRot++;
      } else if (lastRot % 20 < 10) {
        x--;
        y++;
        lastRot++;
      } else if (lastRot % 20 < 15) {
        x--; y--;
        lastRot++;
      } else {
        y--; x++; lastRot++;
        if (lastRot == 19)
           lastRot = 0;
    }
    
    lastRot = (byte) random(20);
    
    if (x>width-1) x = width-1;
    if (y>height-1) y = height-1;
    if (x<0) x = 0;
    if (y<0) y = 0;
    
  }
  
  Cell() {
    x = (int)random(width);
    y = (int)random(height);
  }
}

void setup() {
 size(329,329);
 img = loadImage("jurajflare.jpg");
 cells = new Cell[noCells];
 for (int i=0; i<noCells; i++) {
    cells[i] = new Cell();
 }
 background(255);
 frameRate(1000);
}

void draw() {
 loadPixels(); 
  for (int i=0;i<noCells;i++)
  cells[i].act();
 updatePixels();
}
