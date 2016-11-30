import ddf.minim.*;
import ddf.minim.analysis.*;
import processing.video.*;
//----------------------------
Capture vid;

Minim minim;
AudioPlayer song;
//------------------
FFT fft;
PFont f;
PShape hero, body, cape, arm1, arm2, head;
PShape building, metro, background1, window1, window2, window3, window4, window5, window6;
//PImage img;
//--------------------------------------
void setup() {
  
  size (2100,670);
  
 f = createFont("Arial Bold",10,true);
 
  
  vid = new Capture(this,640,360,30);
  vid.start();
  
  
  building = createShape(GROUP);
  
  metro= createShape(RECT,30, 0, 690, 1970);
  metro.setFill(color(170));
  building.addChild(metro);
  
  background1 = createShape(RECT, 880, 410, 620, 400);
  background1.setFill(color(130));
  building.addChild(background1);
  
  window1 = createShape(RECT, 915, 420, 100, 50);
  window1.setFill(color(255));
  building.addChild(window1);
  
  window2 = createShape(RECT, 1100, 420, 100, 50);
  window2.setFill(color(255));
  building.addChild(window2);
 
  window3 = createShape(RECT, 915, 490, 100, 50);
  window3.setFill(color(255));
  building.addChild(window3);
  
  window4 = createShape(RECT, 1100, 490, 100, 50);
  window4.setFill(color(255));
  building.addChild(window4);
  
  window5 = createShape(RECT, 1300, 420, 100, 50);
  window5.setFill(color(255));
  building.addChild(window5);
  
  window6 = createShape(RECT, 1300, 490, 100, 50);
  window6.setFill(color(255));
  building.addChild(window6);
  //---------------------------------------
  hero = createShape(GROUP);
  
  
   cape = createShape(TRIANGLE, 100, 100, 500, 200, 150, 300);
    cape.setFill(color(150));
    hero.addChild(cape);
    
    arm2 = createShape(RECT, 450, 380, 150, 40);
   arm2.setFill(color(255));
   hero.addChild(arm2);

  body = createShape(RECT , 130, 200, 350, 170);
  body.setFill(color(105));
  hero.addChild(body);
    
    head = createShape(ELLIPSE , 500, 300, 150,150);
    head.setFill(color(255));
    hero.addChild(head);
    
    arm1 = createShape(RECT , 400, 150, 150, 40);
    arm1.setFill(color(255));
    hero.addChild(arm1);
    //--------------------------------------------------
     minim = new Minim(this);
  song = minim.loadFile("Superman Theme • John Williams.mp3");
  song.play();
  
   fft = new FFT(song.bufferSize(), song.sampleRate());
  
  println("song.bufferSize is: " + song.bufferSize());
  println("song.sampleRate is: " + song.sampleRate());
  
  //-------------------------------
     
   
//img = loadImage("clouds-that-look-like-cotton-balls_62557eb9-9d3c-43d8-9e88-8b5662829adf");

   
}

void draw() {
  background(740);
  
  shape(building);
  vid.read();
  tint(255,mouseX,mouseY);
  image(vid,40,10);
  
    textFont(f,50);
 text("Metro News", 50, 460);
 
  shape(hero, mouseX,mouseY);
  
 
 saveFrame("hero-#####.jpeg");
 

}

void stop(){
}