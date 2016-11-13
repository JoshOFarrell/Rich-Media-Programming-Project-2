PShape hero, body, cape;
void setup() {
  
  size (700,400);
  hero = createShape(GROUP);
  
  
   cape = createShape(TRIANGLE, 100, 100, 500, 60, 40, 300);
    cape.setFill(color(150));
    hero.addChild(cape);
  
  body = createShape(RECT , 150, 200, 350, 270);
  body.setFill(color(105));
    hero.addChild(body);
    
   
}

void draw() {
  
  shape(hero);
}