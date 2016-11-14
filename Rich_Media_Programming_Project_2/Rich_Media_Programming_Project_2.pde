import ddf.minim.*;
import ddf.minim.analysis.*;
PShape hero, body, cape, arm1, arm2, head;
void setup() {
  
  size (700,400);
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
    
    head = createShape(ELLIPSE , 480, 320, 150,150);
    head.setFill(color(300));
    hero.addChild(head);
    
    arm1 = createShape(RECT , 400, 200, 150, 40);
    arm1.setFill(color(255));
    hero.addChild(arm1);
    
   
   
}

void draw() {
  
  shape(hero);
}