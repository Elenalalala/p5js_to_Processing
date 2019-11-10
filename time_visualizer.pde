int x;
int y;
int c;
void setup(){
size(600,600);
rectMode(CENTER);
}
void draw(){
background(255,226,38);

int s=second();
int m=minute();
int h=hour();
int d=day();
float color1=map(m,0,59,0,255);
float color2=map(h,0,12,0,255);
float color3=map(s,0,59,255,0);
float color4=map(d,1,31,0,255);
if(mouseX< 330 && mouseX>270 && mouseY<330 && mouseY>270){
background(color1,color2,color3);
}else{
background(255);
}
for(int x=20; x<width; x+=40){
for(int y=20; y<height; y+=40){
noStroke();
fill(color1,color4,color2,color3);
ellipse(x,y,10,10);
stroke(0);
strokeWeight(10);
square(x,y,s);
stroke(255);
stroke(0);
      line(x+s/3.5,y+s/3.5,x+5,y+5);
      line(x+s/3.5,y-s/3.5,x+5, y-5);
      line(x-s/3.5,y-s/3.5,x-5, y-5);
      line(x-s/3.5,y+s/3.5,x-5, y+5);
}
}
}
