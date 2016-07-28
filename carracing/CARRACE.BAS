CLS
SCREEN 9
LOCATE 12, 30
PRINT " KLP presents "
SLEEP 2
LOCATE 12, 26
PRINT " Extrem Geisterfahring"
SLEEP 2
CLS
COLOR 3
LOCATE 10, 27
PRINT " JETZT "
SLEEP 1
LOCATE 10, 35
PRINT "GEHT`S "
SLEEP 1
LOCATE 10, 41
PRINT " LOS  "
SLEEP 2
CLS
LOCATE 4, 25
PRINT " W„hle dir Farbe deines Autos ! "
LINE (40, 100)-(60, 120), 1, BF
LINE (80, 100)-(100, 120), 2, BF
LINE (120, 100)-(140, 120), 3, BF
LINE (160, 100)-(180, 120), 4, BF
LINE (200, 100)-(220, 120), 5, BF
LINE (240, 100)-(260, 120), 6, BF
LINE (280, 100)-(300, 120), 7, BF
LINE (320, 100)-(340, 120), 8, BF
LINE (360, 100)-(380, 120), 9, BF
LINE (400, 100)-(420, 120), 10, BF
LINE (440, 100)-(460, 120), 11, BF
LINE (480, 100)-(500, 120), 12, BF
LINE (520, 100)-(540, 120), 13, BF
LINE (560, 100)-(580, 120), 14, BF
LOCATE 7, 1
PRINT "     1    2    3    4    5    6    7    8    9    10   11   12   13   14"
LOCATE 12, 1
INPUT " Nr. : "; farbe
SLEEP 2
13 LOCATE 15, 23
PRINT " W„hle dein Startlevel ! "
LOCATE 17, 23
INPUT " Level (1 - 25) : "; level
LOCATE 20, 20
INPUT " Geschwindigkeitskontrollen (j/n) ??? "; auswahl$
IF level > 25 THEN GOTO 12
CLS
SCREEN 9
COLOR 2, 1
LOCATE 2, 33
PRINT " STEUERUNG "
COLOR 10
LOCATE 5, 6
PRINT " links Lenken   :        linker Cursor "
PRINT SPC(5); " rechts Lenken   :       rechter Cursor "
PRINT SPC(5); " beschleunigen   :       oberer Cursor "
PRINT SPC(5); " abbremsen       :       unterer Cursor "
PRINT SPC(5); " Spiel verlassen :       SHIFT + PAUSE "
LOCATE 13, 35
COLOR 4
PRINT " Achtung "
LOCATE 15, 1
COLOR 15
PRINT " Solltest du Geschwindigkeitskontrollen aktiviert haben, ist es ratsam"
PRINT " die Geschwindigkeit auf 125 km/h zu vermindern, wenn die Polizei kommt."
SLEEP 0
CLS
SCREEN 9
COLOR 15, 0
LINE (160, 0)-(160, 350), 15, BF
LINE (400, 0)-(400, 350), 15, BF
x = 160
DO UNTIL y = 3
y = y + 1
x = x + 60
LINE (x, 10)-(x, 20), 15, BF
LINE (x, 30)-(x, 40), 15, BF
LINE (x, 50)-(x, 60), 15, BF
LINE (x, 70)-(x, 80), 15, BF
LINE (x, 90)-(x, 100), 15, BF
LINE (x, 110)-(x, 120), 15, BF
LINE (x, 130)-(x, 140), 15, BF
LINE (x, 150)-(x, 160), 15, BF
LINE (x, 170)-(x, 180), 15, BF
LINE (x, 190)-(x, 200), 15, BF
LINE (x, 210)-(x, 220), 15, BF
LINE (x, 230)-(x, 240), 15, BF
LINE (x, 250)-(x, 260), 15, BF
LINE (x, 270)-(x, 280), 15, BF
LINE (x, 290)-(x, 300), 15, BF
LINE (x, 310)-(x, 320), 15, BF
LINE (x, 330)-(x, 340), 15, BF
LOOP
LINE (290, 260)-(330, 280), farbe, BF
LINE (290, 280)-(330, 285), 15, BF
LINE (290, 285)-(330, 320), farbe, BF
LINE (290, 320)-(330, 323), 15, BF
LINE (290, 323)-(330, 340), farbe, BF
leben = 3
f = 15
r = 0
aa = 290
ab = 330
ac = 390
laenge = 10
ka = 0
kb = 0
kc = 0
kd = 0
level = level + 6
CLS
SCREEN 9
LINE (160, 0)-(160, 350), 15, BF
LINE (400, 0)-(400, 350), 15, BF
x = 160
15 LINE (aa, 260)-(ab, 280), farbe, BF
 LINE (aa, 280)-(ab, 285), 15, BF
 LINE (aa, 285)-(ab, 320), farbe, BF
 LINE (aa, 320)-(ab, 323), 15, BF
 LINE (aa, 323)-(ab, 340), farbe, BF
 LINE (460, 100)-(620, 260), 4, B
 SLEEP 1
 LINE (500, 120)-(580, 140), 15, BF
 LINE (580, 140)-(560, 240), 15, BF
 LINE (580, 240)-(500, 220), 15, BF
 LINE (500, 160)-(580, 180), 15, BF
 SLEEP 1
 LINE (461, 101)-(619, 259), 0, BF
 LINE (500, 120)-(580, 140), 15, BF
 LINE (560, 160)-(500, 180), 15, BF
 LINE (560, 120)-(580, 180), 15, BF
 LINE (500, 160)-(520, 240), 15, BF
 LINE (520, 220)-(580, 240), 15, BF
 SLEEP 1
 LINE (461, 101)-(619, 259), 0, BF
 LINE (580, 120)-(560, 240), 15, BF
 SLEEP 1
 LINE (461, 101)-(619, 259), 0, BF
 LINE (480, 140)-(500, 220), 4, BF
 LINE (480, 140)-(520, 160), 4, BF
 LINE (480, 200)-(520, 220), 4, BF
 LINE (520, 220)-(510, 180), 4, BF
 LINE (520, 180)-(505, 190), 4, BF
 LINE (540, 140)-(620, 220), 4, BF
 LINE (580, 160)-(600, 180), 0, BF
 SLEEP 1
 LINE (459, 99)-(621, 261), 0, BF
