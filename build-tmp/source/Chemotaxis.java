import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

//declare bacteria variables here 
Bacteria [] colony;
 public void setup()   
 {     
   //initialize bacteria variables here 
   size(800,500);
   frameRate(20);
   colony = new Bacteria[20];
   for (int i = 0; i < colony.length; i++){
   		colony[i] = new Bacteria();
   }
 }   
 public void draw()   
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
  public void move()
  {     
   //lots of java!   
   bactX = bactX + (int)(Math.random()*2)+1;
   bactY = bactY + (int)(Math.random()*2)+1;
   // if(bactX >= 800){
   // 		bactX = bactX + (int)(Math.random()*20)-20;
   // }
   // if(bactY >= 500){
   // 		bactY = bactY + (int)(Math.random()*2)+20;
   // }
  }
  public void show(){
  	noStroke();
    fill(bactColor,bactColor2, bactColor3);
    ellipse(bactX, bactY, 20,20);
  }
 }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
