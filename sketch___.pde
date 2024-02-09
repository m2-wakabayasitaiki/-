float baseH = 50;
float basew = 5;
float armL1 = 35;
float armL2 = 20;
float cannonL = 7;
float armW1 = 4;
float armW2 = 3.5;
float cannonw = 3;
float angle0 = -90;
float angle1 = 0;
float angle2 = 230;
float angle3 = -165;
float angle4 = 0;
float dif0 = 0.8;
float dif1 = 0.8;
float dif2 = 0.8;
float dif3 = 0.5;
float dif4 = 0.4;
float dif5 = 0.4;


void setup(){
  size(1500, 1050, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  if(keyPressed){
    
    
     //rotate baseX
   if(key == 'w'){
      if(angle0 <= 0 ){
      angle0 = angle0 + dif0;
      }
    }
  if(key == 'W'){
      if(angle0 >= -90 ){
      angle0 = angle0 - dif0;
      }
    }
    
    //rotate baseZ
   if(key == 'a'){
      if(angle1 <= 180 ){
      angle1 = angle1 + dif1;
      }
    }
  if(key == 'A'){
      if(angle1 >= -180 ){
      angle1 = angle1 - dif1;
      }
    }
    if(key == 'b'){
      if(angle2 >= 0 ){
        angle2 = angle2 - dif2;
      }
    }
   if(key == 'B'){
      if(angle2 <= 230 ){
        angle2 = angle2 + dif2;
      }
    } 
    //rotate arm2
    if(key == 'C'){
      if(angle3 >= -165 ){
      angle3 = angle3 - dif3;
      }
    }
    if(key == 'c'){
      if(angle3 <= 0 ){
      angle3 = angle3 + dif3;
      }
    }
    
    //rotate cannon
     if(key == 'd'){
      if(angle4 <= 40 ){
      angle4 = angle4 + dif4;
      }
    }
    if(key == 'D'){
      if(angle4 >= -40 ){
      angle4 = angle4 - dif4;
      }
    }
    
    //return to initial point
    if (key == 'e') {
      if (angle0 >= -90) {
        angle0 = angle0 - dif5;
      } else {
        angle1 = angle1 + dif5;
      }
      if (angle1 >= 0) {
        angle1 = angle1 - dif5;
      } else {
        angle1 = angle1 + dif5;
      }
      if (angle2 <= 230) {
        angle2 = angle2 + dif5;
      } 
      if (angle3 >= -165) {
        angle3 = angle3 - dif5;
      } 
      if (angle4 >= 0) {
        angle4 = angle4 - dif5;
      } else {
        angle4 = angle4 + dif5;
      }
    }
  }
  
  //base
  rotateX(radians(angle0));
  rotateZ(radians(angle1));
  //go to center of base
  translate(0,0,baseH/2);
  fill(#4D4E50);
  box(basew,basew,baseH);
  
  //1st link
  //go to 1st joint
  translate(0,0,baseH/2-armW1/2);
  rotateX(radians(angle2));
  //go to center of 1st joint
  translate(0,armL1/2-basew/2,-0.5);
  fill(#66686A);
  box(armW1,armL1,armW1);
  
  //2nd link
  //go to 2nd joint
  translate(0,armL1/2+basew/2-armW2,0);
  rotateX(radians(-angle3));
  //go to center of 2nd joint
  translate(0,0,-armL2/2+basew/2);
  fill(#7F8283);
  box(armW2,armW2,-armL2);
  
  //cannon
  //go to cannon joint
  translate(0,0,-armL2/2);
  rotateY(radians(angle4));
  translate(0,0,-cannonL/2);
  fill(#9A9C9D);
  box(cannonw,cannonw,cannonL);

}
