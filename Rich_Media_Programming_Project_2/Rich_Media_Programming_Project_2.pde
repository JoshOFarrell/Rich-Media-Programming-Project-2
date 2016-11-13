PShape hero, body, cape;
void setup() {
  
  size (700,400);
  hero = createShape(GROUP);
  
  body = createShape(RECT , 500, 80, 350, 200);
  body.setFill(color(105));
    hero.addChild(body);
}

void draw() {
  
  shape(hero);
}