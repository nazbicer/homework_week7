flower b1;
import controlP5.*;
float k;
float t;
ControlP5 cp5;
ColorPicker cp;
ControlP5 xp;

void setup() {
  size(800, 800);
  b1=new flower(100);
  
  cp5=new ControlP5(this);
  
  
  cp5.addSlider("k").setPosition(10,10).setRange(0,width).setSize(200,20);
 cp5.addSlider("t").setPosition(10,35).setRange(0,height).setSize(200,20);
 cp=cp5.addColorPicker("picker").setPosition(10,60).setColorValue(color(0,0,0,255));

}

void draw() {
 background(255);
  stroke(cp.getColorValue());
  b1.setPosition(k,t);
 b1.display();
 
// b1.step();  
}