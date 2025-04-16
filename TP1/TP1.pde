PImage miImagen;

void setup(){
  size(800,400);
  miImagen = loadImage("prueba.jpg");
}

void draw(){
  background(235);
  image(miImagen, 0, 0, 400, 400);
  
  strokeWeight(2);
  stroke(65);
  fill(50);
  
  
  beginShape(); //BASE DEL DIBUJO
  vertex(688, 328);
  vertex(610, 345);
  vertex(531, 356);
  vertex(514, 365);
  vertex(519, 372);
  vertex(543, 375);
  vertex(564, 375);
  vertex(726, 340);
  endShape(CLOSE);
  
  
  beginShape(); //CABEZA
  vertex(565, 65);
  vertex(562, 54);
  vertex(553, 57);
  vertex(548, 47);
  vertex(545, 39);
  vertex(546, 27);
  vertex(558, 19);
  vertex(569, 22);
  vertex(577, 30);
  vertex(578, 34);
  vertex(580, 39);
  vertex(573, 45);
  vertex(573, 52);
  vertex(587, 64);
  vertex(572, 71);
  endShape(CLOSE);
  
  
  beginShape(); //BRAZO PEQUEÑO
  vertex(552, 69);
  vertex(561, 88);
  vertex(573, 107);
  vertex(582, 121);
  vertex(585, 139);
  vertex(585, 157);
  vertex(584, 171);
  vertex(579, 179);
  vertex(578, 191);
  vertex(587, 197);
  vertex(591, 182);
  vertex(595, 148);
  vertex(592, 131);
  vertex(566, 77);
  vertex(560, 67);
  endShape(CLOSE);
  
  
  beginShape();//PIERNA
  vertex(690, 309);
  vertex(680, 316);
  vertex(619, 167);
  vertex(629, 162);
  endShape(CLOSE);
  triangle(665, 340, 689, 306, 697, 331);
  
  
  beginShape(); //PIERNA
  vertex(577, 332);
  vertex(565, 338);
  vertex(593, 170);
  vertex(606, 171);
  endShape(CLOSE);
  triangle(532, 358, 578, 328, 582, 350);
  
  
  beginShape(); //TORSO
  vertex(555, 67);
  vertex(552, 72);
  vertex(559, 83);
  vertex(568, 96);
  vertex(584, 124);
  vertex(593, 147);
  vertex(595, 164);
  vertex(597, 179);
  vertex(627, 165);
  vertex(608, 113);
  vertex(598, 80);
  vertex(594, 64);
  endShape(CLOSE);
 
  
  beginShape(); //brazo
  vertex(602, 64);
  vertex(606, 66);
  vertex(630, 121);
  vertex(629, 184);
  vertex(619, 195);
  vertex(613, 186);
  vertex(623, 126);
  vertex(594, 76);
  vertex(593, 65);
  endShape(CLOSE);
  
  
  //textSize(30);
  //text((400 + mouseX) + " - " + mouseY, mouseX, mouseY);
  
}
