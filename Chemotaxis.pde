//declare bacteria variables here 
Bacteria [] colony;
 void setup()   
 {     
   //initialize bacteria variables here 

   size(800,500);
   frameRate(20);
   colony = new Bacteria[50];
   for (int i = 0; i < colony.length; i++){
   		colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria   
   background(170, 226, 255);

   	//Bacteria one = new Bacteria();
   	for (int i = 0; i < colony.length; i++){
    colony[i].move();
    colony[i].show();
 }  
}
 
 class Bacteria   
 {
  int bactX, bactY, bactColor, bactColor2, bactColor3;
  Bacteria(){
    bactX = (int)(Math.random()*801);
    bactY = (int)(Math.random()*501);
    bactColor = (int)(Math.random()*255);
    bactColor2 = (int)(Math.random()*255);
    bactColor3 = (int)(Math.random()*255);
  }
  void move()
  {     
   //lots of java!   
   bactX = bactX + (int)(Math.random()*7)-3;
   bactY = bactY + (int)(Math.random()*7)-3;
   // if(bactX >= 800){
   // 		bactX = bactX + (int)(Math.random()*20)-20;
   // }
   // if(bactY >= 500){
   // 		bactY = bactY + (int)(Math.random()*2)+20;
   // }
  }
  void show()
  {
  	noStroke();
    fill(bactColor,bactColor2, bactColor3);
    ellipse(bactX, bactY, 10,10);
  }
 }
