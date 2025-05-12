PImage primera, segunda, tercera, cuarta, quinta, sexta, ultima;

PFont texto1, texto2;

float tamFont = 1;
boolean mostrar2 = false;
boolean mostrar3 = false;
boolean mostrar4 = false;
boolean mostrar5 = false;
boolean mostrar6 = false;
boolean mostrarUltima = false;

//segunda//
float text2Y = 500;
float text2Y2 = 500;
boolean empezarText2 = false;

//tercera//
float  text3F = 0;

//cuarta//
float text4X = 640;

//quinta//
float text5 = 0;

//sexta//
float text6Y = 480;
int temp6 = 0;

//ultima//
float opacidadFinal = 0;


void setup(){
  size(640,480);
  primera = loadImage("primera.jpg");
  segunda = loadImage("segunda.jpg");
  tercera = loadImage("tercera.jpg");
  cuarta = loadImage("cuarta.jpg");
  quinta = loadImage("quinta.jpg");
  sexta = loadImage("sexta.jpg");
  ultima = loadImage("ultima.jpg");
  
  
  texto1 = loadFont ("SitkaSmall-BoldItalic-35.vlw");
  texto2 = loadFont ("BookmanOldStyle-BoldItalic-35.vlw");
}


void draw(){
  background(0);
  
  if (!mostrar2) {
  
  image(primera, 0, 0, 640, 480);
  fill (255, 130, 0);
  textFont (texto1);
  textSize(tamFont);
  text ("Kamisama\nHajimemashita", 15, 290, 250, 100);
  
  if (tamFont < 30){
  tamFont = tamFont + 0.1;
  
  }else{
    mostrar2 = true;
  }
 }else if (!mostrar3){
   image(segunda, 0, 0, 640, 480);
   if (text2Y > 80) {
     text2Y = text2Y - 2;
   }
   fill (0);
   textFont (texto1);
   textSize (18);
   text ("Es una comedia romantica\ncentrada en la vida de\nNanami Momozono", 10, text2Y);
   
   if (text2Y < 100) {
     empezarText2 = true;
   }
   if (empezarText2) {
     if (text2Y2 > 150) {
       text2Y2 = text2Y2 -2;
     }
     textSize (16);
     text ("Ella es una chica normal,\ncon una vida normal,\npero en ella hay un secreto...\nEs una diosa (XD)", 10, text2Y2); 
 } 
 if (text2Y2 <= 150) {
   mostrar3 = true;
}
 
 }else if (!mostrar4){
   
   image(tercera, 0, 0, 640, 480);
   if (text3F < 255) {
     text3F = text3F + 2;
 }
 fill(0, text3F);
 textFont(texto2);
 textSize (22);
 textAlign(CENTER, CENTER);
 text("Bueno no, pero si...\nLuego que su padre la abandona,\nNanami se queda en la calle,\nahí conoce a un Dios que le\notorga su poder como diosa\ny le ofrece vivir en su hogar", 320, 240);
 
 if (text3F >= 255){
   delay (2000);
   mostrar4 = true;
 }
 
 }else if (!mostrar5){
   image(cuarta, 0, 0, 640, 480);
   textFont (texto2);
   textSize (20);
   textAlign(LEFT, CENTER);
   
   if (text4X > 15){ 
     text4X = text4X - 2;
     
   }else{
     text4X = 15;
     delay(1000);
     mostrar5 = true;
   }
   text("Ahí conoce a Tomoe, un demonio zorro que no soporta\nla idea de convivir con una humana como su diosa", text4X, 430);
   
 }else if (!mostrar6){
   image(quinta, 0, 0, 640, 480);
   
   textFont(texto2);
   textAlign(CENTER, CENTER);
   
   if (text5 < 25){
     text5 = text5 + 0.5;
   }
   
   fill(255);
   textSize(text5);
   text("Pero Nanami es astuta y se lo besa\n(no se crean, es para sellar un lazo divino)\ny con eso ahora Tomoe es su esclavo...\no algo así", 320, 240);
   
   if (text5 >= 25){
     delay(3000);
     mostrar6 = true;
   }
   
 }else if (!mostrarUltima){
   image(sexta, 0, 0, 640, 480);
   
   textFont(texto2);
   textSize(20);
   textAlign(LEFT, TOP);
   fill(255);
     
    if (text6Y > 20){
      text6Y = text6Y - 2;
      
    }else{
      if (temp6 < 120){
        temp6 = temp6 + 1;
      
    }else{
        mostrarUltima = true;
      }
    }
    text("Empiezan a tener muchas aventuras\ncon un grupo extraño de amigos para\nque Nanami aprenda a ser una diosa", 10, text6Y);
    
 }else{
   image(ultima, 0, 0, 640, 480);
   
   if (opacidadFinal < 255){
     opacidadFinal = opacidadFinal + 2;
   }
   
   fill (0, opacidadFinal);
   textFont(texto2);
   textSize(15);
   text("Y de ahí, despues de\nmuchas peleas y\ndiscusiones, se enamoran los\nprotagonista y fin...bueno no,\nfalta mas pero ya me cansé,\nChao.", 10, 140);
   
   fill(255, 130, 0, 200);
   ellipse (590, 430, 60, 60);
 }
}
 
 void mousePressed() {
   if (mostrarUltima == true){
     float distancia = dist(mouseX, mouseY, 590, 430);
     if (distancia < 30){
       tamFont = 1;
       mostrar2 = false;
       mostrar3 = false;
       mostrar4 = false;
       mostrar5 = false;
       mostrar6 = false;
       mostrarUltima = false;
       
       text2Y = 500;
       text2Y2 = 500;
       empezarText2 = false;
       text3F = 0;
       text4X = 640;
       text5 = 0;
       text6Y = 480;
       temp6 = 0;
       opacidadFinal = 0;
     }
   }
 }
