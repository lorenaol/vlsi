DSCH 3.5
VERSION 5/19/2022 5:10:32 PM
BB(-394,-15,-301,30)
SYM  #button
BB(-394,-14,-385,-6)
TITLE -390 -10  #button1
MODEL 59
PROP                                                                                                                                   
REC(-393,-13,6,6,r)
VIS 1
PIN(-385,-10,0.000,0.000)in1
LIG(-386,-10,-385,-10)
LIG(-394,-6,-394,-14)
LIG(-386,-6,-394,-6)
LIG(-386,-14,-386,-6)
LIG(-394,-14,-386,-14)
LIG(-393,-7,-393,-13)
LIG(-387,-7,-393,-7)
LIG(-387,-13,-387,-7)
LIG(-393,-13,-387,-13)
FSYM
SYM  #button
BB(-394,-4,-385,4)
TITLE -390 0  #button2
MODEL 59
PROP                                                                                                                                   
REC(-393,-3,6,6,r)
VIS 1
PIN(-385,0,0.000,0.000)in2
LIG(-386,0,-385,0)
LIG(-394,4,-394,-4)
LIG(-386,4,-394,4)
LIG(-386,-4,-386,4)
LIG(-394,-4,-386,-4)
LIG(-393,3,-393,-3)
LIG(-387,3,-393,3)
LIG(-387,-3,-387,3)
LIG(-393,-3,-387,-3)
FSYM
SYM  #button
BB(-394,11,-385,19)
TITLE -390 15  #button3
MODEL 59
PROP                                                                                                                                   
REC(-393,12,6,6,r)
VIS 1
PIN(-385,15,0.000,0.000)in3
LIG(-386,15,-385,15)
LIG(-394,19,-394,11)
LIG(-386,19,-394,19)
LIG(-386,11,-386,19)
LIG(-394,11,-386,11)
LIG(-393,18,-393,12)
LIG(-387,18,-393,18)
LIG(-387,12,-387,18)
LIG(-393,12,-387,12)
FSYM
SYM  #button
BB(-394,21,-385,29)
TITLE -390 25  #button4
MODEL 59
PROP                                                                                                                                   
REC(-393,22,6,6,r)
VIS 1
PIN(-385,25,0.000,0.000)in4
LIG(-386,25,-385,25)
LIG(-394,29,-394,21)
LIG(-386,29,-394,29)
LIG(-386,21,-386,29)
LIG(-394,21,-386,21)
LIG(-393,28,-393,22)
LIG(-387,28,-393,28)
LIG(-387,22,-387,28)
LIG(-393,22,-387,22)
FSYM
SYM  #and2
BB(-385,-15,-350,5)
TITLE -373 -4  #&
MODEL 402
PROP                                                                                                                                   
REC(-5,-5,0,0, )
VIS 0
PIN(-385,0,0.000,0.000)b
PIN(-385,-10,0.000,0.000)a
PIN(-350,-5,0.015,0.002)s
LIG(-385,0,-377,0)
LIG(-377,-15,-377,5)
LIG(-357,-5,-350,-5)
LIG(-358,-3,-361,1)
LIG(-357,-5,-358,-3)
LIG(-358,-7,-357,-5)
LIG(-361,-11,-358,-7)
LIG(-366,-14,-361,-11)
LIG(-361,1,-366,4)
LIG(-366,4,-377,5)
LIG(-377,-15,-366,-14)
LIG(-385,-10,-377,-10)
VLG and and2(out,a,b);
FSYM
SYM  #and2
BB(-385,10,-350,30)
TITLE -373 21  #&
MODEL 402
PROP                                                                                                                                   
REC(-10,0,0,0, )
VIS 0
PIN(-385,25,0.000,0.000)b
PIN(-385,15,0.000,0.000)a
PIN(-350,20,0.015,0.002)s
LIG(-385,25,-377,25)
LIG(-377,10,-377,30)
LIG(-357,20,-350,20)
LIG(-358,22,-361,26)
LIG(-357,20,-358,22)
LIG(-358,18,-357,20)
LIG(-361,14,-358,18)
LIG(-366,11,-361,14)
LIG(-361,26,-366,29)
LIG(-366,29,-377,30)
LIG(-377,10,-366,11)
LIG(-385,15,-377,15)
VLG and and2(out,a,b);
FSYM
SYM  #and2
BB(-340,0,-305,20)
TITLE -328 11  #&
MODEL 402
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(-340,15,0.000,0.000)b
PIN(-340,5,0.000,0.000)a
PIN(-305,10,0.015,0.002)s
LIG(-340,15,-332,15)
LIG(-332,0,-332,20)
LIG(-312,10,-305,10)
LIG(-313,12,-316,16)
LIG(-312,10,-313,12)
LIG(-313,8,-312,10)
LIG(-316,4,-313,8)
LIG(-321,1,-316,4)
LIG(-316,16,-321,19)
LIG(-321,19,-332,20)
LIG(-332,0,-321,1)
LIG(-340,5,-332,5)
VLG and and2(out,a,b);
FSYM
SYM  #light
BB(-307,-5,-301,9)
TITLE -305 9  #light1
MODEL 49
PROP                                                                                                                                   
REC(-306,-4,4,4,r)
VIS 1
PIN(-305,10,0.000,0.000)out1
LIG(-302,1,-302,-4)
LIG(-302,-4,-303,-5)
LIG(-306,-4,-306,1)
LIG(-303,6,-303,3)
LIG(-304,6,-301,6)
LIG(-304,8,-302,6)
LIG(-303,8,-301,6)
LIG(-307,3,-301,3)
LIG(-305,3,-305,10)
LIG(-307,1,-307,3)
LIG(-301,1,-307,1)
LIG(-301,3,-301,1)
LIG(-305,-5,-306,-4)
LIG(-303,-5,-305,-5)
FSYM
LIG(-350,-5,-350,5)
LIG(-350,5,-340,5)
LIG(-340,15,-350,15)
LIG(-350,15,-350,20)
FFIG C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\and4.sch
