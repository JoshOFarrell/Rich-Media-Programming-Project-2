import ddf.minim.*;
import ddf.minim.analysis.*;
import processing.video.*;

Capture vid;

Minim minim;
AudioPlayer song;
FFT fft;
PFont f;
PShape hero, body, cape, arm1, arm2, head;
PShape building;
void setup() {
  
  size (2100,2970);
  
 f = createFont("Arial Bold",10,true);
  
  minim = new Minim(this);
  song = minim.loadFile("Look, up in the sky! It's a bird, it's a plane, it's....mp3");
  song.play();
  
   fft = new FFT(song.bufferSize(), song.sampleRate());
  
  println("song.bufferSize is: " + song.bufferSize());
  println("song.sampleRate is: " + song.sampleRate());
  
  vid = new Capture(this,640,360,30);
  vid.start();
  
  
  building = createShape(RECT,30, 0, 690, 1970);
  building.setFill(color(170));
 
  
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

 saveFrame();
}