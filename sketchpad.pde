//General settings
float r = 0;
float g = 0;
float b = 0;
float br = 255;
float bg = 255;
float bb = 255;
float brushSize = 20;
//booleans
boolean lBtnBool = true;
boolean rBtnBool = false;
boolean eBtnBool = false;
boolean redBtnBool = true;
boolean greenBtnBool = false;
boolean blueBtnBool = false;
boolean bgColourBool = false;
//stroke wieght of the buttons
float clearBtnStroke = 1;
float strokeBtnRed = 1;
float strokeBtnGreen = 1;
float strokeBtnBlue = 1;
float strokeBtnL = 5.5;
float strokeBtnR = 1;
float strokeBtnE = 1;
float bgColourBtn = 1;
float bgWhiteBtn = 1;
//Button colours
float redBtnFill = 255;
float greenBtnFill = 255;
float blueBtnFill = 255;
float lineBtnFill = 255;
float recBtnFill = 255;
float ellBtnFill = 255;
//slider controler X position
float sliderBtnX = 237;
float colourSliderBtnX = 341;

void setup(){
  size(720,540);
  background(255);
}

void draw(){
//user interface bar
  fill(160);
  noStroke();
  rect(0,0,width,50);
  text("Brush Size",216,17);
//background white button
  fill(255);
  stroke(0);
  strokeWeight(bgWhiteBtn);
  rect(415,10,50,25);
  if (mouseX>415&&mouseX<465&&mouseY>10&&mouseY<35){
    bgWhiteBtn = 2;
  }else{
    bgWhiteBtn = 1;
  }
  if (mousePressed==true&&mouseX>415&&mouseX<465&&mouseY>10&&mouseY<35){
    bgWhiteBtn = 2.5;
    br = 255;
    bg = 255;
    bb = 255;
    fill(br,bg,bb);
    noStroke();
    rect(0,50,width,height);
  }
//background change button 
  fill(255);
  stroke(0);
  strokeWeight(bgColourBtn);
  rect(360,10,50,25);
//rollover on the background change button 
  if (mousePressed==false&&mouseX>360&&mouseX<410&&mouseY>10&&mouseY<35){
    bgColourBtn = 2;
  }
  if (mousePressed&&mouseX>360&&mouseX<410&&mouseY>10&&mouseY<35){
    bgColourBtn = 2.5;
    fill(r,g,b);
    noStroke();
    rect(0,50,width,height);
  }else{
    bgColourBtn = 1;
}
//brush shape button
  stroke(0);
  strokeWeight(strokeBtnR);
  fill(recBtnFill);
  rect(10,10,25,25);
  strokeWeight(strokeBtnE);
  fill(ellBtnFill);
  ellipse(56,24,27,27);
  strokeWeight(strokeBtnL);
  fill(0);
  line(75,25,105,25);
  strokeWeight(3);
  stroke(lineBtnFill);
  line(75,25,105,25); 
//rollover on the brush shape buttons
  if (lBtnBool==false){
    if (mouseX>75&&mouseX<105&&mouseY>23.5&&mouseY<36.5){
      strokeBtnL = 7.3;
      lineBtnFill = 230;
    }else{
      strokeBtnL = 6;
      lineBtnFill = 255;
    }
  }
  if (rBtnBool==false){
    if (mouseX>10&&mouseX<35&&mouseY>10&&mouseY<35){
      strokeBtnR = 1.5;
      recBtnFill = 230;
    }else{
      strokeBtnR = 1;
      recBtnFill = 255;
    }
  }
  if (eBtnBool==false){
    if (dist(mouseX,mouseY,56,24)<13.5){
      strokeBtnE = 1.5;
      ellBtnFill = 230;
    }else{
      strokeBtnE = 1;
      ellBtnFill = 255;
    }
  }
//colour button
  stroke(0);
  strokeWeight(strokeBtnRed);
  fill(redBtnFill,0,0);
  rect(115,10,25,25);
  stroke(0);
  strokeWeight(strokeBtnGreen);
  fill(0,greenBtnFill,0);
  rect(145,10,25,25);
  stroke(0);
  strokeWeight(strokeBtnBlue);
  fill(0,0,blueBtnFill);
  rect(175,10,25,25);
  if (redBtnBool==false){
    if (mouseX>115&&mouseX<140&&mouseY>10&&mouseY<35){
      strokeBtnRed = 1.5;
      redBtnFill = 230;
    }else{
      strokeBtnRed = 1;
      redBtnFill = 255;
    }
  }
  if (greenBtnBool==false){
    if (mouseX>145&&mouseX<170&&mouseY>10&&mouseY<35){
      strokeBtnGreen = 1.5;
      greenBtnFill = 230;
    }else{
      strokeBtnGreen = 1;
      greenBtnFill = 255;
    }
  }
  if (blueBtnBool==false){
    if (mouseX>175&&mouseX<200&&mouseY>10&&mouseY<35){
      strokeBtnBlue = 1.5;
      blueBtnFill = 230;
    }else{
      strokeBtnBlue = 1;
      blueBtnFill = 255;
    }
  }
//clear button
  strokeWeight(clearBtnStroke);
  if(mouseX>650&&mouseX<710&&mouseY>10&&mouseY<35){
    clearBtnStroke = 2;
  }else{
    clearBtnStroke = 1;
  }
  fill(255);
  stroke(0);
  rect(650,10,60,25);
  if(mouseX>650&&mouseY>10&&mouseX<710&&mouseY<35){
  fill(230);
  stroke(0);
  rect(650,10,60,25);
  if (mousePressed){
    if(mouseButton==LEFT){
      if (br==255&&bg==255&&bb==255){
        br = 255;
        bg = 255;
        bb = 255;
        fill(br,bg,bb);
        noStroke();
        rect(0,50,width,height);
      }
      if (br!=255||bg!=255||bb!=255){
        br = r;
        bg = g;
        bb = b;
        fill(br,bg,bb);
        noStroke();
        rect(0,50,width,height);
      }
    }
  }
  }
//brush size slider lable
  textSize(12);
  fill(0);
  text("Brush Size", 209,17);
//brush size slider
  strokeWeight(7);
  stroke(0);
  line(210,25,265,25);
  strokeWeight(3);
  stroke(150);
  line(210,25,265,25);
  strokeWeight(1.5);
  stroke(0);
  fill(210);
  ellipse(sliderBtnX,25,10,10);
//brush colour slider lable
  textSize(12);
  fill(0);
  text("Shade",300,17);
//colour slider
  strokeWeight(7);
  stroke(0);
  line(290,25,341,25);
  strokeWeight(3);
  stroke(150);
  line(290,25,341,25);
  strokeWeight(1.5);
  stroke(0);
  fill(210);
  ellipse(colourSliderBtnX,25,10,10);
//clear button lable
  textSize(15);
  fill(100);
  text("Clear", 662, 30); 
  textSize(15);
  fill(0);
  text("Clear", 663, 30); 
//brush shape button clicked or not
  if (lBtnBool==true){
    strokeBtnL = 10;
    lineBtnFill = 200;
  }
  if (rBtnBool==true){
    strokeBtnR = 3;
    recBtnFill = 200;
  }
  if (eBtnBool==true){
    strokeBtnE = 3;
    ellBtnFill = 200;
  }
  if (mouseY>50&&lBtnBool==true&&mouseButton==LEFT){
    strokeWeight(brushSize);
    stroke(r,g,b);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  if (mouseY>50&&rBtnBool==true&&mouseButton==LEFT){
    noStroke();
    fill(r,g,b);
    rect(mouseX,mouseY,brushSize,brushSize);
  }
  if (mouseY>50&&eBtnBool==true&&mouseButton==LEFT){
    noStroke();
    fill(r,g,b);
    ellipse(mouseX,mouseY,brushSize,brushSize);
  }
//brush colour button clicked or not
  if (redBtnBool==true){
    redBtnFill = 200;
    strokeBtnRed = 3;
    r = (colourSliderBtnX - 275)*5;
    g = 0;
    b = 0;
  }
  if (greenBtnBool==true){
    greenBtnFill = 200;
    strokeBtnGreen = 3;
    r = 0;
    g = (colourSliderBtnX - 275)*5;
    b = 0;
  }
  if (blueBtnBool==true){
    blueBtnFill = 200;
    strokeBtnBlue = 3;
    r = 0;
    g = 0;
    b = (colourSliderBtnX - 275)*5;
  }
}

void mousePressed(){
  //clicking clear button
  if(mouseX>650&&mouseX<710&&mouseY>10&&mouseY<35&&(mouseButton==LEFT)){
  bg = 255;
  }
//Brush shape button clicked
  if (lBtnBool==false&&mouseX>75&&mouseX<105&&mouseY>23.5&&mouseY<36.5&&(mouseButton==LEFT)){
    lBtnBool = true;
  }
  if (lBtnBool==true&&mouseX>10&&mouseX<35&&mouseY>10&&mouseY<35&&(mouseButton==LEFT)){
    rBtnBool = true;
    lBtnBool = false;
  }
  if (lBtnBool==true&&dist(mouseX,mouseY,56,24)<13.5&&(mouseButton==LEFT)){
    eBtnBool = true;
    lBtnBool = false;
  }
  if (rBtnBool==false&&mouseX>10&&mouseX<35&&mouseY>10&&mouseY<35&&(mouseButton==LEFT)){
    rBtnBool = true;
  }
  if (rBtnBool==true&&mouseX>75&&mouseX<105&&mouseY>23.5&&mouseY<36.5&&(mouseButton==LEFT)){
    lBtnBool = true;
    rBtnBool = false;
  }
  if (rBtnBool==true&&dist(mouseX,mouseY,56,24)<13.5&&(mouseButton==LEFT)){
    eBtnBool = true;
    rBtnBool = false;
  }
  if (eBtnBool==false&&dist(mouseX,mouseY,56,24)<13.5&&(mouseButton==LEFT)){
    eBtnBool = true;
  }
  if (eBtnBool==true&&mouseX>75&&mouseX<105&&mouseY>23.5&&mouseY<36.5&&(mouseButton==LEFT)){
    lBtnBool = true;
    eBtnBool = false;
  }
  if (eBtnBool==true&&mouseX>10&&mouseX<35&&mouseY>10&&mouseY<35&&(mouseButton==LEFT)){
    rBtnBool = true;
    eBtnBool = false;
  }
    //brush colour button clicked
  if (redBtnBool==false&&mouseX>115&&mouseX<140&&mouseY>10&&mouseY<35){
    redBtnBool = true;
    colourSliderBtnX = 341;
  }
  if (redBtnBool==true&&mouseX>145&&mouseX<170&&mouseY>10&&mouseY<35){
    greenBtnBool = true;
    redBtnBool = false;
    colourSliderBtnX = 341;
  }
  if (redBtnBool==true&&mouseX>175&&mouseX<200&&mouseY>10&&mouseY<35){
    blueBtnBool = true;
    redBtnBool = false;
    colourSliderBtnX = 341;
  }
  if (greenBtnBool==false&&mouseX>145&&mouseX<170&&mouseY>10&&mouseY<35){
    greenBtnBool = true;
    colourSliderBtnX = 341;
  }
  if (greenBtnBool==true&&mouseX>115&&mouseX<140&&mouseY>10&&mouseY<35){
    redBtnBool = true;
    greenBtnBool = false;
    colourSliderBtnX = 341;
  }
  if (greenBtnBool==true&&mouseX>175&&mouseX<200&&mouseY>10&&mouseY<35){
    blueBtnBool = true;
    greenBtnBool = false;
    colourSliderBtnX = 341;
  }
  if (blueBtnBool==false&&mouseX>145&&mouseX<170&&mouseY>10&&mouseY<35){
    blueBtnBool = true;
    colourSliderBtnX = 341;
  }
  if (blueBtnBool==true&&mouseX>115&&mouseX<140&&mouseY>10&&mouseY<35){
    redBtnBool = true;
    blueBtnBool = false;
    colourSliderBtnX = 341;
  }
  if (blueBtnBool==true&&mouseX>145&&mouseX<170&&mouseY>10&&mouseY<35){
    greenBtnBool = true;
    blueBtnBool = false;
    colourSliderBtnX = 341;
  }
  if (redBtnBool==true&&mouseX>115&&mouseX<140&&mouseY>10&&mouseY<35){
    colourSliderBtnX = 341;
  }
  if (greenBtnBool==true&&mouseX>145&&mouseX<170&&mouseY>10&&mouseY<35){
    colourSliderBtnX = 341;
  }
  if (blueBtnBool==true&&mouseX>175&&mouseX<200&&mouseY>10&&mouseY<35){
    colourSliderBtnX = 341;
  }
}


//brush size slider
void mouseDragged(){
  if (mousePressed&&mouseButton==LEFT&&(dist(mouseX,mouseY,sliderBtnX,25)<10)){
    sliderBtnX = mouseX;
  }if (sliderBtnX>210&&sliderBtnX<265){
    brushSize = (sliderBtnX-210);
  }if (mouseButton==LEFT&&(dist(mouseX,mouseY,sliderBtnX,25)<10)&&sliderBtnX>=265){
    sliderBtnX = 265;
  }if (mouseButton==LEFT&&(dist(mouseX,mouseY,sliderBtnX,25)<10)&&sliderBtnX<=210){
    sliderBtnX = 210;
  }
//colour slider
  if (mousePressed&&mouseButton==LEFT&&(dist(mouseX,mouseY,colourSliderBtnX,25)<10)){
    colourSliderBtnX = mouseX;  
  }if (redBtnBool==true&&colourSliderBtnX>290&&colourSliderBtnX<341){
    r = ((colourSliderBtnX-290)*5);
  }if (greenBtnBool==true&&colourSliderBtnX>290&&colourSliderBtnX<341){
    g = ((colourSliderBtnX-290)*5);
  }if (blueBtnBool==true&&colourSliderBtnX>290&&colourSliderBtnX<341){
    b = ((colourSliderBtnX-290)*5);
    
  }if (mouseButton==LEFT&&(dist(mouseX,mouseY,colourSliderBtnX,25)<10)&&colourSliderBtnX>=341){
    colourSliderBtnX = constrain(colourSliderBtnX,341,341);
    colourSliderBtnX = 341;
  }if (mouseButton==LEFT&&(dist(mouseX,mouseY,colourSliderBtnX,25)<10)&&colourSliderBtnX<=290){
    colourSliderBtnX = constrain(colourSliderBtnX,290,290);
    colourSliderBtnX = 290;
  }

}