DO
6 hhh = 0
geschwindigkeit = 5 * level + 50
RANDOMIZE TIMER
a% = INT(RND * 7) + 1
B% = INT(RND * 14) + 1
c% = INT(RND * 7) + 1
IF a% = 1 THEN GOTO 7
IF a% = 2 THEN GOTO 8
IF a% = 3 THEN GOTO 9
IF a% = 4 THEN GOTO 10
IF a% > 4 THEN GOTO 11
7 ka = ka + level
  
  hhh = 1
  IF c% < 4 THEN
     LINE (ac - 40, ka - 10)-(ac, ka - 30), B%, BF
     LINE (ac - 40, ka - 30)-(ac, ka - 33), 15, BF
     LINE (ac - 40, ka - 33)-(ac, ka - 70), B%, BF
     LINE (ac - 40, ka - 70)-(ac, ka - 73), 15, BF
     LINE (ac - 40, ka - 73)-(ac, ka - 90), B%, BF
     LINE (ac - 40, ka - 90)-(ac, 0), 0, BF
  ELSEIF c% > 3 AND c% < 7 THEN
     LINE (ac - 40, ka - 10)-(ac, ka - 30), B%, BF
     LINE (ac - 40, ka - 30)-(ac, ka - 33), 15, BF
     LINE (ac - 40, ka - 33)-(ac, ka - 90), B%, BF
     LINE (ac - 40, ka - 90)-(ac, 0), 0, BF
  ELSEIF c% = 7 THEN
     p = p + 1
     kap = kap + level
     LINE (ac - 40, kap - 10)-(ac, ka - 30), 2, BF
     LINE (ac - 40, kap - 30)-(ac, ka - 33), 1, BF
     LINE (ac - 40, kap - 33)-(ac, ka - 70), 15, BF
     LINE (ac - 40, kap - 70)-(ac, ka - 73), 1, BF
     LINE (ac - 40, kap - 73)-(ac, ka - 90), 2, BF
     IF p < 10 THEN
       LINE (ac - 3, kap - 37)-(ac - 12, kap - 42), 4, BF
       LINE (ac - 37, kap - 37)-(ac - 28, kap - 42), 1, BF
     ELSEIF p > 9 AND p < 20 THEN
       LINE (ac - 3, kap - 37)-(ac - 12, kap - 42), 1, BF
       LINE (ac - 37, kap - 37)-(ac - 28, kap - 42), 4, BF
       END IF
     LINE (ac - 40, ka - 90)-(ac, 0), 0, BF
     IF p = 20 THEN p = 0
  END IF
  GOTO 11
