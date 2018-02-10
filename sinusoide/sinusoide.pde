int ellipseR;
ArrayList<PVector> points;

void setup(){
  size(1200, 500);
  frameRate(60);
  
  ellipseR = width / 8;
  
  points = new ArrayList();
}

int x1, x2;
float rad;
float x, y;
float dx, cc;

float i = 0;

void draw(){
  x1 = 0;
  x2 = width;
  
  rad = radians(i);
  
  x = width - ellipseR * 3;
  y = (sin(radians(i)) * ellipseR);
  
  dx = ellipseR * cos(radians(i));
  cc = x - dx;
  
  points.add(new PVector(x, y));
  
  /*===================*/
  
    for(PVector p : points){
       p.x = p.x - 1; 
    }
  
  /*==================*/
  scale(1, -1);
  translate(0, -(height / 2));
  background(40);
  
  /*ABSISSES*/
  strokeWeight(3);
  stroke(60);
  line(x1, 0, x2, 0);
  
  /*CERCLE*/
  noFill();
  stroke(80);
  ellipse(cc, 0, ellipseR * 2, ellipseR * 2);

  /*RAYON*/
  line(cc, 0, x, y);
  
  /*Y*/
  strokeWeight(3);
  stroke(80);
  line(x, y, x, 0);
  
  /*SIN*/
  strokeWeight(4);
  stroke(255, 0, 0);
  for(PVector p : points){
    point(p.x, p.y);
  }
  
  /*X*/
  strokeWeight(5);
  stroke(132, 230, 90);
  point(x, 0);

  /*ANGLE*/
  fill(132, 230, 90);
  stroke(80);
  strokeWeight(2);
  arc(cc, 0, 40, 40, 0, rad, PIE);

  
  if(i >= 360) i = 0;
  i++;
}