String[] mousePositions = new String[10];
int index = 0;

void setup(){
  size(400, 400);
}

void draw(){
  
}

void mouseClicked(){
  mousePositions[index % 10] = "(" + mouseX + ", " + mouseY + ")";
  index++;
  
  if(index >= 10) {
    saveStrings("positioner.txt", mousePositions);
  }
}