8 kb = kb + level
  hhh = 2
  IF c% < 4 THEN
     LINE (ac - 100, kb - 10)-(ac - 60, kb - 30), B%, BF
     LINE (ac - 100, kb - 30)-(ac - 60, kb - 33), 15, BF
     LINE (ac - 100, kb - 33)-(ac - 60, kb - 70), B%, BF
     LINE (ac - 100, kb - 70)-(ac - 60, kb - 73), 15, BF
     LINE (ac - 100, kb - 73)-(ac - 60, kb - 90), B%, BF
     LINE (ac - 100, kb - 90)-(ac - 60, 0), 0, BF
  ELSEIF c% > 3 AND c% < 7 THEN
     LINE (ac - 100, kb - 10)-(ac - 60, kb - 30), B%, BF
     LINE (ac - 100, kb - 30)-(ac - 60, kb - 33), 15, BF
     LINE (ac - 100, kb - 33)-(ac - 60, kb - 90), B%, BF
     LINE (ac - 100, kb - 90)-(ac - 60, 0), 0, BF
  ELSEIF c% = 7 THEN
     p = p + 1
     kbp = kbp + level
     LINE (ac - 60, kbp - 10)-(ac - 100, kb - 30), 2, BF
     LINE (ac - 60, kbp - 30)-(ac - 100, kb - 33), 1, BF
     LINE (ac - 60, kbp - 33)-(ac - 100, kb - 70), 15, BF
     LINE (ac - 60, kbp - 70)-(ac - 100, kb - 73), 1, BF
     LINE (ac - 60, kbp - 73)-(ac - 100, kb - 90), 2, BF
     IF p < 10 THEN
       LINE (ac - 63, kbp - 37)-(ac - 72, kbp - 42), 4, BF
       LINE (ac - 97, kbp - 37)-(ac - 88, kbp - 42), 1, BF
     ELSEIF p > 9 AND p < 20 THEN
       LINE (ac - 63, kbp - 37)-(ac - 72, kbp - 42), 1, BF
       LINE (ac - 97, kbp - 37)-(ac - 88, kbp - 42), 4, BF
     END IF
     LINE (ac - 60, kb - 90)-(ac - 100, 0), 0, BF
     IF p = 20 THEN p = 0
    
  END IF
  GOTO 11
9 kc = kc + level
  hhh = 3
  IF c% < 4 THEN
     LINE (230, kc - 10)-(270, kc - 30), B%, BF
     LINE (230, kc - 30)-(270, kc - 33), 15, BF
     LINE (230, kc - 33)-(270, kc - 70), B%, BF
     LINE (230, kc - 70)-(270, kc - 73), 15, BF
     LINE (230, kc - 73)-(270, kc - 90), B%, BF
     LINE (230, kc - 90)-(270, 0), 0, BF
  ELSEIF c% > 3 AND c% < 7 THEN
     LINE (230, kc - 10)-(270, kc - 30), B%, BF
     LINE (230, kc - 30)-(270, kc - 33), 15, BF
     LINE (230, kc - 33)-(270, kc - 90), B%, BF
     LINE (230, kc - 90)-(270, 0), 0, BF
  ELSEIF c% = 7 THEN
     kcp = kcp + level
     p = p + 1
     LINE (ac - 120, kcp - 10)-(ac - 160, kc - 30), 2, BF
     LINE (ac - 120, kcp - 30)-(ac - 160, kc - 33), 1, BF
     LINE (ac - 120, kcp - 33)-(ac - 160, kc - 70), 15, BF
     LINE (ac - 120, kcp - 70)-(ac - 160, kc - 73), 1, BF
     LINE (ac - 120, kcp - 73)-(ac - 160, kc - 90), 2, BF
     IF p < 10 THEN
       LINE (ac - 123, kcp - 37)-(ac - 132, kcp - 42), 4, BF
       LINE (ac - 157, kcp - 37)-(ac - 148, kcp - 42), 1, BF
     ELSEIF p > 9 AND p < 20 THEN
       LINE (ac - 123, kcp - 37)-(ac - 132, kcp - 42), 1, BF
       LINE (ac - 157, kcp - 37)-(ac - 148, kcp - 42), 4, BF
     END IF
     LINE (ac - 120, kc - 90)-(ac - 160, 0), 0, BF
     IF p = 20 THEN p = 0
    
   END IF
   GOTO 11
