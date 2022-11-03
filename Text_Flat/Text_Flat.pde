//Global Variables
int appWidth, appHeight, fontSize;
float titleX, titleY, titleWidth, titleHeight, footerX, footerY, footerWidth, footerHeight, yourmomX, yourmomY, yourmomWidth, yourmomHeight;
String title = "Cyno", footer="Razor", yourmom="lol";
PFont titleFont; 
color purple=#A020F0, resetDefaultInk=#FFFFFF, red=#EA0707; //not dark mode friendly
//
size(500,600); //Portrait
//Copy Display Algorithm 
appWidth = width;
appHeight = height;
//
//Population
titleX = footerX = appWidth * 1/4;
yourmomX = appWidth * 3/4;
titleY = appHeight * 1/10;
footerY = appHeight * 8/10;
yourmomY = appHeight * 5/10;
titleWidth = footerWidth = yourmomWidth = appWidth * 1/2;
titleHeight = footerHeight = yourmomHeight = appHeight * 1/6;
//
//Text Setup, single executed code
//Fonts from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts that are available
printArray(fontList); //for listing all the possible fonts to choose from
titleFont = createFont("Segoe Print", 55); //Verified the font exists in Processing.JAVA
// Tools / Create Font / Find Font / Do not press "OK", known bug
//
//Layout or text space and typographical features 
rect(titleX, titleY, titleWidth, titleHeight);
rect(footerX, footerY, footerWidth, footerHeight);
rect(yourmomX, yourmomY, yourmomWidth, yourmomHeight);
//
//Repeated Execited Code
fill(purple);
textAlign(CENTER, TOP); //Values; [LEFT | CENTER | RIGHT ] and [ TOP | CENTER | BOTTOM | BASE ]
fontSize = 57;
textFont(titleFont, fontSize);
text(title, titleX, titleY, titleWidth, titleHeight);
fill(red);
text(footer, footerX, footerY, footerWidth, footerHeight);
text(yourmom, yourmomX, yourmomY, yourmomWidth, yourmomHeight);
fill(resetDefaultInk);
