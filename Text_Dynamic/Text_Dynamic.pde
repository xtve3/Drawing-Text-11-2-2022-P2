//Global Variables
int appWidth, appHeight, fontSize, fontSizeses;
float titleX, titleY, titleWidth, titleHeight, footerX, footerY, footerWidth, footerHeight, yourmomX, yourmomY, yourmomWidthSlashHeight;
String title = "Cyno", footer="Razor", yourmom="lol";
PFont titleFont; 
color purple=#A020F0, resetDefaultInk=#FFFFFF, red=#EA0707, green=#20EA07; //not dark mode friendly
//
void setup()
{
  size(500, 600); //Portrait
  //Copy Display Algorithm
  //Concatenation
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bruh turn your phone";
  //String orientation = ( appWidth >= appHeight ) ? ls : p;
  //println (DO, orientation);
  if ( appWidth < appHeight ) { //Declare Landscape Mode
    println(instruct);
  } else {
    //Fit CANVAS into Display Monitor
    if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geoemtry is Good to Go.");
    } else {
      println("STOP, is broken");
    }
  }
  //
  //If ORIENTATION is wrong ... feedback to change it
  //if ( orientation==p ) println(instruct);
  //
  appWidth = width;
  appHeight = height;
  //
  //Population
  titleX = footerX = appWidth * 1/4;
  yourmomX = appWidth * 1/2;
  titleY = appHeight * 1/10;
  footerY = appHeight * 8/10;
  yourmomY = appHeight * 1/2;
  titleWidth = footerWidth = appWidth * 1/2;
  titleHeight = footerHeight = appHeight * 1/6;
  yourmomWidthSlashHeight = appWidth * 1/2;
  //
  //Text Setup, single executed code
  //Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //To list all fonts available
  printArray(fontList); //For listing all possible fonts to choose from, then createFont
  titleFont = createFont("Segoe Script", 55); //Verified the font exists in Processing.JAVA
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
  //Layout or text space and typographical features
  rect(titleX, titleY, titleWidth, titleHeight);
  rect(footerX, footerY, footerWidth, footerHeight);
  circle(yourmomX, yourmomY, yourmomWidthSlashHeight);
  //
}//End setup
//
void draw() {
  //Repeated Execited Code
fill(purple);
textAlign(CENTER, TOP); //Values; [LEFT | CENTER | RIGHT ] and [ TOP | CENTER | BOTTOM | BASE ]
fontSize = 57;
textFont(titleFont, fontSize);
text(title, titleX, titleY, titleWidth, titleHeight);
fill(red);
text(footer, footerX, footerY, footerWidth, footerHeight);
fill(green);
textAlign(CENTER, CENTER);
fontSizeses = 125;
textFont(titleFont, fontSizeses);
text(yourmom, yourmomX, yourmomY, yourmomWidthSlashHeight);
fill(resetDefaultInk);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program
