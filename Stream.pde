class Stream{
  Symbol[] characters;
  int Length;
  float speed;
  
  //constructor
  Stream(){
    int maxlength = height/textsize;
    Length = (int)random(0.2*maxlength,0.8*maxlength); //length of stream is between 30-80% of screen
    speed = random(7,15);
    characters = new Symbol[Length]; //initalize array
  }
  
  void create(float X){
    float y = random(-1000,0);
    float x = X;
    boolean first;
    
    float chance = random(1);
    if (chance<=0.3){
      first = true;
    }else{
      first = false;// 30% of time first will be true
    }
    for(int i=0; i<Length; i++){
      Symbol s = new Symbol(x,y,speed,first);
      characters[i] = s;
      y-=textsize;
      first = false; //first is only true for 1 loop itteration
    }
  }
  
  void render(){
    for(Symbol s : characters){
      s.display();
    }
  }
}
