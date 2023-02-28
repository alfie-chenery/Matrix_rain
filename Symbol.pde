class Symbol{
  float x;
  float y;
  float speed;
  int switchinterval;
  char value;
  boolean first;
  
  
  //constructor
  Symbol(float i, float j, float v, boolean f){
    x = i;
    y = j;
    speed = v;
    switchinterval = (int)random(10,30);
    first = f;
  }

  
  void display(){
    y += speed;
    if(y>height+textsize){ //height+character height
      y=0; 
    }
    
    if (frameCount % switchinterval == 0){
      value = char(12448+(int)random(96));
    }
    
    if (first==true){
      fill(150,255,180); 
    }else{
      fill(0,255,70);
    }
    text(value,x,y);
    
  }

  
}
