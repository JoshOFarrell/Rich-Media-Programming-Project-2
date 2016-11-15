import ddf.minim.*;
import ddf.minim.analysis.*;
import processing.video.*;

Capture vid;

Minim minim;
AudioPlayer song;
FFT fft;
PShape hero, body, cape, arm1, arm2, head, symbol;
void setup() {
  
  size (900,400);
  minim = new Minim(this);
  song = minim.loadFile("Look, up in the sky! It's a bird, it's a plane, it's....mp3");
  song.play();
  
   fft = new FFT(song.bufferSize(), song.sampleRate());
  
  println("song.bufferSize is: " + song.bufferSize());
  println("song.sampleRate is: " + song.sampleRate());
  
  vid = new Capture(this,640,360,30);
  vid.start();
  
  hero = createShape(GROUP);
  
  
   cape = createShape(TRIANGLE, 100, 100, 500, 200, 150, 300);
    cape.setFill(color(150));
    hero.addChild(cape);
    
    arm2 = createShape(RECT, 450, 380, 150, 40);
   arm2.setFill(color(255));
   hero.addChild(arm2);

  body = createShape(RECT , 130, 200, 350, 270);
  body.setFill(color(105));
  hero.addChild(body);
    
    head = createShape(ELLIPSE , 500, 320, 150,150);
    head.setFill(color(300));
    hero.addChild(head);
    
    symbol = createShape(TRIANGLE, 110, 200, 20, 40, 100, 150);
    symbol.setFill(color(805));
    hero.addChild(symbol);
    
    arm1 = createShape(RECT , 400, 200, 150, 40);
    arm1.setFill(color(255));
    hero.addChild(arm1);
    
   
   
}

void draw() {
  background(740);
  vid.read();
  tint(255,mouseX,mouseY);
  image(vid,190,180);
  shape(hero, mouseX,mouseY);

 
}