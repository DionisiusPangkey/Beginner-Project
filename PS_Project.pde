//--------------------------------------------- Global variables
int size = 1;
int abang = #ff0000;
boolean birbies = false; //-------------------- status on false because it is not the default brush
PImage brushimg;         //-------------------- this image is the global variable because it needs to be accessed in both setup and draw
PImage img;

void setup(){

size(800,800);

//--------------------------------------------- loadimg in setup because it is loaded only once
img = loadImage("eraser.png");
brushimg = loadImage("birbies.png");


}

void draw(){
  
 // println(birbies);
 
  //-------------------------------------- RED
 fill(255, 0, 0);
 noStroke();
  ellipse(275, 60, 100, 100);
  

//--------------------------------------- GREEN
fill(0, 255, 0);
 noStroke();
  ellipse(400, 60, 100, 100);


//--------------------------------------- BLUE
fill(0, 0, 255);
 noStroke();
  ellipse(525, 60, 100, 100);
  
//--------------------------------------- ERASER img

  

image(img, 600, 20, 100, 100);
  
  // ---------------------------------------------- BRUSH TOOL
 //background(255);
 strokeWeight(1);
 fill(200);
 stroke(100);
 rect(650, 620, 100, 130);
  
  //ellipseMode(RADIUS);
  //fill(255);
   strokeWeight(size);
 stroke(0);
  ellipse(700, 700, 1, 1);
  
//------------------------------------------------------ size indicator text only  
  fill(0);
  textSize(18);
  text("size" + size, 675, 650);
  
  strokeWeight(size);
  if (mousePressed == true) {
//------------------------------------------------------- custom png brush      
    if (birbies == true) {
    image(brushimg, mouseX, mouseY, 100, 100);
    } else {
//------------------------------------------------------- pmouseX, pmouseY = drawing code
      stroke(abang); 
  line(pmouseX, pmouseY, mouseX, mouseY);  
    }
   }
   
//------------------------------------------------------- Brush size with key pressed
  if (keyPressed == true) {
    if (key == CODED){
  if (keyCode == UP){
    size += 1;
    if (size > 80) {
      size = 80;
    }
    
  } else if (keyCode == DOWN) {
    size -= 1;
    if (size < 1) {
      size = 1; 
    }
  }
  }
 }
}
//---------------------------------------------------- custom funtion (or a switch) for png brush
boolean status(boolean x){
  if (x == true){
        return false;
      } else {
        return true;
      }   
  }
  
void keyReleased() {
//----------------------------------------------------- CODED keys (non character keys) 
  if (key == CODED){
  if (keyCode == UP){
    size += 1;
    if (size > 80) {
      size = 80;
    }
    
  } else if (keyCode == DOWN) {
    size -= 1;
    if (size < 1) {
      size = 1; 
    }
  }
//----------------------------------------------------- character keys  
  } else {
    fill(#CECDCE);
    noStroke();
    rect(0, 5, 1000, 110);
    if (key == 'g' || key == 'G') {
      abang = #00ff00;
       
        fill(255, 0, 0);
         noStroke();
          ellipse(275, 60, 100, 100);
        
        strokeWeight(5);
        fill(0, 255, 0);
         stroke(0);
          ellipse(400, 60, 100, 100);
        
        fill(0, 0, 255);
         noStroke();
          ellipse(525, 60, 100, 100);
          
    } else if(key == 'b' || key == 'B'){
      abang = #0000ff;
       fill(255, 0, 0);
         noStroke();
          ellipse(275, 60, 100, 100);
        
        
        fill(0, 255, 0);
         noStroke();
          ellipse(400, 60, 100, 100);
        
         strokeWeight(5);
        fill(0, 0, 255);
         stroke(0);
          ellipse(525, 60, 100, 100);
          
    } else if(key == 'r' || key == 'R'){
      abang = #ff0000; 
      strokeWeight(5);
      fill(255, 0, 0);
       stroke(0);
        ellipse(275, 60, 100, 100);
      
      fill(0, 255, 0);
       noStroke();
        ellipse(400, 60, 100, 100);
      
       
      fill(0, 0, 255);
       noStroke();
        ellipse(525, 60, 100, 100);
        
    } else if(key == 'e' || key == 'E'){
      abang = #CECDCE;
      
      fill(255, 0, 0);
       noStroke();
        ellipse(275, 60, 100, 100);
      
      fill(0, 255, 0);
       noStroke();
        ellipse(400, 60, 100, 100);
      
       
      fill(0, 0, 255);
       noStroke();
        ellipse(525, 60, 100, 100);
        
        strokeWeight(3);
        noFill();
      stroke(0);
      ellipse(652, 60, 100, 100);
 
//---------------------------------------------- png brush switch by using status
    } else if(key == 'f' || key == 'F'){
   birbies = status(birbies);
    } 
  }
}
  
 