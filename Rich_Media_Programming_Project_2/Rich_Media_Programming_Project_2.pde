PShape hero, body, cape;
void setup() {
  
  size (700,400);
  hero = createShape(GROUP);
  
  /*body = createShape(RECT , 150, 200, 350, 270);
  body.setFill(color(105));
    hero.addChild(body);*/
    
    cape = createShape(ELLIPSE, 200, 200, 290, 270);
    cape.setFill(color(150));
    cape.addChild(cape);
}

void draw() {
  
  shape(hero);
}