10 kd = kd + level
   hhh = 4
   IF c% < 4 THEN
     LINE (170, kd - 10)-(210, kd - 30), B%, BF
     LINE (170, kd - 30)-(210, kd - 33), 15, BF
     LINE (170, kd - 33)-(210, kd - 70), B%, BF
     LINE (170, kd - 70)-(210, kd - 73), 15, BF
     LINE (170, kd - 73)-(210, kd - 90), B%, BF
     LINE (170, kd - 90)-(210, 0), 0, BF
   ELSEIF c% > 3 AND c% < 7 THEN
     LINE (170, kd - 10)-(210, kd - 30), B%, BF
     LINE (170, kd - 30)-(210, kd - 33), 15, BF
     LINE (170, kd - 33)-(210, kd - 90), B%, BF
     LINE (170, kd - 90)-(210, 0), 0, BF
   ELSEIF c% = 7 THEN
     p = p + 1
     kdp = kdp + level
     LINE (ac - 180, kdp - 10)-(ac - 220, kd - 30), 2, BF
     LINE (ac - 180, kdp - 30)-(ac - 220, kd - 33), 1, BF
     LINE (ac - 180, kdp - 33)-(ac - 220, kd - 70), 15, BF
     LINE (ac - 180, kdp - 70)-(ac - 220, kd - 73), 1, BF
     LINE (ac - 180, kdp - 73)-(ac - 220, kd - 90), 2, BF
     IF p < 10 THEN
       LINE (ac - 183, kdp - 37)-(ac - 192, kdp - 42), 4, BF
       LINE (ac - 217, kdp - 37)-(ac - 208, kdp - 42), 1, BF
     ELSEIF p > 9 AND p < 20 THEN
       LINE (ac - 183, kdp - 37)-(ac - 192, kdp - 42), 1, BF
       LINE (ac - 217, kdp - 37)-(ac - 208, kdp - 42), 4, BF
     END IF
     LINE (ac - 180, kd - 90)-(ac - 220, 0), 0, BF
     IF p = 20 THEN p = 0

   END IF

11 LINE (220, 0)-(220, 350), 0
g = g + level
r = r + 1
IF r = 1 THEN
      f = 15
      fe = 0
      y = 10
      GOTO 12
ELSEIF r = 2 THEN
      f = 15
      fe = 0
      y = 0
      GOTO 12
