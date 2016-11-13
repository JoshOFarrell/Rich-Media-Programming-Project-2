PShape hero, body, cape, arm1, arm2;
void setup() {
  
  size (700,400);
  hero = createShape(GROUP);
  
  
   cape = createShape(TRIANGLE, 100, 100, 500, 200, 150, 300);
    cape.setFill(color(150));
    hero.addChild(cape);

  body = createShape(RECT , 150, 200, 350, 270);
  body.setFill(color(105));
  hero.addChild(body);
    
    arm1 = createShape(RECT , 320, 200, 150, 70);
    arm1.setFill(color(255));
    hero.addChild(arm1);
    
   arm2 = createShape(RECT, 360, 200, 150, 70);
   arm2.setFill(color(255));
   hero.addChild(arm2);
   
}

void draw() {
  
  shape(hero);
}