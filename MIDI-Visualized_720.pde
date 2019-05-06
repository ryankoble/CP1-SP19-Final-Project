// SOURCES
// https://docs.oracle.com/javase/tutorial/sound/overview-MIDI.html
// http://www.smallbutdigital.com/projects/themidibus/
// https://docs.oracle.com/javase/tutorial/sound/index.html
// https://github.com/sparks/themidibus
// https://www.youtube.com/watch?v=995vS_pHrUk&t=147s
// https://www.youtube.com/watch?v=bUHVP2bsz34
// https://www.youtube.com/watch?v=QdIM_OSOGNI
// https://www.instructables.com/id/Scripting-Processing-with-MIDI/

import themidibus.*; //Import the library
import javax.sound.midi.MidiMessage;

MidiBus myBus;
PGraphics pg;

int currentAlpha = 127;

int heightA = 720;
int heightB = 720;
int heightC = 720;
int heightD = 720;
int heightE = 720;
int heightF = 720;
int heightG = 720;
int heightH = 720;
int heightI = 720;
int heightJ = 720;
int heightK = 720;
int heightL = 720;
int heightM = 720;
int heightN = 720;
int heightO = 720;
int heightP = 720;
int heightQ = 720;
int heightR = 720;
int heightS = 720;
int heightT = 720;
int heightU = 720;
int heightV = 720;
int heightW = 720;
int heightX = 720;
int heightY = 720;
int colorA = 720;
int colorB = 720;
int colorC = 720;
int colorD = 720;
int colorE = 720;
int colorF = 720;
int colorG = 720;
int colorH = 720;
int colorI = 720;
int colorJ = 720;
int colorK = 720;
int colorL = 720;
int colorM = 720;
int colorN = 720;
int colorO = 720;
int colorP = 720;
int colorQ = 720;
int colorR = 720;
int colorS = 720;
int colorT = 720;
int colorU = 720;
int colorV = 720;
int colorW = 720;
int colorX = 720;
int colorY = 720;
int midiDevice  = 0;

void setup() {
  size(1280, 720);
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
  ellipse(width*0.04-25, heightA+100, 200, 200);
  fill(colorB, 127, 127, 20);
  ellipse(width*0.08-25, heightB+100, 200, 200);
  fill(colorC, 127, 127, 20);
  ellipse(width*0.12-25, heightC+100, 200, 200);
  fill(colorD, 127, 127, 20);
  ellipse(width*0.16-25, heightD+100, 200, 200);
  fill(colorE, 127, 127, 20);
  ellipse(width*0.20-25, heightE+100, 200, 200);
  fill(colorF, 127, 127, 20);
  ellipse(width*0.24-25, heightF+100, 200, 200);
  fill(colorG, 127, 127, 20);
  ellipse(width*0.28-25, heightG+100, 200, 200);
  fill(colorH, 127, 127, 20);
  ellipse(width*0.32-25, heightH+100, 200, 200);
  fill(colorI, 127, 127, 20);
  ellipse(width*0.36-25, heightI+100, 200, 200);
  fill(colorJ, 127, 127, 20);
  ellipse(width*0.40-25, heightJ+100, 200, 200);
  fill(colorK, 127, 127, 20);
  ellipse(width*0.44-25, heightK+100, 200, 200);
  fill(colorL, 127, 127, 20);
  ellipse(width*0.48-25, heightL+100, 200, 200);
  fill(colorM, 127, 127, 20);
  ellipse(width*0.52-25, heightM+100, 200, 200);
  fill(colorN, 127, 127, 20);
  ellipse(width*0.56-25, heightN+100, 200, 200);
  fill(colorO, 127, 127, 20);
  ellipse(width*0.60-25, heightO+100, 200, 200);
  fill(colorP, 127, 127, 20);
  ellipse(width*0.64-25, heightP+100, 200, 200);
  fill(colorQ, 127, 127, 20);
  ellipse(width*0.68-25, heightQ+100, 200, 200);
  fill(colorR, 127, 127, 20);
  ellipse(width*0.72-25, heightR+100, 200, 200);
  fill(colorS, 127, 127, 20);
  ellipse(width*0.76-25, heightS+100, 200, 200);
  fill(colorT, 127, 127, 20);
  ellipse(width*0.80-25, heightT+100, 200, 200);
  fill(colorU, 127, 127, 20);
  ellipse(width*0.84-25, heightU+100, 200, 200);
  fill(colorV, 127, 127, 20);
  ellipse(width*0.88-25, heightV+100, 200, 200);
  fill(colorW, 127, 127, 20);
  ellipse(width*0.92-25, heightW+100, 200, 200);
  fill(colorX, 127, 127, 20);
  ellipse(width*0.96-25, heightX+100, 200, 200);
  fill(colorY, 127, 127, 20);
  ellipse(width*1.00-25, heightY+100, 200, 200);
}

void midiMessage(MidiMessage message, long timestamp, String bus_name) { 
  int note = (int)(message.getMessage()[1] & 0xFF) ;
  int vel = (int)(message.getMessage()[2] & 0xFF);

  println("Bus " + bus_name + ": Note "+ note + ", vel " + vel);
  
  if (note == 3) {
    currentAlpha = vel;
  }
  if (note == 48) {
    heightA = 720-(vel*7);
    colorA = vel;
  }
  if (note == 49) {
    heightB = 720-(vel*7);
    colorB = vel;
  }
  if (note == 50) {
    heightC = 720-(vel*7);
    colorC = vel;
  }
  if (note == 51) {
    heightD = 720-(vel*7);
    colorD = vel;
  }
  if (note == 52) {
    heightE = 720-(vel*7);
    colorE = vel;
  }
  if (note == 53) {
    heightF = 720-(vel*7);
    colorF = vel;
  }
  if (note == 54) {
    heightG = 720-(vel*7);
    colorG = vel;
  }
  if (note == 55) {
    heightH = 720-(vel*7);
    colorH = vel;
  }
  if (note == 56) {
    heightI = 720-(vel*7);
    colorI = vel;
  }
  if (note == 57) {
    heightJ = 720-(vel*7);
    colorJ = vel;
  }
  if (note == 58) {
    heightK = 720-(vel*7);
    colorK = vel;
  }
  if (note == 59) {
    heightL = 720-(vel*7);
    colorL = vel;
  }
  if (note == 60) {
    heightM = 720-(vel*7);
    colorM = vel;
  }
  if (note == 61) {
    heightN = 720-(vel*7);
    colorN = vel;
  } 
  if (note == 62) {
    heightO = 720-(vel*7);
    colorO = vel;
  }
  if (note == 63) {
    heightP = 720-(vel*7);
    colorP = vel;
  } 
  if (note == 64) {
    heightQ = 720-(vel*7);
    colorQ = vel;
  }
  if (note == 65) {
    heightR = 720-(vel*7);
    colorR = vel;
  }
  if (note == 66) {
    heightS = 720-(vel*7);
    colorS = vel;
  }
  if (note == 67) {
    heightT = 720-(vel*7);
    colorT = vel;
  }
  if (note == 68) {
    heightU = 720-(vel*7);
    colorU = vel;
  }
  if (note == 69) {
    heightV = 720-(vel*7);
    colorV = vel;
  }
  if (note == 70) {
    heightW = 720-(vel*7);
    colorW = vel;
  }
  if (note == 71) {
    heightX = 720-(vel*7);
    colorX = vel;
  }
  if (note == 72) {
    heightY = 720-(vel*7);
    colorY = vel;
  }
}
