int roll;
 int total;
         
 public void settings(){
   size(500, 600);
 }
 void setup()
  {
      noLoop();
  
    
  }
  void draw()
  {
      //your code here
    
     //total=0;
     background(227, 205, 250);
    
      for(int y = 50; y<500; y+=150){
       for(int x = 50; x<500; x+=150){
         // stroke(189, 125, 255);
         
         Die di = new Die(x,y);
           di.roll();
         di.show();
                 // print(roll);
         total+=roll;

       }
       
      }
      fill(0);
      textSize(40);
      text("Total sum of the Die: " + total, 42, 550);
      total=0;
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int xi;
      int yi;
     // int roll; reinitialzizes roll
      
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          xi=x;
          yi=y;
          
      }
      void roll()
      {
           roll = (int) (Math.random()*7);
           
        //your code here
      }
      void show()
      {
        
        stroke(0);
         int r = (int)(Math.random()*255)+3;
int b = (int)(Math.random()*255);
int g = (int)(Math.random()*255)+225;
        fill(r,b,g);
        rect(xi,yi,70,70,20);
         
         
        fill(0);
        if(roll==1){
          ellipse(xi+35,yi+35,13,13);
        } 
        else if(roll==2){
          ellipse(xi+17,yi+17,13,13);
          ellipse(xi+52,yi+52,13,13);
        }
        else if(roll==3){
          ellipse(xi+35,yi+35,13,13);
          ellipse(xi+17,yi+17,13,13);
          ellipse(xi+52,yi+52,13,13);
        }
        else if(roll==4){
        ellipse(xi+17,yi+17,13,13);
          ellipse(xi+52,yi+52,13,13);
           ellipse(xi+17,yi+52,13,13);
          ellipse(xi+52,yi+17,13,13);
        }
        else if(roll==5){
           ellipse(xi+17,yi+17,13,13);
          ellipse(xi+52,yi+52,13,13);
           ellipse(xi+17,yi+52,13,13);
          ellipse(xi+52,yi+17,13,13);
          ellipse(xi+35,yi+35,13,13);
        }
        else{
         ellipse(xi+17,yi+17,13,13);
          ellipse(xi+52,yi+52,13,13);
           ellipse(xi+17,yi+52,13,13);
          ellipse(xi+52,yi+17,13,13);
          ellipse(xi+35,yi+17,13,13);
          ellipse(xi+35,yi+52,13,13);
        }


        //your code here
      }
     
     
  }
