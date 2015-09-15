//declare bacteria variables here 
Bacteria [] colony;
 void setup()   
 {     
   //initialize bacteria variables here 
   size(800,500);
   frameRate(20);
   colony = new Bacteria[20];
   for (int i = 0; i < colony.length; i++){
   		colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria   
   background(255);

   	//Bacteria one = new Bacteria();
   	for (int i = 0; i < colony.length; i++){
    colony[i].move();
    colony[i].show();
 }  
}
 
 class Bacteria   {
  int bactX, bactY, bactColor, bactColor2, bactColor3;
  Bacteria(){
    bactX = 400;
    bactY = 250;
    bactColor = (int)(Math.random()*255);
    bactColor2 = (int)(Math.random()*255);
    bactColor3 = (int)(Math.random()*255);
  }
  void move()
  {     
   //lots of java!   
   bactX = bactX + (int)(Math.random()*2)-1;
   bactY = bactY + (int)(Math.random()*2)-1;
   // if(bactX >= 800){
   // 		bactX = bactX + (int)(Math.random()*20)-20;
   // }
   // if(bactY >= 500){
   // 		bactY = bactY + (int)(Math.random()*2)+20;
   // }
  }
  void show(){
  	noStroke();
    fill(bactColor,bactColor2, bactColor3);
    ellipse(bactX, bactY, 20,20);
  }
 }