ELSEIF r = 3 THEN r = 0
END IF
12 x = 220
LINE (x, y)-(x, y + 10), f, BF
LINE (x, y + 10)-(x, y + 20), fe, BF
LINE (x, y + 20)-(x, y + 30), f, BF
LINE (x, y + 30)-(x, y + 40), fe, BF
LINE (x, y + 40)-(x, y + 50), f, BF
LINE (x, y + 50)-(x, y + 60), fe, BF
LINE (x, y + 60)-(x, y + 70), f, BF
LINE (x, y + 70)-(x, y + 80), fe, BF
LINE (x, y + 80)-(x, y + 90), f, BF
LINE (x, y + 90)-(x, y + 100), fe, BF
LINE (x, y + 100)-(x, y + 110), f, BF
LINE (x, y + 110)-(x, y + 120), fe, BF
LINE (x, y + 120)-(x, y + 130), f, BF
LINE (x, y + 130)-(x, y + 140), fe, BF
LINE (x, y + 140)-(x, y + 150), f, BF
LINE (x, y + 150)-(x, y + 160), fe, BF
LINE (x, y + 160)-(x, y + 170), f, BF
LINE (x, y + 170)-(x, y + 180), fe, BF
LINE (x, y + 180)-(x, y + 190), f, BF
LINE (x, y + 190)-(x, y + 200), fe, BF
LINE (x, y + 200)-(x, y + 210), f, BF
LINE (x, y + 210)-(x, y + 220), fe, BF
LINE (x, y + 220)-(x, y + 230), f, BF
LINE (x, y + 230)-(x, y + 240), fe, BF
LINE (x, y + 240)-(x, y + 250), f, BF
LINE (x, y + 250)-(x, y + 260), fe, BF
LINE (x, y + 260)-(x, y + 270), f, BF
LINE (x, y + 270)-(x, y + 280), fe, BF
LINE (x, y + 280)-(x, y + 290), f, BF
LINE (x, y + 290)-(x, y + 300), fe, BF
LINE (x, y + 300)-(x, y + 310), f, BF
LINE (x, y + 310)-(x, y + 320), fe, BF
LINE (x, y + 320)-(x, y + 330), f, BF
LINE (x, y + 330)-(x, y + 340), fe, BF
x = 280
LINE (x, y)-(x, y + 10), f, BF
LINE (x, y + 10)-(x, y + 20), fe, BF
LINE (x, y + 20)-(x, y + 30), f, BF
LINE (x, y + 30)-(x, y + 40), fe, BF
LINE (x, y + 40)-(x, y + 50), f, BF
LINE (x, y + 50)-(x, y + 60), fe, BF
LINE (x, y + 60)-(x, y + 70), f, BF
LINE (x, y + 70)-(x, y + 80), fe, BF
LINE (x, y + 80)-(x, y + 90), f, BF
LINE (x, y + 90)-(x, y + 100), fe, BF
LINE (x, y + 100)-(x, y + 110), f, BF
LINE (x, y + 110)-(x, y + 120), fe, BF
LINE (x, y + 120)-(x, y + 130), f, BF
LINE (x, y + 130)-(x, y + 140), fe, BF
LINE (x, y + 140)-(x, y + 150), f, BF
LINE (x, y + 150)-(x, y + 160), fe, BF
LINE (x, y + 160)-(x, y + 170), f, BF
LINE (x, y + 170)-(x, y + 180), fe, BF
LINE (x, y + 180)-(x, y + 190), f, BF
LINE (x, y + 190)-(x, y + 200), fe, BF
LINE (x, y + 200)-(x, y + 210), f, BF
LINE (x, y + 210)-(x, y + 220), fe, BF
LINE (x, y + 220)-(x, y + 230), f, BF
LINE (x, y + 230)-(x, y + 240), fe, BF
LINE (x, y + 240)-(x, y + 250), f, BF
LINE (x, y + 250)-(x, y + 260), fe, BF
LINE (x, y + 260)-(x, y + 270), f, BF
LINE (x, y + 270)-(x, y + 280), fe, BF
LINE (x, y + 280)-(x, y + 290), f, BF
LINE (x, y + 290)-(x, y + 300), fe, BF
LINE (x, y + 300)-(x, y + 310), f, BF
LINE (x, y + 310)-(x, y + 320), fe, BF
LINE (x, y + 320)-(x, y + 330), f, BF
LINE (x, y + 330)-(x, y + 340), fe, BF
x = 340
LINE (x, y)-(x, y + 10), f, BF
LINE (x, y + 10)-(x, y + 20), fe, BF
LINE (x, y + 20)-(x, y + 30), f, BF
LINE (x, y + 30)-(x, y + 40), fe, BF
LINE (x, y + 40)-(x, y + 50), f, BF
LINE (x, y + 50)-(x, y + 60), fe, BF
LINE (x, y + 60)-(x, y + 70), f, BF
LINE (x, y + 70)-(x, y + 80), fe, BF
LINE (x, y + 80)-(x, y + 90), f, BF
LINE (x, y + 90)-(x, y + 100), fe, BF
LINE (x, y + 100)-(x, y + 110), f, BF
LINE (x, y + 110)-(x, y + 120), fe, BF
LINE (x, y + 120)-(x, y + 130), f, BF
LINE (x, y + 130)-(x, y + 140), fe, BF
LINE (x, y + 140)-(x, y + 150), f, BF
LINE (x, y + 150)-(x, y + 160), fe, BF
LINE (x, y + 160)-(x, y + 170), f, BF
LINE (x, y + 170)-(x, y + 180), fe, BF
LINE (x, y + 180)-(x, y + 190), f, BF
LINE (x, y + 190)-(x, y + 200), fe, BF
LINE (x, y + 200)-(x, y + 210), f, BF
LINE (x, y + 210)-(x, y + 220), fe, BF
LINE (x, y + 220)-(x, y + 230), f, BF
LINE (x, y + 230)-(x, y + 240), fe, BF
LINE (x, y + 240)-(x, y + 250), f, BF
LINE (x, y + 250)-(x, y + 260), fe, BF
LINE (x, y + 260)-(x, y + 270), f, BF
LINE (x, y + 270)-(x, y + 280), fe, BF
LINE (x, y + 280)-(x, y + 290), f, BF
LINE (x, y + 290)-(x, y + 300), fe, BF
LINE (x, y + 300)-(x, y + 310), f, BF
LINE (x, y + 310)-(x, y + 320), fe, BF
LINE (x, y + 320)-(x, y + 330), f, BF
LINE (x, y + 330)-(x, y + 340), fe, BF
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
level = level - 1
IF level = 6 THEN level = 7
CASE IS = CHR$(0) + CHR$(72)
level = level + 1
IF level = 31 THEN level = 30
CASE IS = CHR$(0) + CHR$(77)
aa = aa + 60
ab = ab + 60
IF aa > 350 THEN aa = 350
IF ab > 390 THEN ab = 390
LINE (aa, 260)-(ab, 280), farbe, BF
LINE (aa, 280)-(ab, 285), 15, BF
LINE (aa, 285)-(ab, 320), farbe, BF
LINE (aa, 320)-(ab, 323), 15, BF
LINE (aa, 323)-(ab, 340), farbe, BF
LINE (aa - 60, 260)-(ab - 60, 340), 0, BF
CASE IS = CHR$(0) + CHR$(75)
aa = aa - 60
ab = ab - 60
IF aa < 170 THEN aa = 170
IF ab < 210 THEN ab = 210
LINE (aa, 260)-(ab, 280), farbe, BF
LINE (aa, 280)-(ab, 285), 15, BF
LINE (aa, 285)-(ab, 320), farbe, BF
LINE (aa, 320)-(ab, 323), 15, BF
LINE (aa, 323)-(ab, 340), farbe, BF
LINE (aa + 60, 260)-(ab + 60, 340), 0, BF
END SELECT
IF aa = 290 AND kb > 255 AND kb < 380 THEN GOTO 14
IF aa = 350 AND ka > 255 AND ka < 380 THEN GOTO 14
IF aa = 230 AND kc > 255 AND kc < 380 THEN GOTO 14
IF aa = 170 AND kd > 255 AND kd < 380 THEN GOTO 14
IF level > 15 AND kap > 255 AND kap < 380 AND auswahl$ = "j" THEN GOTO 17
IF level > 15 AND kbp > 255 AND kbp < 380 AND auswahl$ = "j" THEN GOTO 17
IF level > 15 AND kcp > 255 AND kcp < 380 AND auswahl$ = "j" THEN GOTO 17
IF level > 15 AND kdp > 255 AND kdp < 380 AND auswahl$ = "j" THEN GOTO 17
LOCATE 1, 1
PRINT " Level : "; level - 6
LOCATE 2, 1
PRINT " Score : "; g
LOCATE 3, 1
PRINT " Lives : "; leben
LOCATE 1, 55
IF level > 15 AND auswahl$ = "j" THEN
   COLOR 4
