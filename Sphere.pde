float a = 0;
void setup() {
  size(700, 700, P3D);
  noStroke();
  colorMode(RGB, 100);
//  //noFill();
//  size(700, 700, P3D);
//  strokeWeight(2);
//  //noFill();
//  colorMode(HSB,100);  // Hue, Saturation, Brightness
//  //noStroke();  
//  for (int i = 0; i < 100; i++) {
//    for (int j = 0; j < 100; j++) {
//      stroke(i, j, 0);
//      point(i, j);
//    }
//  }
}

//noStroke();
//PImage img = loadImage("texture.jpg");
//textureMode(NORMAL); 
//beginShape();
//texture(img);
//vertex(40, 80, 0, 0);
//vertex(320, 20, 1, 0);
//vertex(380, 360, 1, 1);
//vertex(160, 380, 0, 1);
//endShape();

void draw() {
  lights();
  background(0);
  translate(width / 2, height / 2);
  float f = radians(frameCount) * 2;
  rotateX(f * 0.5);
  rotateY(1);
  for (int da=5;da<180; da+=5) {
        for(int db = -180;db<180;db+=5) {
            beginShape(QUAD);
            int i = 0;
            int j = 0;
            drawVertex(da, db, i, j);
            
            i = 5;
            j = 0;
            drawVertex(da, db, i, j);

            i = 5;
            j = 5;
            drawVertex(da, db, i, j);

            i = 0;
            j = 5;
            drawVertex(da, db, i, j);

            //for i, j in ((0, 0), (5, 0), (5, 5), (0, 5)):
        }
  }
  a +=0.01; 
    
  //saveFrame("img/####.png");
}

void drawVertex(int da, int db, int i, int j) {
  float a = radians(da + i);
  float b = radians(db + j);
  float pr = 1.1 - abs(da - 90) / 90;  // shrink poles
  float w = sin(b * 20 + a * 20) * (1 + sin(f + a)) * pr;
  float R = 230 + 10 * w;  // wobbling radius
  float x = R * sin(a) * cos(b);
  float y = R * sin(a) * sin(b);
  float z = R * cos(a);
  fill(da / 180 * 256,      
       255,  
       200
       );                 // Brightness
  vertex(x, y, z);
  endShape(CLOSE);
  
}
//void drawBg() {
//  background(255);
//  pushMatrix();
//  translate(-400, -400);
//  beginShape();
//  //texture(imgbg);
//  vertex(0,     0, zbg, 0, 0);
//  vertex(0,   5760, zbg, 1, 0);
//  vertex(3840, 5760, zbg, 1, 1);
//  vertex(3840,   0, zbg, 0, 1);
//  endShape(CLOSE);
//  popMatrix();
//  zbg += zbg_c;
//  if (zbg>-100) {
//    zbg_c = -1;
//  }
//  if (zbg<-600) {
//    zbg_c = 1;
//  }
//  translate(width/2, height/2);
//  for(int i = 0; i<num; i++) {
//    pushMatrix();
//    //rotateX(frameCount*0.02);
//    //rotateZ(frameCount*0.02);
//    rotateY(a + offset * i);
//    rotateX(a*k_a + offset * i);
//    //box(200);
//    drawBoxVertices(100);
//    popMatrix();
//  }
  
//}

//void drawBoxVertices(float boxSize) {
//  //strokeWeight(1);
//  //strokeWeight(25);
//  pushMatrix();
//  //scale(hbz);
  
//  beginShape();
//  texture(img);
//  vertex( -1 * boxSize, -1 * boxSize, 1 * boxSize,0,0);
//  vertex(  1 * boxSize, -1 * boxSize, 1 * boxSize,1,0);
//  vertex(  1 * boxSize,  1 * boxSize, 1 * boxSize,1,1);
//  vertex( -1 * boxSize,  1 * boxSize, 1 * boxSize,0,1);
//  endShape(CLOSE);
  
//  beginShape();
//  texture(img);
//  vertex( -1 * boxSize, -1 * boxSize, -1 * boxSize,0,0);
//  vertex(  1 * boxSize, -1 * boxSize, -1 * boxSize,1,0);
//  vertex(  1 * boxSize,  1 * boxSize, -1 * boxSize,1,1);
//  vertex( -1 * boxSize,  1 * boxSize, -1 * boxSize,0,1);
//  endShape(CLOSE);

//  beginShape();
//  texture(img);
//  vertex(  1 * boxSize, -1 * boxSize, -1 * boxSize,0,0);
//  vertex(  1 * boxSize, -1 * boxSize, 1 * boxSize,1,0);
//  vertex(  1 * boxSize,  1 * boxSize, 1 * boxSize,1,1);
//  vertex(  1 * boxSize,  1 * boxSize, -1 * boxSize,0,1);
//  endShape(CLOSE);

//  beginShape();
//  texture(img);
//  vertex( -1 * boxSize, -1 * boxSize, -1 * boxSize,0,0);
//  vertex( -1 * boxSize, -1 * boxSize, 1 * boxSize,1,0);
//  vertex( -1 * boxSize,  1 * boxSize, 1 * boxSize,1,1);
//  vertex( -1 * boxSize,  1 * boxSize, -1 * boxSize,0,1);
//  endShape(CLOSE);

//  beginShape();
//  texture(img);
//  vertex( -1 * boxSize,  1 * boxSize, -1 * boxSize,0,0);
//  vertex( -1 * boxSize,  1 * boxSize,  1 * boxSize,1,0);
//  vertex(  1 * boxSize,  1 * boxSize,  1 * boxSize,1,1);
//  vertex(  1 * boxSize,  1 * boxSize, -1 * boxSize,0,1);
//  endShape(CLOSE);

//  beginShape();
//  texture(img);
//  vertex( -1 * boxSize,  -1 * boxSize, -1 * boxSize,0,0);
//  vertex( -1 * boxSize,  -1 * boxSize,  1 * boxSize,1,0);
//  vertex(  1 * boxSize,  -1 * boxSize,  1 * boxSize,1,1);
//  vertex(  1 * boxSize,  -1 * boxSize, -1 * boxSize,0,1);
//  endShape(CLOSE);

//  popMatrix();
  
//  //
//}
