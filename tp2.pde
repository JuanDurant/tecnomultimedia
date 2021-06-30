PFont fuente,subfuente, fuentepp, fuentess;
PImage portada,pp, ps,ms;
int px, py, pz;
void setup(){
  size(956, 544);
  fuente = createFont("Insomnia.ttf",80);
  subfuente = createFont("October Crow.ttf", 20);
  fuentepp = createFont("Insomnia.ttf",40);
  fuentess = createFont("October Crow.ttf", 35);
  textAlign(CENTER);
  portada = loadImage("PORTADA FINAL.jpg");
  pp = loadImage("PP.jpg") ;
  ps = loadImage("PS.jpg");
  ms = loadImage("MS.jpg");
  py = 100;
  px = 150;
  pz = 540;
  println(frameCount);
  
}
void draw(){
  background(0);
  //PORTADA//
  float opacidad = map(frameCount,0,200,0,255);
  float texto = map(frameCount,100,200,0,255);
  tint(255,opacidad);
  image(portada,0,py);
  fill(255,texto);
  textFont(subfuente);
  text("The Game",495, pz);
  textFont(fuente);
  text("Medium", 495,py);
  if(frameCount>=220){
  py--;
  }
   if(frameCount>=220){
  pz--;
  }
  
  //Protagonistas principales y secundarios//
  float opacidaddos = map(frameCount,230,300,0,255);
  float textodos = map(frameCount,230,300,0,255);
  tint(255,opacidaddos);
  image(pp,0,0);
  fill(255,textodos);
  textFont(fuentepp);
  text("PERSONAJES PRINCIPALES",500,50);
  textFont(fuentess);
  text("Kelly Burke como Marianne",190,100);
  text("Graham Vick como Thomas",490,150);
  text("Angeli Wall como Lily",790,100);
  
  float opacidadtres = map(frameCount,340,400,0,255);
  float textotres = map(frameCount,340,400,0,255);
  tint(255,opacidadtres);
  image(ps,0,0);
  fill(255,textotres);
  textFont(fuentepp);
  text("PRODUCCION",200,80);
  textFont(fuentepp);
  text("ESCRITOR",130,350);
  textFont(fuentess);
  text("Jacek Zieba",190,120);
  text("Wojciech Piejko",190,160);
  textFont(fuentess);
  text("Andrzej Madrzak",130,420);
  
  //Musica y Desarrollo//
  float opacidadcuatro = map(frameCount,470,500,0,255);
  float textocuatro = map(frameCount,470,500,0,255);
  tint(255,opacidadcuatro);
  image(ms,0,0);
  fill(255,textocuatro);
  textFont(fuentepp);
  text("COMPOSITORES",180,80);
  textFont(fuentepp);
  text("DESARROLLO",800,80);
  textFont(fuentess);
  text("Arkadiusz Reikowsk",160,140);
  text("Akira Yamaoka",140,200);
  textFont(fuentess);
  text("Bloober Team",830,140);
  if(frameCount >= 520){
   tint(0); 
  }
  if(frameCount >= 520){
   fill(0); 
  }


}