ELSE
   COLOR 15
END IF
PRINT " km/h : "; geschwindigkeit
LOCATE 5, 55
PRINT " Autos: "; auto
LOCATE 6, 55
SOUND 32000, 1
IF ka > 450 OR kb > 450 OR kc > 450 OR kd > 450 THEN
   ka = 0
   kb = 0
   kc = 0
   kd = 0
   kap = 0
   kbp = 0
   kcp = 0
   kdp = 0
   auto = auto + 1
   GOTO 6
ELSEIF kap > 450 OR kbp > 450 OR kcp > 450 OR kdp > 450 THEN
   kap = 0
   kbp = 0
   kcp = 0
   kdp = 0
   ka = 0
   kb = 0
   kc = 0
   kd = 0
   autop = autop + 1
   GOTO 6
END IF
IF hhh = 1 THEN
   GOTO 7
ELSEIF hhh = 2 THEN
   GOTO 8
ELSEIF hhh = 3 THEN
   GOTO 9
ELSEIF hhh = 4 THEN
   GOTO 10
END IF
LOOP
14 leben = leben - 1
  IF leben = 0 THEN GOTO 16
  LOCATE 5, 55
  COLOR 15
  PRINT " Groáer Unfall           "
  LOCATE 6, 55
  PRINT ; leben; " mal noch und "
  LOCATE 7, 55
  PRINT " du kannst aufh”ren"
  LOCATE 10, 55
  PRINT " >TASTE< "
  SLEEP 0
  LINE (410, 0)-(640, 350), 0, BF
  LINE (170, 0)-(210, 350), 0, BF
  LINE (230, 0)-(270, 350), 0, BF
  LINE (290, 0)-(330, 350), 0, BF
  LINE (350, 0)-(390, 350), 0, BF
  ka = 0
  kb = 0
  kc = 0
  kd = 0
  kap = 0
  kbp = 0
  kcp = 0
  kdp = 0
  GOTO 15
