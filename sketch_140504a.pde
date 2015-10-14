import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioInput input;

int play;
int stop;
int x;
int y;
String te=" ";
PFont f;
String[] notes=new String[50];
String[] playlist=new String[50];


void setup() 
{
  size(500,520);
  f = createFont("Arial",16,true); 
  reset();
  minim = new Minim(this);
  //player = minim.loadFile("Kalimba.mp3");
  input = minim.getLineIn();
}
void reset()
{
  for (int i=0;i<50;i++)
  {
    notes[i]=" ";
    playlist[i]=" ";
  }
  println("Reset...");
}

void keyPressed()
{
  println("Key Pressed....");
  if(key=='q')
  {
    te="am";
  }
  else if(key=='a')
  {
    te="A";
  }
  else if(key=='z')
  {
    te="a7";
  }
  else if(key=='w')
  {
    te="bm";
  }
  else if(key=='s')
  {
    te="B";
  }
  else if(key=='x')
  {
    te="b7";
  }
  else if(key=='e')
  {
    te="cm";
  }
  else if(key=='d')
  {
    te="C";
  }
  else if(key=='c')
  {
    te="c7";
  }
  else if(key=='r')
  {
    te="dm";
  }
  else if(key=='f')
  {
    te="D";
  }
  else if(key=='v')
  {
    te="d7";
  }
  else if(key=='t')
  {
    te="em";
  }
  else if(key=='g')
  {
    te="E";
  }
  else if(key=='b')
  {
    te="e7";
  }
  else if(key=='y')
  {
    te="fm";
  }
  else if(key=='h')
  {
    te="F";
  }
  else if(key=='n')
  {
    te="f7";
  }
  else if(key=='u')
  {
    te="gm";
  }
  else if(key=='j')
  {
    te="G";
  }
  else if(key=='u')
  {
    te="g7";
  }
  else if(key=='o')
  {
    playing();
  }
  else if(key=='p')
  {
   reset();
 }
 else if(key=='l') //preset 1 "Dirty Diana- MJ
 {
   println("Preset 1: Dirty Diana - MJ");
   int i=0;
  while(i<=24) 
  {
    notes[i]="em";
    playlist[i]="em";
    i=i+5;
  }
  i=2;
  while(i<=25) 
  {
    notes[i]="C";
    playlist[i]="C";
    i=i+5;
  }
  i=3;
  while(i<=25) 
  {
    notes[i]="D";
    playlist[i]="D";
    i=i+5;
  }
 }
  else if(key=='k') //preset 2 "Stand by me"
 {
   println("Preset 2: Stand by me - Ben. E King");
   int i=0;
  while(i<=29) 
  {
     notes[i]="G";
     notes[i+1]="G";
     notes[i+2]="em";
     notes[i+3]="em";
     notes[i+4]="C";
     notes[i+5]="C";
     notes[i+6]="D";
     notes[i+7]="D";
     playlist[i]="G";
     playlist[i+1]="G";
     playlist[i+2]="em";
     playlist[i+3]="em";
     playlist[i+4]="C";
     playlist[i+5]="C";
     playlist[i+6]="D";
     playlist[i+7]="D";
     i=i+8;
    
    
  }
   }

}

