int ellipseR;
ArrayList<PVector> sins;
ArrayList<PVector> coss;

void setup(){
  //size(1200, 600);
  fullScreen();
  frameRate(60);
  
  ellipseR = width / 8;
  
  sins = new ArrayList();
  coss = new ArrayList();
}

int x1, x2, y1, y2;
float rad;
float x, y;
float dx, cc;

float i = 0;

void draw(){
  x1 = 0;
  x2 = width;
  
  y1 = height +(height - 2 * ellipseR);
  y2 = - 2 * ellipseR;
  
  rad = radians(i);
  
  x = width - ellipseR * 3;
  y = (sin(radians(i)) * ellipseR);
  
  dx = ellipseR * cos(radians(i));
  cc = x - dx;
  
  sins.add(new PVector(x, y));
  coss.add(new PVector(cc, 0));
  
  /*===================*/
  
    for(PVector p : sins){
       p.x = p.x - 1; 
    }
    
    for(PVector p : coss){
       p.y = p.y + 1; 
    }
  
  /*==================*/
  scale(1, -1);
  translate(0, -(height - 2 * ellipseR));
  background(40);
  
  /*ABSISSES*/
  strokeWeight(3);
  stroke(50);
  line(x1, 0, x2, 0);
  
  /*ORDONNEES*/
  strokeWeight(3);
  stroke(50);
  line(x, y1, x, y2);
  
  /*CERCLE*/
  noFill();
  stroke(85);
  ellipse(cc, 0, ellipseR * 2, ellipseR * 2);

  /*RAYON*/
  line(cc, 0, x, y);
  
  /*Y*/
  strokeWeight(3);
  stroke(85);
  line(x, y, x, 0);
  
  /*SIN*/
  strokeWeight(4);
  stroke(255, 0, 0);
  for(PVector p : sins){
    point(p.x, p.y);
  }
  
  /*COS*/
  strokeWeight(4);
  stroke(0, 0, 255);
  for(PVector p : coss){
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