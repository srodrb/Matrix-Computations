function fpara(a1, a2)
global np nv tf cm pct
cm1=['yyccbbkkmmrrggyyccbbkkmmrrggyy'];
cm2=['yyyyyyyyyyyyyyyyyyyyyyyy']; cm3=['kkkkkkkkkkkkkkkkkkkkkkkk'];
cm4=['bbbbbbbbbbbbbbbbbbbbbbbb']; cm5=['gggggggggggggggggggggggg'];
cm6=['rrrrrrrrrrrrrrrrrrrrrrrr'];
tf1= [.5   0       .5  0.4    1.2     .7 1
     0   0       0  0       0     0 0. 
      0    0      0    0    0     0   0 
       0    0      0    0    0     0   0 
     0    0      0    0    0     0   0];
tf2 = [0.86 0.03  -0.03 0.86  0.1   -1.5 0.83
      0.2 -0.25   0.21 0.23  -0.3   1.5 0.08
     -0.15 0.27   0.25 0.26  0   .45 0.08
      0   0       0  0.17    0     0 0.01
      0    0      0    0    0     0   0];
   
 tf3 = [0.42 0.42  -0.42 0.42  0  0.2  0.4
   0.42 -.42   0.42 0.42  0  0.2  0.4
   0.1   0       0   0.1  0  0.2  0.2
   0     0       0   0.5   0  0   0.0 
   0    0      0    0    0     0   0];
 tf4 = [0.5 0.5   -0.5 0.5  0.125 0.625   0.5
      0.5 0.5   -0.5 0.5  -.125 0.375   0.5
      0    0      0    0    0     0   0
      0    0      0    0    0     0   0
        0    0      0    0    0     0   0];
 tf5=[.195 -.488 .344 .443 .443 .245 0.8
    .462 .414 -.252 .361 .251 .569 0.06
    -.058 -.07 .453 -.111 .598 .097 0.06
    -.035 .07 -.469 -.022 .488 .507 0.06
    -.637 0   0      .501  .856  .251 0.02]; 
  
 tf6=[ 0 0 0 .16 0 0 0.1
        .85 .04 -.04 .85 0 1.6 0.7
        .2 -.26 .23 .2 0 1.6 0.1
        -.15 .28 .26 .24 0 .44 0.1
        0    0      0    0    0     0   0]; 
tf7 = [0.86 0.03  -0.03 0.86  0   1.5 0.83
      0.2 -0.25   0.21 0.23  0   1.5 0.08
     -0.15 0.27   0.25 0.26  0   .45 0.08
      0   0       0  0.17    0     0 0.01
      0    0      0    0    0     0   0];
tf8=[ -.467 .02 -.113 .015 .4  .4  .4
   .387 .43  .43  -.387  .256 .522  .2
   .441 -.091 -.009 -.322 .421 .505 .2
   1 0 0 1 0.01 0.01 0.2
   0 0 0 0 0 0 0]; 
tf9=[.5  0 0 .5 0 0 .3333
   .5 0 0 .5 .5 0 .3333
   .5 0 0 .5 0 .5 .3333
   0 0 0 0 0 0 0
   0 0 0 0 0 0 0]; 
tf10=[0 -.5 .5 0 .5 0 .3333
   0 .5 -.5 0 .5 .5 .3333
   .5 0 0 .5 .25 .5 .3333
   0 0 0 0  0 0 0
   0 0 0 0 0 0 0];
tf11=[0 .577 -.577 0 .0951 .5893 0.3333
   0 .577 -.577 0 .4413 .7893 .3333
   0 .577 -.577 0 .0952 .9893 .3333
   0 0 0 0 0 0 0
   0 0 0 0 0 0 0]; 
tf12=[.333 0 0 .333 .333 .666 .25
   0  .333 1 0 .666 0 .4
   0 -.333 1 0 .3333 0 .35
   0 0 0 0 0 0 0
   0 0 0 0 0 0 0]; 
tf13=[.387 .43 .43 -.387 .256 .522 .3
   .441 -.091 -.009 -.322 .4219 .5059 .3
   -.468 .020 -.113 .015 .4 .4 .4
   0 0 0 0 0 0 0
   0 0 0 0 0 0 0]; 
tf14=[.255 0 0 .255 .3726 .6714 .25
   .255 0 0 .255 .1146 .2232 .25
   .255 0 0 .255 .6306 .2232 .25
   .37 -.642 .642 .37 .6356 -.0061 .25
   0 0 0 0 0 0 0 ]; 
tf15=[.382 0 0 .382 .3072 .6190 0.2
.382 0 0 .382 .6033 .4044 0.2
.382 0 0 .382 .0139 .4044 0.2
.382 0 0 .382 .1253 .0595 0.2
.382 0 0 .382 .4920 .0595 0.2];
 tf16 = [0.42 0.42  -0.42 0.42  0  0.2  0.2
   0.42 -.42   0.42 0.42  0  0.6  0.4
   0.1   0       0   0.1  0  0.2  0.1
   0     0       0   0.6   0  0   0.2 
   0.6    0      0    0    0.2     0   0.1];
 tf17=[-0.7071	0.7071	0.7071	0.7071	0.01	0.01	.5	;
    .387 .43  .43  -.387  0.4 .4  .5;
    0 0 0 0 0 0 0
    0 0 0 0 0 0 0
   0 0 0 0 0 0 0]; 

   
   
   
   
eval([a1 '=' a2 ';']); 
if strcmp(a1,'zin')
   vv=axis; cn=[vv(1)*.5+vv(2)*.5 vv(3)*.5+vv(4)*.5];
   xl=0.9*(vv(2)-cn(1)); yl=0.9*(vv(4)-cn(2)); 
   axis([cn(1)-xl, cn(1)+xl, cn(2)-yl, cn(2)+yl]); end
 
if strcmp(a1,'zout')
   vv=axis; cn=[vv(1)*.5+vv(2)*.5 vv(3)*.5+vv(4)*.5];
   xl=1.1*(vv(2)-cn(1)); yl=1.1*(vv(4)-cn(2));
  axis([cn(1)-xl, cn(1)+xl, cn(2)-yl, cn(2)+yl]); end
 
if strcmp(a1,'ctr')
   cn=pct; vv=axis;  
   xl=(vv(2)-vv(1))/2.; yl=(vv(4)-vv(3))/2.;
   axis([cn(1,1)-xl, cn(1,1)+xl, cn(1,2)-yl, cn(1,2)+yl]); end
 