void mousePressed()
{
  println("Mouse Pressed!");
  x=mouseX;
  y=mouseY;
  if(x > 0 && x < 100 && y > 0 && y < 50)
  {
    notes[0]=te;
    playlist[0]=te;
    println("1");
    println(notes[0]);
    te=" ";
  
  }
  else if(x > 100 && x <200 && y > 0 && y < 50)
  {
    notes[1]=te;
   playlist[1]=te;
   println(notes[1]);
  println("2"); 
  te=" ";
  }
  else if(x > 200 && x < 300 && y > 0 && y < 50)
  {
    notes[2]=te;
    playlist[2]=te;
    te=" ";
  }
  else if(x > 300 && x < 400 && y > 0 && y < 50)
  {
    notes[3]=te;
    playlist[3]=te;
    te=" ";
  }
  else if(x > 400 && x < 500 && y > 0 && y < 50)
  {
    notes[4]=te;
    playlist[4]=te;
    te=" ";
  }
  else if(x > 0 && x < 100 && y > 50 && y < 100)
  {
    notes[5]=te;
    playlist[5]=te;
    te=" ";
  }
  else if(x > 100 && x < 200 && y > 50 && y < 100)
  {
    notes[6]=te;
    playlist[6]=te;
    te=" ";
  }
  else if(x > 200 && x < 300 && y > 50 && y < 100)
  {
    notes[7]=te;
    playlist[7]=te;
    te=" ";
  }
  else if(x > 300 && x < 400 && y > 50 && y < 100)
  {
    notes[8]=te;
    playlist[8]=te;
    te=" ";
  }
  else if(x > 400 && x < 500 && y > 50 && y < 100)
  {
    notes[9]=te;
    playlist[9]=te;
    te=" ";
  }
  else if(x > 0 && x < 100 && y > 100 && y < 150)
  {
    notes[10]=te;
    playlist[10]=te;
    te=" ";
  }
  else if(x > 100 && x < 200 && y > 100 && y < 150)
  {
    notes[11]=te;
    playlist[11]=te;
    te=" ";
  }
  else if(x > 200 && x < 300 && y > 100 && y < 150)
  {
    notes[12]=te;
    playlist[12]=te;
    te=" ";
  }
  else if(x > 300 && x < 400 && y > 100 && y < 150)
  {
    notes[13]=te;
    playlist[13]=te;
    te=" ";
  }
  else if(x > 400 && x < 500 && y > 100 && y < 150)
  {
    notes[14]=te;
    playlist[14]=te;
    te=" ";
  }
  else if(x > 0 && x < 100 && y > 150 && y < 200)
  {
    notes[15]=te;
    playlist[15]=te;
    te=" ";
  }
  else if(x > 100 && x < 200 && y > 150 && y < 200)
  {
    notes[16]=te;
    playlist[16]=te;
    te=" ";
  }
  else if(x > 200 && x < 300 && y > 150 && y < 200)
  {
    notes[17]=te;
    playlist[17]=te;
    te=" ";
  }
  else if(x > 300 && x < 400 && y > 150 && y < 200)
  {
    notes[18]=te;
    playlist[18]=te;
    te=" ";
  }
  else if(x > 400 && x < 500 && y > 150 && y < 200)
  {
    notes[19]=te;
    playlist[19]=te;
    te=" ";
  }
  else if(x > 0 && x < 100 && y > 200 && y < 250)
  {
    notes[20]=te;
    playlist[20]=te;
    te=" ";
  }
  else if(x > 100 && x < 200 && y > 200 && y < 250)
  {
    notes[21]=te;
    playlist[21]=te;
    te=" ";
  }
  else if(x > 200 && x < 300 && y > 200 && y < 250)
  {
    notes[22]=te;
    playlist[22]=te;
    te=" ";
  }
  else if(x > 300 && x < 400 && y > 200 && y < 250)
  {
    notes[23]=te;
    playlist[23]=te;
    te=" ";
  }
  else if(x > 400 && x < 500 && y > 200 && y < 250)
  {
    notes[24]=te;
    playlist[24]=te;
    te=" ";
  }
  else if(x > 0 && x < 100 && y > 250 && y < 300)
  {
    notes[25]=te;
    playlist[25]=te;
    te=" ";
  }
  else if(x > 100 && x < 200 && y > 250 && y < 300)
  {
    notes[26]=te;
    playlist[26]=te;
    te=" ";
  }
  else if(x > 200 && x < 300 && y > 250 && y < 300)
  {
    notes[27]=te;
    playlist[27]=te;
    te=" ";
  }
  else if(x > 300 && x < 400 && y > 250 && y < 300)
  {
    notes[28]=te;
    playlist[28]=te;
    te=" ";
  }
  else if(x > 400 && x < 500 && y > 250 && y < 300)
  {
    notes[29]=te;
    playlist[29]=te;
    te=" ";
  }
  else if(x > 0 && x < 100 && y > 300 && y < 350)
  {
    notes[30]=te;
    playlist[30]=te;
    te=" ";
  }
  else if(x > 100 && x < 200 && y > 300 && y < 350)
  {
    notes[31]=te;
    playlist[31]=te;
    te=" ";
  }
  else if(x > 200 && x < 300 && y > 300 && y < 350)
  {
    notes[32]=te;
    playlist[32]=te;
    te=" ";
  }
  else if(x > 300 && x < 400 && y > 300 && y < 350)
  {
    notes[33]=te;
    playlist[33]=te;
    te=" ";
  }
  else if(x > 400 && x < 500 && y > 300 && y < 350)
  {
    notes[34]=te;
    playlist[34]=te;
    te=" ";
  }
  else if(x > 0 && x < 100 && y > 350 && y < 400)
  {
    notes[35]=te;
    playlist[35]=te;
    te=" ";
  }
  else if(x > 100 && x < 200 && y > 350 && y < 400)
  {
    notes[36]=te;
    playlist[36]=te;
    te=" ";
  }
  else if(x > 200 && x < 300 && y > 350 && y < 400)
  {
    notes[37]=te;
    playlist[37]=te;
    te=" ";
  }
  else if(x > 300 && x < 400 && y > 350 && y < 400)
  {
    notes[38]=te;
    playlist[38]=te;
    te=" ";
  }
  else if(x > 400 && x < 500 && y > 350 && y < 400)
  {
    notes[39]=te;
    playlist[39]=te;
    te=" ";
  }
  else if(x > 0 && x < 100 && y > 400 && y < 450)
  {
    notes[40]=te;
    playlist[40]=te;
    te=" ";
  }
  else if(x > 100 && x < 200 && y > 400 && y < 450)
  {
    notes[41]=te;
    playlist[41]=te;
    te=" ";
  }
  else if(x > 200 && x < 300 && y > 400 && y < 450)
  {
    notes[42]=te;
    playlist[42]=te;
    te=" ";
  }
  else if(x > 300 && x < 400 && y > 400 && y < 450)
  {
    notes[43]=te;
    playlist[43]=te;
    te=" ";
  }
  else if(x > 400 && x < 500 && y > 400 && y < 450)
  {
    notes[44]=te;
    playlist[44]=te;
    te=" ";
  }
  else if(x > 0 && x < 100 && y > 450 && y < 500)
  {
    notes[45]=te;
    playlist[45]=te;
    te=" ";
  }
  else if(x > 100 && x < 200 && y > 450 && y < 500)
  {
    notes[46]=te;
    playlist[46]=te;
    te=" ";
  }
  else if(x > 200 && x < 300 && y > 450 && y < 500)
  {
    notes[47]=te;
    playlist[47]=te;
    te=" ";
  }
  else if(x > 300 && x < 400 && y > 450 && y < 500)
  {
    notes[48]=te;
    playlist[48]=te;
    te=" ";
  }
  else if(x > 400 && x < 500 && y > 450 && y < 500)
  {
    notes[49]=te;
    playlist[49]=te;
    te=" ";
  }
  
  
}
//void mouseReleased()
//{
//  x=mouseX;
//  y=mouseY;
// if(x > 0 && x < 20 && y > 0 && y < 10)
//  {
//    notes[0]=te;
//    playlist[0]=te;
//  println("3");
//  }
//  else if(x > 20 && x < 30 && y > 10 && y < 20)
//  {
//    notes[1]=te;
//   playlist[1]=te; 
//   println("4");
//  
//}
  
