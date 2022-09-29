class Larry {

 int larryX;
 int larryY;
  Larry (){ // Tom contructor
    
    
  }
  int red = 54;
  int green = 198;
  int blue = 252;
  void drawLarry (int larryX, int larryY){
      // Værdier til at bestemme arm position
float  x1 = 225;
float  x2 = 200;
float  x3 = 350;
float  x4 = 300;
  // Værdier til at bestemme arm position
float  y1 = -60;
float  y2 = 0;
float  y3 = 80;
float  y4 = -90;


     noFill();
  stroke(255, 102, 0);
  strokeWeight (4);
  curve(larryX - x1, larryY + y1, larryX - x2, larryY + y2, larryX - x3, larryY + y3, larryX - x4, larryY + y4); // Left arm
  curve(larryX + x1, larryY + y1, larryX + x2, larryY + y2, larryX + x3, larryY + y3, larryX + x4, larryY + y4); // Right arm




  triangle (larryX + 73, larryY - 150, larryX +50, larryY - 130, larryX + 70, larryY - 205); // Right ear
  triangle (larryX - 73, larryY - 150, larryX -50, larryY - 130, larryX - 70, larryY - 205); // Left ear
    
  noStroke();
  fill (red, green, blue);
    ellipse(larryX, larryY - 100, 167, 210); // The head
  fill (red,green,blue);
  ellipseMode(CENTER);
  ellipse (larryX, larryY, 400, 200); // the body


 



  fill(0);
  arc(larryX, larryY, 200, 150, 0, PI); // Mouth
  fill(255);
  rect (larryX +50, larryY, 20, 30); // Teeth
  rect (larryX -50, larryY, 20, 30);
  fill(214, 28, 44); // Red tung
  rect (larryX-10, larryY, 20, 45); // rect tung
  arc(larryX, larryY + 41, 20, 30, 0, PI); // semi circle at the end of toung



  noFill();
  strokeWeight (1);
  stroke(0);
  ellipse (larryX, larryY - 70, 80, 40); // Nose


  fill (0);
  noStroke();
  ellipse (larryX+10, larryY -70, 12, 12); // Nose drills
  ellipse (larryX-10, larryY -70, 12, 12);

  fill (185, 0, 50);
  ellipse(larryX+42, larryY -120, 40, 70); // Eyes
  ellipse(larryX-42, larryY -120, 40, 70);

  fill (0, 190, 0); // green as main color
  ellipse(larryX+42, larryY - 120, 10, 10); // pupils
  ellipse(larryX-42, larryY - 120, 10, 10);

  fill (0, 0, 255, 40); // a shade of blue inside
  ellipse(larryX +42, larryY - 120, 7, 7); // Right inner pupils
  ellipse(larryX -42, larryY  - 120, 7, 7); // Left inner pupils

  float qy1 = larryY - 120;
  float qy2 = larryY - 98;
  float qy3 = larryY - 120;
  float qy4 = larryY - 142;

  float qx1 = larryX +57;
  float qx2 = larryX +42;
  float qx3 = larryX +27;
  float qx4 = larryX +42;


  quad(qx1, larryY - 120, qx2, larryY - 98, qx3, larryY - 120, qx4, larryY - 142); // rect thing in eyes
  quad(larryX -57, qy1, larryX -42, qy2, larryX -27, qy3, larryX -42, qy4);



  fill (81, 198, 50);
  stroke(81, 198, 50);
  strokeWeight(4);
  line ( larryX - 140, larryY + 70, larryX - 140, larryY+300); // Legs
  line ( larryX + 140, larryY + 70, larryX + 140, larryY+300);


  fill(190, 0, 0);
  stroke(0);
  ellipse(larryX-140, larryY, 60, 30); // Left shoe
  ellipse(larryX+140, larryY, 60, 30); // Right shoe
  fill(0, 200, 0);
  ellipse(larryX-140, larryY+300, 60, 30); // Rødme
  ellipse(larryX+140, larryY+300, 60, 30); // Rødme
  }
  
  void makeMoreLarrys (int larryX, int larryY, int speed){
    drawLarry(larryX, larryY);
    larryX = larryX + speed;
   
   }
  }