16 CLS
 SCREEN 9
 COLOR 10, 1
 LOCATE 3, 20
 IF auswahl$ = "j" THEN g = g + 20000
 IF g < 20000 THEN
    PRINT " Sehr schwach. Du muát noch ne Menge ben "
 ELSEIF g < 40000 AND g > 19999 THEN
    PRINT " Schwach. Beim n„chsten mal wird`s besser "
 ELSEIF g < 50000 AND g > 39999 THEN
    PRINT " Geht so. Du steigerst dich"
 ELSEIF g < 60000 AND g > 49999 THEN
    PRINT " Gut. Du bist schon fast ein Profi "
 ELSEIF g < 90000 AND g > 59999 THEN
    PRINT " Frechheit. Du bist zu gut "
 ELSEIF g > 89999 THEN PRINT " Wahnsinn. Besser k”nnte ich es auch nicht "
 END IF
 LOCATE 1, 1
 COLOR 4
 IF auswahl$ = "j" THEN
     PRINT " your Score : "; g - 20000
 ELSEIF auswahl$ = "n" THEN
     PRINT " your Score : "; g
 END IF
 LOCATE 22, 1
 SLEEP 0
 END
17 leben = leben - 1
 IF leben = 0 THEN GOTO 16
 LOCATE 5, 55
 PRINT " Stop, Polizei !"
 LOCATE 7, 55
 PRINT " Zu Schnell !!! "
 LOCATE 9, 55
 PRINT 5 * level + 50; " km/h sind zu viel"
 LOCATE 11, 55
 PRINT ; leben; " mal noch und du "
 LOCATE 13, 55
 PRINT " kannst aufh”ren.  "
 SLEEP 0
 kap = 0
 kbp = 0
 kcp = 0
 kdp = 0
 ka = 0
 kb = 0
 kc = 0
 kd = 0

  LINE (410, 0)-(640, 350), 0, BF
  LINE (170, 0)-(210, 350), 0, BF
  LINE (230, 0)-(270, 350), 0, BF
  LINE (290, 0)-(330, 350), 0, BF
  LINE (350, 0)-(390, 350), 0, BF
 GOTO 15
 
 SYSTEM