//}

void draw() {
  background(0);
  

  // Set the font and fill for text
  textFont(f,12);
  fill(255);
  
 line(0,50,500,50);
 line(0,100,500,100);
 line(0,150,500,150);
 line(0,200,500,200);
 line(0,250,500,250);
 line(0,300,500,300);
 line(0,350,500,350);
 line(0,400,500,400);
 line(0,450,500,450);
 line(0,500,500,500);
 line(100,0,100,500);
 line(200,0,200,500);
 line(300,0,300,500);
 line(400,0,400,500);
 line(500,0,500,500);
 noted();
}

void noted()
{
  stroke(255);
 text(notes[0],50,25);
text(notes[1],150,25); 
text(notes[2],250,25);
text(notes[3],350,25);
text(notes[4],450,25);
text(notes[5],50,75);
text(notes[6],150,75);
text(notes[7],250,75);
text(notes[8],350,75);
text(notes[9],450,75);
text(notes[10],50,125);
text(notes[11],150,125);
text(notes[12],250,125);
text(notes[13],350,125);
text(notes[14],450,125);
text(notes[15],50,175);
text(notes[16],150,175);
text(notes[17],250,175);
text(notes[18],350,175);
text(notes[19],450,175);
text(notes[20],50,225);
text(notes[21],150,225);
text(notes[22],250,225);
text(notes[23],350,225);
text(notes[24],450,225);
text(notes[25],50,275);
text(notes[26],150,275);
text(notes[27],250,275);
text(notes[28],350,275);
text(notes[29],450,275);
text(notes[30],50,325);
text(notes[31],150,325);
text(notes[32],250,325);
text(notes[33],350,325);
text(notes[34],450,325);
text(notes[35],50,375);
text(notes[36],150,375);
text(notes[37],250,375);
text(notes[38],350,375);
text(notes[39],450,375);
text(notes[40],50,425);
text(notes[41],150,425);
text(notes[42],250,425);
text(notes[43],350,425);
text(notes[44],450,425);
text(notes[45],50,475);
text(notes[46],150,475);
text(notes[47],250,475);
text(notes[48],350,475);
text(notes[49],450,475);
}

void playing()
{
  println("Playing Notes....");
  for(int k=0;k<50;k++)
  {
    
    if(playlist[k]=="am")
    {
    player = minim.loadFile("am.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="A")
    {
      player = minim.loadFile("A.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="a7")
    {
      player = minim.loadFile("a7.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="bm")
    {
      player = minim.loadFile("bm.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="B")
    {
      player = minim.loadFile("B.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="b7")
    {
      player = minim.loadFile("b7.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="cm")
    {
      player = minim.loadFile("cm.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="C")
    {
      player = minim.loadFile("C.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="c7")
    {
      player = minim.loadFile("c7.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="dm")
    {
      player = minim.loadFile("dm.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="D")
    {
      player = minim.loadFile("D.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="d7")
    {
      player = minim.loadFile("d7.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="em")
    {
      player = minim.loadFile("em.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="E")
    {
      player = minim.loadFile("E.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="e7")
    {
      player = minim.loadFile("e7.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="fm")
    {
      player = minim.loadFile("fm.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="F")
    {
      player = minim.loadFile("F.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="f7")
    {
      player = minim.loadFile("f7.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="gm")
    {
      player = minim.loadFile("gm.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="G")
    {
      player = minim.loadFile("G.mp3");
    player.play();
    delay(1000);
    player.close();
    }
    else if(playlist[k]=="g7")
    {
      player = minim.loadFile("g7.mp3");
    player.play();
    delay(1000);
    player.close();
    } 
   else if(playlist[k]==" ")
  {
   delay(1000);
  } 
    
  }
}
