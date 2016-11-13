PShape hero, body, cape, arm1, arm2, head;
float bx;
float by;
int heroSize = 75;
boolean overHero = false;
boolean locked = false;
float xOffset = 0.0; 
float yOffset = 0.0; 
void setup() {
  
  size (700,400);
  bx = width;
  by = height;
  
  hero = createShape(GROUP);
  
  
   cape = createShape(TRIANGLE, 100, 100, 500, 200, 150, 300);
    cape.setFill(color(150));
    hero.addChild(cape);
    
    arm2 = createShape(RECT, 450, 350, 150, 40);
   arm2.setFill(color(255));
   hero.addChild(arm2);

  body = createShape(RECT , 150, 200, 350, 270);
  body.setFill(color(105));
  hero.addChild(body);
    
    head = createShape(ELLIPSE , 480, 30, 150,150);
    head.setFill(color(300));
    hero.addChild(head);
    
    arm1 = createShape(RECT , 400, 200, 150, 40);
    arm1.setFill(color(255));
    hero.addChild(arm1);
    
   
   
}

void draw() {
  
  shape(hero);
    if (mouseX > bx-heroSize && mouseX < bx+heroSize && 
      mouseY > by-heroSize && mouseY < by+heroSize) {
    overHero = true;  
    if(!locked) { 
      stroke(255); 
      fill(153);
    } 
  } else {
    stroke(153);
    fill(153);
    overHero = false;
  }
}

void mousePressed() {
  if(overHero) { 
    locked = true; 
  } else {
    locked = false;
  }
  xOffset = mouseX-bx; 
  yOffset = mouseY-by; 

}

void mouseDragged() {
  if(locked) {
    bx = mouseX-xOffset; 
    by = mouseY-yOffset; 
  }
}

void mouseReleased() {
  locked = false;
}