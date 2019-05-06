//

import themidibus.*; //Import the library
import javax.sound.midi.MidiMessage;

MidiBus myBus;
PGraphics pg;

int currentAlpha = 127;

int heightA = 1080;
int heightB = 1080;
int heightC = 1080;
int heightD = 1080;
int heightE = 1080;
int heightF = 1080;
int heightG = 1080;
int heightH = 1080;
int heightI = 1080;
int heightJ = 1080;
int heightK = 1080;
int heightL = 1080;
int heightM = 1080;
int heightN = 1080;
int heightO = 1080;
int heightP = 1080;
int heightQ = 1080;
int heightR = 1080;
int heightS = 1080;
int heightT = 1080;
int heightU = 1080;
int heightV = 1080;
int heightW = 1080;
int heightX = 1080;
int heightY = 1080;
int colorA = 1080;
int colorB = 1080;
int colorC = 1080;
int colorD = 1080;
int colorE = 1080;
int colorF = 1080;
int colorG = 1080;
int colorH = 1080;
int colorI = 1080;
int colorJ = 1080;
int colorK = 1080;
int colorL = 1080;
int colorM = 1080;
int colorN = 1080;
int colorO = 1080;
int colorP = 1080;
int colorQ = 1080;
int colorR = 1080;
int colorS = 1080;
int colorT = 1080;
int colorU = 1080;
int colorV = 1080;
int colorW = 1080;
int colorX = 1080;
int colorY = 1080;
int midiDevice  = 0;

void setup() {
  size(1920, 1080);
  colorMode(HSB, 127, 127, 127, 90);
  pg = createGraphics(width, height);
  MidiBus.list(); 
  myBus = new MidiBus(this, midiDevice, 1); 
}

void draw() {
  
  pg.beginDraw();
  pg.fill(0);
  pg.background(0, currentAlpha);
  pg.endDraw();
  
  // Draw the offscreen buffer to the screen with image() 
  image(pg, 0, 0); 
  
  ellipseMode(CENTER);
  noStroke();
  fill(colorA, 127, 127, 20);
  ellipse(width*0.04-25, heightA+200, 400, 400);
  fill(colorB, 127, 127, 20);
  ellipse(width*0.08-25, heightB+200, 400, 400);
  fill(colorC, 127, 127, 20);
  ellipse(width*0.12-25, heightC+200, 400, 400);
  fill(colorD, 127, 127, 20);
  ellipse(width*0.16-25, heightD+200, 400, 400);
  fill(colorE, 127, 127, 20);
  ellipse(width*0.20-25, heightE+200, 400, 400);
  fill(colorF, 127, 127, 20);
  ellipse(width*0.24-25, heightF+200, 400, 400);
  fill(colorG, 127, 127, 20);
  ellipse(width*0.28-25, heightG+200, 400, 400);
  fill(colorH, 127, 127, 20);
  ellipse(width*0.32-25, heightH+200, 400, 400);
  fill(colorI, 127, 127, 20);
  ellipse(width*0.36-25, heightI+200, 400, 400);
  fill(colorJ, 127, 127, 20);
  ellipse(width*0.40-25, heightJ+200, 400, 400);
  fill(colorK, 127, 127, 20);
  ellipse(width*0.44-25, heightK+200, 400, 400);
  fill(colorL, 127, 127, 20);
  ellipse(width*0.48-25, heightL+200, 400, 400);
  fill(colorM, 127, 127, 20);
  ellipse(width*0.52-25, heightM+200, 400, 400);
  fill(colorN, 127, 127, 20);
  ellipse(width*0.56-25, heightN+200, 400, 400);
  fill(colorO, 127, 127, 20);
  ellipse(width*0.60-25, heightO+200, 400, 400);
  fill(colorP, 127, 127, 20);
  ellipse(width*0.64-25, heightP+200, 400, 400);
  fill(colorQ, 127, 127, 20);
  ellipse(width*0.68-25, heightQ+200, 400, 400);
  fill(colorR, 127, 127, 20);
  ellipse(width*0.72-25, heightR+200, 400, 400);
  fill(colorS, 127, 127, 20);
  ellipse(width*0.76-25, heightS+200, 400, 400);
  fill(colorT, 127, 127, 20);
  ellipse(width*0.80-25, heightT+200, 400, 400);
  fill(colorU, 127, 127, 20);
  ellipse(width*0.84-25, heightU+200, 400, 400);
  fill(colorV, 127, 127, 20);
  ellipse(width*0.88-25, heightV+200, 400, 400);
  fill(colorW, 127, 127, 20);
  ellipse(width*0.92-25, heightW+200, 400, 400);
  fill(colorX, 127, 127, 20);
  ellipse(width*0.96-25, heightX+200, 400, 400);
  fill(colorY, 127, 127, 20);
  ellipse(width*1.00-25, heightY+200, 400, 400);
}

void midiMessage(MidiMessage message, long timestamp, String bus_name) { 
  int note = (int)(message.getMessage()[1] & 0xFF) ;
  int vel = (int)(message.getMessage()[2] & 0xFF);

  println("Bus " + bus_name + ": Note "+ note + ", vel " + vel);
  
  if (note == 3) {
    currentAlpha = vel;
  }
  if (note == 48) {
    heightA = 1080-(vel*9);
    colorA = vel;
  }
  if (note == 49) {
    heightB = 1080-(vel*9);
    colorB = vel;
  }
  if (note == 50) {
    heightC = 1080-(vel*9);
    colorC = vel;
  }
  if (note == 51) {
    heightD = 1080-(vel*9);
    colorD = vel;
  }
  if (note == 52) {
    heightE = 1080-(vel*9);
    colorE = vel;
  }
  if (note == 53) {
    heightF = 1080-(vel*9);
    colorF = vel;
  }
  if (note == 54) {
    heightG = 1080-(vel*9);
    colorG = vel;
  }
  if (note == 55) {
    heightH = 1080-(vel*9);
    colorH = vel;
  }
  if (note == 56) {
    heightI = 1080-(vel*9);
    colorI = vel;
  }
  if (note == 57) {
    heightJ = 1080-(vel*9);
    colorJ = vel;
  }
  if (note == 58) {
    heightK = 1080-(vel*9);
    colorK = vel;
  }
  if (note == 59) {
    heightL = 1080-(vel*9);
    colorL = vel;
  }
  if (note == 60) {
    heightM = 1080-(vel*9);
    colorM = vel;
  }
  if (note == 61) {
    heightN = 1080-(vel*9);
    colorN = vel;
  } 
  if (note == 62) {
    heightO = 1080-(vel*9);
    colorO = vel;
  }
  if (note == 63) {
    heightP = 1080-(vel*9);
    colorP = vel;
  } 
  if (note == 64) {
    heightQ = 1080-(vel*9);
    colorQ = vel;
  }
  if (note == 65) {
    heightR = 1080-(vel*9);
    colorR = vel;
  }
  if (note == 66) {
    heightS = 1080-(vel*9);
    colorS = vel;
  }
  if (note == 67) {
    heightT = 1080-(vel*9);
    colorT = vel;
  }
  if (note == 68) {
    heightU = 1080-(vel*9);
    colorU = vel;
  }
  if (note == 69) {
    heightV = 1080-(vel*9);
    colorV = vel;
  }
  if (note == 70) {
    heightW = 1080-(vel*9);
    colorW = vel;
  }
  if (note == 71) {
    heightX = 1080-(vel*9);
    colorX = vel;
  }
  if (note == 72) {
    heightY = 1080-(vel*9);
    colorY = vel;
  }
}
