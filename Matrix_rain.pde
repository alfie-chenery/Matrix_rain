PFont font;
int textsize = 30; //above 80 looks distorted
int N;
Stream[] lines;

void setup(){
  fullScreen();
  //size(500,500);
  background(0);
  N = width/textsize;
  
  font = loadFont("MS-Gothic-80.vlw");
  textFont(font,textsize);
  
  lines = new Stream[N];
  float x=0;
  for (int i=0; i<N; i++){
    Stream s = new Stream();
    lines[i] = s;
    s.create(x);
    x+=textsize;
  }
}

void draw(){
  //background cant have alpha
  fill(0,100);
  noStroke();
  rect(0,0,width,height);
  for (Stream s : lines){
    s.render();
  }

}
