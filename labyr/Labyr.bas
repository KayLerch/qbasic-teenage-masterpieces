' 2053 Zeilen in 30 Sub`s
'-----------------------------------------------------------------------------




'                          Zum Starten bitte F5 drÅcken !



'-----------------------------------------------------------------------------
DECLARE SUB undtschuess ()
DECLARE SUB room3.3 ()
DECLARE SUB secret3 ()
DECLARE SUB room3.1 ()
DECLARE SUB room3.2 ()
DECLARE SUB room6.1.2 ()
DECLARE SUB room4.2 ()
DECLARE SUB room4.1 ()
DECLARE SUB room6.1.1 ()
DECLARE SUB room6.2.2 ()
DECLARE SUB secret2 ()
DECLARE SUB room8.1 ()
DECLARE SUB ziel ()
DECLARE SUB secroom1 ()
DECLARE SUB secret1 ()
DECLARE SUB room9.1 ()
DECLARE SUB room9 ()
DECLARE SUB room8 ()
DECLARE SUB room7 ()
DECLARE SUB room6.2 ()
DECLARE SUB room6.1 ()
DECLARE SUB tuer ()
DECLARE SUB room5 ()
DECLARE SUB room4 ()
DECLARE SUB room3 ()
DECLARE SUB room2 ()
DECLARE SUB ende ()
DECLARE SUB room1 ()
DECLARE SUB story ()
DECLARE SUB anfang ()
CALL anfang
LOCATE 3, 23
PRINT " Spielregeln : Du bewegst dich"
PRINT SPC(23); "durch einzelne RÑume und mu·t"
PRINT SPC(23); "einen Schatz suchen. Beachte "
PRINT SPC(23); "dabei eventuelle Hinweise wie"
PRINT SPC(23); "sprechende GemÑlde ( bunte "
PRINT SPC(23); "Rechtecke an den WÑnden).  "
PRINT SPC(23); "Sie geben dir die Zugangs - "
PRINT SPC(23); "codes fÅr die RÑume.       "
PRINT SPC(23); "Ich entschuldige mich fÅr den"
PRINT SPC(23); "etwas mi·ratenen Titelhelden"
PRINT SPC(23); "und fÅr die hoffentlich selten"
PRINT SPC(23); "auftretenen Grafikfehlern."
PRINT SPC(23); "Solltest du vorher das Spiel "
PRINT SPC(23); "abbrechen wollen, kannst du  "
PRINT SPC(23); "das mit der Tastenkombination"
PRINT SPC(23); "Strg + Pause.     "
PRINT SPC(23); "                 Viel Spa·  "
LINE (175, 350)-(175, 24), 15
SLEEP 0
CALL story

SUB anfang
CLS
DO UNTIL f = 1000
SCREEN 9
f = f + 1
RANDOMIZE TIMER
a% = INT(RND * 350) + 1
b% = INT(RND * 640) + 1
C% = INT(RND * 15) + 1
d% = INT(RND * 350) + 1
e% = INT(RND * 640) + 1
LINE (b%, a%)-(e%, d%), C%
LOOP
DO UNTIL a = 800
a = a + 1
RANDOMIZE TIMER
C% = INT(RND * 15) + 1
d% = INT(RND * 15) + 1
IF d% = 1 THEN d% = 2
COLOR C%
LOCATE 12, 32
PRINT " Kay Lerch presents "
LOOP
SLEEP 1
DO UNTIL b = 200
b = b + 1
RANDOMIZE TIMER
a% = INT(RND * 15) + 1
b% = INT(RND * 15) + 1
COLOR a%, b%
LOCATE 14, 27
PRINT " Ein ultimatives Labyrinthspiel"
COLOR 1, 1
LOOP
SLEEP 2
COLOR 15, 0
CALL tuer
END SUB

SUB ende
CLS
LOCATE 10, 20
SCREEN 0
COLOR 25
INPUT " Willst du wirklich aufhîren ??? ( j / n )"; g$
IF g$ = "j" THEN CALL undtschuess
IF g$ = "n" THEN CALL room1

END SUB

SUB room1
CLS
SCREEN 9
LINE (0, 10)-(10, 350), 15, BF
LINE (0, 10)-(640, 0), 15, BF
LINE (630, 0)-(640, 350), 15, BF
LINE (0, 350)-(640, 330), 15, BF
LINE (0, 150)-(640, 200), 0, BF
LINE (310, 350)-(380, 330), 0, BF
LINE (200, 10)-(250, 20), 4, BF
LINE (10, 50)-(20, 80), 5, BF
COLOR 4
LOCATE 23, 41
PRINT "Ausgang"
COLOR 10
CIRCLE (320, 175), 2, 10
a = 320
b = 175
DO
 a$ = INKEY$
 SELECT CASE a$
 CASE IS = CHR$(0) + CHR$(72)
 b = b - 5
  IF b < 17 THEN b = 21
 CASE IS = CHR$(0) + CHR$(80)
 b = b + 5
  IF b > 323 THEN b = 320
 CASE IS = CHR$(0) + CHR$(75)
 a = a - 5
  IF a < 17 THEN a = 20
 CASE IS = CHR$(0) + CHR$(77)
 a = a + 5
  IF a > 623 THEN a = 620
 END SELECT
 COLOR 12
 CIRCLE (a, b), 2, 12
 COLOR 0
 LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
 LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
 LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
 LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
 IF a > 310 AND a < 380 AND b = 320 THEN CALL ende
 IF a = 20 AND b > 150 AND b < 200 THEN GOTO 1
 IF a = 620 AND b > 150 AND b < 200 THEN GOTO 17
 IF a > 195 AND a < 255 AND b > 9 AND b < 25 THEN CALL secret1
 COLOR 4
 LOCATE 23, 41
 PRINT "Ausgang"

LOOP
1 CALL tuer
 COLOR 15
 LOCATE 3, 23
 PRINT " Bitte Zugangscode (RAUM 2)"
 PRINT SPC(23); "(Die Codes finden sie hinter "
 PRINT SPC(23); "den GemÑlden ( farbige Recht-"
 PRINT SPC(23); "ecke an den WÑnden ))        "
 PRINT SPC(23); "                             "
 LINE (175, 350)-(175, 24), 15
 INPUT ; h$
 LINE (ac, 350)-(ac, 24), 15
 IF h$ = "final" THEN
 CALL room2
ELSE
  CLS
  LOCATE 12, 33
  PRINT " Leider falsch "
  PRINT SPC(30); " Zugang verweigert"
  SLEEP 0
  CALL room1
 END IF
17 CALL tuer
 COLOR 15
 LOCATE 3, 23
 PRINT " Bitte Zugangscode (RAUM 3)!"
 PRINT SPC(23); "(Die Codes finden sie hinter "
 PRINT SPC(23); "den GemÑlden ( farbige Recht-"
 PRINT SPC(23); "ecke an den WÑnden ))        "
 PRINT SPC(23); "                             "
 LINE (175, 350)-(175, 24), 15
 INPUT ; h$
 LINE (ac, 350)-(ac, 24), 15
 IF h$ = "trittein" THEN
 CALL room3.1
ELSE
  CLS
  LOCATE 12, 33
  PRINT " Leider falsch "
  PRINT SPC(30); " Zugang verweigert"
  SLEEP 0
  CALL room1
END IF

END SUB

SUB room2
  CLS
  SCREEN 9
  LINE (0, 120)-(150, 130), 15, BF
  LINE (0, 180)-(150, 190), 15, BF
  LINE (140, 130)-(150, 10), 15, BF
  LINE (140, 190)-(150, 340), 15, BF
  LINE (140, 10)-(640, 0), 15, BF
  LINE (140, 340)-(640, 330), 15, BF
  LINE (630, 0)-(640, 340), 15, BF
  LINE (640, 150)-(630, 200), 0, BF
  LINE (300, 10)-(370, 0), 0, BF
  COLOR 12
  CIRCLE (320, 175), 2, 12
  LOCATE 20, 3
  COLOR 10
  PRINT " RAUM 2"
 a = 320
 b = 175
 DO
 a$ = INKEY$
 SELECT CASE a$
 CASE IS = CHR$(0) + CHR$(80)
 b = b + 5
 IF b > 320 THEN b = 315
 IF b > 160 AND a < 150 THEN b = 165
 CASE IS = CHR$(0) + CHR$(72)
 b = b - 5
 IF b < 20 THEN b = 25
 IF b < 140 AND a < 150 THEN b = 145
 CASE IS = CHR$(0) + CHR$(75)
 a = a - 5
 IF a < 15 THEN a = 20
 IF a < 160 AND b < 135 THEN a = 165
 IF a < 160 AND b > 172 THEN a = 165
 CASE IS = CHR$(0) + CHR$(77)
 a = a + 5
 IF a > 620 THEN a = 615
 IF a < 160 AND b < 121 THEN a = 165
 IF a < 160 AND b > 179 THEN a = 165
 END SELECT
 COLOR 10
  CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
 IF a = 615 AND b > 150 AND b < 200 THEN CALL room1
 IF a = 20 AND b > 130 AND b < 180 THEN GOTO 9
 IF b = 25 AND a > 310 AND a < 370 THEN GOTO 10
 LOOP
9 CALL tuer
 LOCATE 3, 23
 PRINT " Gib den Zugangscode ein !"
 PRINT SPC(23); " Tip : Der Code ist die Dif-"
 PRINT SPC(23); " ferenz aus 59042 und 4421."
 PRINT SPC(23); "  "
 LINE (175, 350)-(175, 24), 15
 INPUT ; a$
 IF a$ = "54621" THEN
   CALL room4
 ELSE
   CLS
   LOCATE 12, 33
   PRINT " Leider falsch "
   PRINT SPC(30); " Zugang verweigert"
   SLEEP 0
   CALL room2
  END IF
10 CALL tuer
  LOCATE 3, 23
  PRINT " Zugangscode bitte (RAUM5)!"
  PRINT SPC(23); " Den Code finden sie hinter"
  PRINT SPC(23); " den GemÑlden ( farbige Recht-"
  PRINT SPC(23); " ecke an den WÑnden )"
  PRINT SPC(23); ""
  LINE (175, 350)-(175, 24), 15
  INPUT ; b$
  IF b$ = "richtig" THEN
      CALL room5
  ELSE
     CLS
     LOCATE 12, 33
     PRINT " Leider falsch"
     PRINT SPC(30); " Zugang verweigert"
     SLEEP 0
     CALL room2
  END IF

 
END SUB

SUB room3
CLS
SCREEN 9
LINE (0, 140)-(150, 150), 15, BF
LINE (220, 210)-(230, 80), 15, BF
LINE (430, 80)-(70, 70), 15, BF
LINE (0, 140)-(10, 0), 15, BF
LINE (0, 0)-(640, 10), 15, BF
LINE (500, 80)-(510, 210), 15, BF
LINE (510, 210)-(0, 200), 15, BF
LINE (510, 210)-(500, 350), 15, BF
LINE (500, 350)-(640, 335), 15, BF
LINE (640, 350)-(630, 0), 15, BF
LINE (630, 100)-(640, 150), 0, BF
LINE (630, 250)-(640, 300), 0, BF
LINE (230, 100)-(240, 130), 5, BF
CIRCLE (610, 275), 2, 12
COLOR 10
LOCATE 20, 20
PRINT " RAUM 3"
a = 610
b = 275
DO
s$ = INKEY$
SELECT CASE s$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 325 THEN b = 320
IF b > 60 AND a > 490 AND a < 520 THEN b = 55
IF b > 60 AND b < 70 AND a > 65 AND a < 435 THEN b = 55
IF b > 130 AND b < 160 AND a < 155 THEN b = 125
IF b > 190 AND a < 515 THEN b = 185
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 20 THEN b = 25
IF b < 90 AND b > 80 AND a > 80 AND a < 435 THEN b = 95
IF b < 160 AND b > 150 AND a < 155 THEN b = 165
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 60 AND a < 75 AND b > 60 AND b < 90 THEN a = 55
IF a > 620 THEN a = 615
IF a > 210 AND a < 220 AND b > 70 THEN a = 205
IF a > 490 AND a < 510 AND b > 70 THEN a = 485
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 20 THEN a = 25
IF a < 440 AND a > 400 AND b > 60 AND b < 90 THEN a = 445
IF a < 155 AND b > 130 AND b < 160 THEN a = 160
IF a < 240 AND a > 220 AND b > 70 THEN a = 245
IF a < 530 AND a > 510 AND b > 70 THEN a = 535

END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF a = 25 AND b > 150 AND b < 201 THEN CALL room1
IF a = 615 AND b > 99 AND b < 151 THEN GOTO 16
IF a = 615 AND b > 249 AND b < 301 THEN GOTO 18

LOOP
16 CALL tuer
 LOCATE 3, 23
 PRINT "      Tritt ein !!!   "
 PRINT SPC(23); "Hier ist nÑmlich Sackgasse"
 PRINT SPC(23); " ( HiHiHiHiHiHiHiHiHiHi ) "
 LINE (175, 350)-(175, 24), 15
 SLEEP 0
 CALL room9
18 CALL tuer
 LOCATE 3, 23
 PRINT "      Tritt ein !!! "
 PRINT SPC(23); "Hier ist nÑmlich Sackgasse"
 PRINT SPC(23); " ( HiHiHiHiHiHiHiHiHiHi ) "
 LINE (175, 350)-(175, 24), 15
 SLEEP 0
 CALL room9.1

END SUB

SUB room3.1
CLS
SCREEN 9
LINE (0, 140)-(150, 150), 15, BF
LINE (220, 210)-(230, 80), 15, BF
LINE (430, 80)-(70, 70), 15, BF
LINE (0, 140)-(10, 0), 15, BF
LINE (0, 0)-(640, 10), 15, BF
LINE (500, 80)-(510, 210), 15, BF
LINE (510, 210)-(0, 200), 15, BF
LINE (510, 210)-(500, 350), 15, BF
LINE (500, 350)-(640, 335), 15, BF
LINE (640, 350)-(630, 0), 15, BF
LINE (630, 100)-(640, 150), 0, BF
LINE (630, 250)-(640, 300), 0, BF
LINE (230, 100)-(240, 130), 5, BF
CIRCLE (40, 175), 2, 12
COLOR 10
LOCATE 20, 20
PRINT " RAUM 3"
a = 40
b = 175
DO
s$ = INKEY$
SELECT CASE s$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 325 THEN b = 320
IF b > 60 AND a > 490 AND a < 520 THEN b = 55
IF b > 60 AND b < 70 AND a > 65 AND a < 435 THEN b = 55
IF b > 130 AND b < 160 AND a < 155 THEN b = 125
IF b > 190 AND a < 515 THEN b = 185
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 20 THEN b = 25
IF b < 90 AND b > 80 AND a > 80 AND a < 435 THEN b = 95
IF b < 160 AND b > 150 AND a < 155 THEN b = 165
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 60 AND a < 75 AND b > 60 AND b < 90 THEN a = 55
IF a > 620 THEN a = 615
IF a > 210 AND a < 220 AND b > 70 THEN a = 205
IF a > 490 AND a < 510 AND b > 70 THEN a = 485
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 20 THEN a = 25
IF a < 440 AND a > 400 AND b > 60 AND b < 90 THEN a = 445
IF a < 155 AND b > 130 AND b < 160 THEN a = 160
IF a < 240 AND a > 220 AND b > 70 THEN a = 245
IF a < 530 AND a > 510 AND b > 70 THEN a = 535

END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF a = 25 AND b > 150 AND b < 201 THEN CALL room1
IF a = 615 AND b > 99 AND b < 151 THEN GOTO 42
IF a = 615 AND b > 249 AND b < 301 THEN GOTO 43
IF a = 240 AND b > 99 AND b < 131 THEN CALL secret3
LOOP
42 CALL tuer
 LOCATE 3, 23
 PRINT "      Tritt ein !!!   "
 PRINT SPC(23); "Hier ist nÑmlich Sackgasse"
 PRINT SPC(23); "(HiHiHiHiHiHiHiHiHiHiHiHi)"
 LINE (175, 350)-(175, 24), 15
 SLEEP 0
 CALL room9
43 CALL tuer
 LOCATE 3, 23
 PRINT "      Tritt ein !!! "
 PRINT SPC(23); "Hier ist nÑmlich Sackgasse"
 PRINT SPC(23); "(HiHiHiHiHiHiHiHiHiHiHiHi)"
 LINE (175, 350)-(175, 24), 15
 SLEEP 0
 CALL room9.1


END SUB

SUB room3.2
CLS
SCREEN 9
LINE (0, 140)-(150, 150), 15, BF
LINE (220, 210)-(230, 80), 15, BF
LINE (430, 80)-(70, 70), 15, BF
LINE (0, 140)-(10, 0), 15, BF
LINE (0, 0)-(640, 10), 15, BF
LINE (500, 80)-(510, 210), 15, BF
LINE (510, 210)-(0, 200), 15, BF
LINE (510, 210)-(500, 350), 15, BF
LINE (500, 350)-(640, 335), 15, BF
LINE (640, 350)-(630, 0), 15, BF
LINE (630, 100)-(640, 150), 0, BF
LINE (630, 250)-(640, 300), 0, BF
LINE (230, 100)-(240, 130), 5, BF
CIRCLE (610, 125), 2, 12
COLOR 10
LOCATE 20, 20
PRINT " RAUM 3"
a = 610
b = 125
DO
s$ = INKEY$
SELECT CASE s$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 325 THEN b = 320
IF b > 60 AND a > 490 AND a < 520 THEN b = 55
IF b > 60 AND b < 70 AND a > 65 AND a < 435 THEN b = 55
IF b > 130 AND b < 160 AND a < 155 THEN b = 125
IF b > 190 AND a < 515 THEN b = 185
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 20 THEN b = 25
IF b < 90 AND b > 80 AND a > 80 AND a < 435 THEN b = 95
IF b < 160 AND b > 150 AND a < 155 THEN b = 165
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 60 AND a < 75 AND b > 60 AND b < 90 THEN a = 55
IF a > 620 THEN a = 615
IF a > 210 AND a < 220 AND b > 70 THEN a = 205
IF a > 490 AND a < 510 AND b > 70 THEN a = 485
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 20 THEN a = 25
IF a < 440 AND a > 400 AND b > 60 AND b < 90 THEN a = 445
IF a < 155 AND b > 130 AND b < 160 THEN a = 160
IF a < 240 AND a > 220 AND b > 70 THEN a = 245
IF a < 530 AND a > 510 AND b > 70 THEN a = 535

END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF a = 25 AND b > 150 AND b < 201 THEN CALL room1
IF a = 615 AND b > 99 AND b < 151 THEN GOTO 44
IF a = 615 AND b > 249 AND b < 301 THEN GOTO 45
IF a = 240 AND b > 99 AND b < 131 THEN CALL secret3
LOOP
44 CALL tuer
 LOCATE 3, 23
 PRINT "      Tritt ein !!!   "
 PRINT SPC(23); "Hier ist nÑmlich Sackgasse"
 PRINT SPC(23); "(HiHiHiHiHiHiHiHiHiHiHiHi)"
 LINE (175, 350)-(175, 24), 15
 SLEEP 0
 CALL room9
45 CALL tuer
 LOCATE 3, 23
 PRINT "      Tritt ein !!! "
 PRINT SPC(23); "Hier ist nÑmlich Sackgasse"
 PRINT SPC(23); "(HiHiHiHiHiHiHiHiHiHiHiHi)"
 LINE (175, 350)-(175, 24), 15
 SLEEP 0
 CALL room9.1


END SUB

SUB room3.3
CLS
SCREEN 9
LINE (0, 140)-(150, 150), 15, BF
LINE (220, 210)-(230, 80), 15, BF
LINE (430, 80)-(70, 70), 15, BF
LINE (0, 140)-(10, 0), 15, BF
LINE (0, 0)-(640, 10), 15, BF
LINE (500, 80)-(510, 210), 15, BF
LINE (510, 210)-(0, 200), 15, BF
LINE (510, 210)-(500, 350), 15, BF
LINE (500, 350)-(640, 335), 15, BF
LINE (640, 350)-(630, 0), 15, BF
LINE (630, 100)-(640, 150), 0, BF
LINE (630, 250)-(640, 300), 0, BF
LINE (230, 100)-(240, 130), 5, BF
CIRCLE (250, 110), 2, 12
COLOR 10
LOCATE 20, 20
PRINT " RAUM 3"
a = 250
b = 110
DO
s$ = INKEY$
SELECT CASE s$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 325 THEN b = 320
IF b > 60 AND a > 490 AND a < 520 THEN b = 55
IF b > 60 AND b < 70 AND a > 65 AND a < 435 THEN b = 55
IF b > 130 AND b < 160 AND a < 155 THEN b = 125
IF b > 190 AND a < 515 THEN b = 185
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 20 THEN b = 25
IF b < 90 AND b > 80 AND a > 80 AND a < 435 THEN b = 95
IF b < 160 AND b > 150 AND a < 155 THEN b = 165
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 60 AND a < 75 AND b > 60 AND b < 90 THEN a = 55
IF a > 620 THEN a = 615
IF a > 210 AND a < 220 AND b > 70 THEN a = 205
IF a > 490 AND a < 510 AND b > 70 THEN a = 485
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 20 THEN a = 25
IF a < 440 AND a > 400 AND b > 60 AND b < 90 THEN a = 445
IF a < 155 AND b > 130 AND b < 160 THEN a = 160
IF a < 240 AND a > 220 AND b > 70 THEN a = 245
IF a < 530 AND a > 510 AND b > 70 THEN a = 535

END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF a = 25 AND b > 150 AND b < 201 THEN CALL room1
IF a = 615 AND b > 99 AND b < 151 THEN GOTO 48
IF a = 615 AND b > 249 AND b < 301 THEN GOTO 49
IF a = 240 AND b > 99 AND b < 131 THEN CALL secret3
LOOP
48 CALL tuer
 LOCATE 3, 23
 PRINT "      Tritt ein !!!   "
 PRINT SPC(23); "Hier ist nÑmlich Sackgasse"
 PRINT SPC(23); "(HiHiHiHiHiHiHiHiHiHiHiHi)"
 LINE (175, 350)-(175, 24), 15
 SLEEP 0
 CALL room9
49 CALL tuer
 LOCATE 3, 23
 PRINT "      Tritt ein !!! "
 PRINT SPC(23); "Hier ist nÑmlich Sackgasse"
 PRINT SPC(23); "(HiHiHiHiHiHiHiHiHiHiHiHi)"
 LINE (175, 350)-(175, 24), 15
 SLEEP 0
 CALL room9.1


END SUB

SUB room4
8  CLS
   SCREEN 9
   LINE (0, 0)-(10, 280), 15, BF
   LINE (70, 0)-(80, 210), 15, BF
   LINE (70, 210)-(200, 200), 15, BF
   LINE (0, 280)-(640, 270), 15, BF
   LINE (190, 0)-(200, 200), 15, BF
   LINE (270, 0)-(280, 200), 15, BF
   LINE (270, 210)-(640, 200), 15, BF
   CIRCLE (600, 235), 2, 12
   COLOR 10
   LOCATE 23, 20
   PRINT " RAUM 4"
   a = 600
   b = 235
   DO
   a$ = INKEY$
   SELECT CASE a$
   CASE IS = CHR$(0) + CHR$(80)
   b = b + 5
   IF b > 260 THEN b = 255
   CASE IS = CHR$(0) + CHR$(72)
   b = b - 5
   IF b < 20 THEN b = 25
   IF b < 220 AND a > 260 THEN b = 225
   IF b < 220 AND a > 65 AND a < 205 THEN b = 225
   CASE IS = CHR$(0) + CHR$(75)
   a = a - 5
   IF a < 20 THEN a = 25
   IF a < 205 AND a > 190 AND b < 220 THEN a = 210
   CASE IS = CHR$(0) + CHR$(77)
   a = a + 5
   IF a > 620 THEN a = 615
   IF a > 265 AND b < 230 THEN a = 260
   IF a > 65 AND a < 90 AND b < 220 THEN a = 60
   END SELECT
   CIRCLE (a, b), 2, 12
   LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
   LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
   LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
   LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
   IF b = 25 AND a > 205 THEN GOTO 13
   IF b = 25 AND a < 70 THEN GOTO 14
   IF a = 615 AND b > 220 THEN CALL room2

   LOOP
13 CALL tuer
   LOCATE 3, 23
   PRINT " Kein Durchgang !!!!!!"
   PRINT SPC(23); " Die TÅr klemmt. Was ein Pech."
   LINE (175, 350)-(175, 24), 15
   SLEEP 0
   CALL room4.2
14 CALL tuer
   LOCATE 3, 23
   PRINT " Freier Durchgang !!!!!!"
   PRINT SPC(23); " Heute mal kein Code !!!!!!"
   LINE (175, 350)-(175, 24), 15
   SLEEP 0
   CALL room6.2
  
END SUB

SUB room4.1
36  CLS
   SCREEN 9
   LINE (0, 0)-(10, 280), 15, BF
   LINE (70, 0)-(80, 210), 15, BF
   LINE (70, 210)-(200, 200), 15, BF
   LINE (0, 280)-(640, 270), 15, BF
   LINE (190, 0)-(200, 200), 15, BF
   LINE (270, 0)-(280, 200), 15, BF
   LINE (270, 210)-(640, 200), 15, BF
   CIRCLE (35, 40), 2, 12
   COLOR 10
   LOCATE 23, 20
   PRINT " RAUM 4"
   a = 35
   b = 40
   DO
   a$ = INKEY$
   SELECT CASE a$
   CASE IS = CHR$(0) + CHR$(80)
   b = b + 5
   IF b > 260 THEN b = 255
   CASE IS = CHR$(0) + CHR$(72)
   b = b - 5
   IF b < 20 THEN b = 25
   IF b < 220 AND a > 260 THEN b = 225
   IF b < 220 AND a > 65 AND a < 205 THEN b = 225
   CASE IS = CHR$(0) + CHR$(75)
   a = a - 5
   IF a < 20 THEN a = 25
   IF a < 205 AND a > 190 AND b < 220 THEN a = 210
   CASE IS = CHR$(0) + CHR$(77)
   a = a + 5
   IF a > 620 THEN a = 615
   IF a > 265 AND b < 230 THEN a = 260
   IF a > 65 AND a < 90 AND b < 220 THEN a = 60
   END SELECT
   CIRCLE (a, b), 2, 12
   LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
   LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
   LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
   LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
   IF b = 25 AND a > 205 THEN GOTO 37
   IF b = 25 AND a < 70 THEN GOTO 38
   IF a = 615 AND b > 220 THEN CALL room2

   LOOP
37 CALL tuer
   LOCATE 3, 23
   PRINT " Kein Durchgang !!!!!!"
   PRINT SPC(23); " TÅr klemmt ! Was ein Pech !!"
   LINE (175, 350)-(175, 24), 15
   SLEEP 0
   CALL room4.2
38 CALL tuer
   LOCATE 3, 23
   PRINT " Freier Durchgang !!!!!!"
   PRINT SPC(23); " Heute mal kein Code !!!!!!"
   LINE (175, 350)-(175, 24), 15
   SLEEP 0
   CALL room6.2
 

END SUB

SUB room4.2
39  CLS
   SCREEN 9
   LINE (0, 0)-(10, 280), 15, BF
   LINE (70, 0)-(80, 210), 15, BF
   LINE (70, 210)-(200, 200), 15, BF
   LINE (0, 280)-(640, 270), 15, BF
   LINE (190, 0)-(200, 200), 15, BF
   LINE (270, 0)-(280, 200), 15, BF
   LINE (270, 210)-(640, 200), 15, BF
   CIRCLE (235, 40), 2, 12
   COLOR 10
   LOCATE 23, 20
   PRINT " RAUM 4"
   a = 235
   b = 40
   DO
   a$ = INKEY$
   SELECT CASE a$
   CASE IS = CHR$(0) + CHR$(80)
   b = b + 5
   IF b > 260 THEN b = 255
   CASE IS = CHR$(0) + CHR$(72)
   b = b - 5
   IF b < 20 THEN b = 25
   IF b < 220 AND a > 260 THEN b = 225
   IF b < 220 AND a > 65 AND a < 205 THEN b = 225
   CASE IS = CHR$(0) + CHR$(75)
   a = a - 5
   IF a < 20 THEN a = 25
   IF a < 205 AND a > 190 AND b < 220 THEN a = 210
   CASE IS = CHR$(0) + CHR$(77)
   a = a + 5
   IF a > 620 THEN a = 615
   IF a > 265 AND b < 230 THEN a = 260
   IF a > 65 AND a < 90 AND b < 220 THEN a = 60
   END SELECT
   CIRCLE (a, b), 2, 12
   LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
   LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
   LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
   LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
   IF b = 25 AND a > 205 THEN GOTO 40
   IF b = 25 AND a < 70 THEN GOTO 41
   IF a = 615 AND b > 220 THEN CALL room2

   LOOP
40 CALL tuer
   LOCATE 3, 23
   PRINT " Kein Durchgang !!!!!!"
   PRINT SPC(23); " TÅr klemmt ! Was ein Pech !!"
   LINE (175, 350)-(175, 24), 15
   SLEEP 0
   CALL room4.2
41 CALL tuer
   LOCATE 3, 23
   PRINT " Freier Durchgang !!!!!!"
   PRINT SPC(23); " Heute mal kein Code !!!!!!"
   LINE (175, 350)-(175, 24), 15
   SLEEP 0
   CALL room6.2



END SUB

SUB room5
CLS
SCREEN 9
LINE (0, 10)-(640, 0), 15, BF
LINE (630, 0)-(640, 350), 15, BF
LINE (640, 350)-(300, 335), 15, BF
LINE (300, 350)-(310, 200), 15, BF
LINE (310, 210)-(0, 200), 15, BF
LINE (0, 10)-(10, 200), 15, BF
LINE (500, 10)-(640, 200), 15, BF
LINE (200, 0)-(270, 10), 0, BF
LINE (0, 200)-(10, 150), 0, BF
LINE (320, 350)-(390, 335), 0, BF
CIRCLE (390, 150), 2, 12
LOCATE 20, 20
COLOR 10
PRINT " RAUM 5 "
a = 390
b = 150
DO
z$ = INKEY$
SELECT CASE z$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 325 THEN b = 320
IF b > 190 AND a < 310 THEN b = 185
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 20 THEN b = 25
IF b < 210 AND a > 490 THEN b = 215
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 620 THEN a = 615
IF a > 490 AND b < 210 THEN a = 485
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 20 THEN a = 25
IF a < 320 AND b > 190 THEN a = 325
END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF b = 320 AND a > 300 AND a < 370 THEN CALL room2
IF b = 25 AND a > 200 AND a < 270 THEN CALL room7
IF a = 25 AND b > 150 AND b < 200 THEN GOTO 46
LOOP
46 CALL tuer
LOCATE 3, 23
PRINT " Zugangscode bitte(RAUM 6)!"
LOCATE 5, 23
INPUT ; k$
IF k$ = "hundekuchen" THEN
  CALL room6.1.2
ELSE
  CALL room5
END IF

END SUB

SUB room6.1
CLS
SCREEN 9
LINE (200, 0)-(190, 350), 15, BF
LINE (270, 0)-(280, 150), 15, BF
LINE (270, 200)-(280, 350), 15, BF
LINE (0, 150)-(10, 350), 15, BF
LINE (270, 150)-(640, 140), 15, BF
LINE (270, 200)-(640, 210), 15, BF
LINE (0, 150)-(70, 160), 15, BF
LINE (70, 150)-(80, 350), 15, BF
LINE (20, 160)-(50, 170), 8, BF
CIRCLE (235, 310), 2, 12
LOCATE 5, 10
COLOR 10
PRINT " RAUM 6"
a = 235
b = 310
DO
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 335 THEN b = 330
IF b > 190 AND a > 265 THEN b = 185
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 20 THEN b = 25
IF b < 160 AND a > 265 THEN b = 165
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 210 THEN a = 215
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 620 THEN a = 615
IF a > 260 AND b < 160 THEN a = 255
IF a > 260 AND b > 190 THEN a = 255
END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF a = 615 THEN CALL room5
IF b = 330 THEN CALL room4.2
IF b = 25 THEN GOTO 12
LOOP
12 CALL tuer
   LOCATE 3, 23
   PRINT "  Wie hei·t dieses Scho· ?"
   PRINT SPC(23); "   Bitte klein schreiben "
   PRINT SPC(23); ""
   LOCATE 6, 10
   PRINT "..........."
   LINE (175, 350)-(175, 24), 15
   LOCATE 6, 1
   INPUT " Schlo· "; k$
   IF k$ = "waswei·ich" THEN
      CALL room8
   ELSE
      CLS
      LOCATE 12, 33
      PRINT " Leider falsch "
      PRINT SPC(30); " Zugang verweigert"
      SLEEP 0
      CALL room6.1.1
   END IF


END SUB

SUB room6.1.1
CLS
SCREEN 9
LINE (200, 0)-(190, 350), 15, BF
LINE (270, 0)-(280, 150), 15, BF
LINE (270, 200)-(280, 350), 15, BF
LINE (0, 150)-(10, 350), 15, BF
LINE (270, 150)-(640, 140), 15, BF
LINE (270, 200)-(640, 210), 15, BF
LINE (0, 150)-(70, 160), 15, BF
LINE (70, 150)-(80, 350), 15, BF
LINE (20, 160)-(50, 170), 8, BF
CIRCLE (235, 30), 2, 12
LOCATE 5, 10
COLOR 10
PRINT " RAUM 6"
a = 235
b = 30
DO
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 335 THEN b = 330
IF b > 190 AND a > 265 THEN b = 185
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 20 THEN b = 25
IF b < 160 AND a > 265 THEN b = 165
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 210 THEN a = 215
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 620 THEN a = 615
IF a > 260 AND b < 160 THEN a = 255
IF a > 260 AND b > 190 THEN a = 255
END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF a = 615 THEN CALL room5
IF b = 330 THEN CALL room4.2
IF b = 25 THEN GOTO 34
LOOP
34 CALL tuer
   LOCATE 3, 23
   PRINT "  Wie hei·t dieses Scho· ?"
   PRINT SPC(23); "   Bitte klein schreiben "
   PRINT SPC(23); ""
   LOCATE 6, 10
   PRINT "..........."
   LINE (175, 350)-(175, 24), 15
   LOCATE 6, 1
   INPUT " Schlo· "; k$
   IF k$ = "waswei·ich" THEN
      CALL room8
   ELSE
      CLS
      LOCATE 12, 33
      PRINT " Leider falsch "
      PRINT SPC(30); " Zugang verweigert"
      SLEEP 0
      CALL room6.1.1
   END IF




END SUB

SUB room6.1.2
CLS
SCREEN 9
LINE (200, 0)-(190, 350), 15, BF
LINE (270, 0)-(280, 150), 15, BF
LINE (270, 200)-(280, 350), 15, BF
LINE (0, 150)-(10, 350), 15, BF
LINE (270, 150)-(640, 140), 15, BF
LINE (270, 200)-(640, 210), 15, BF
LINE (0, 150)-(70, 160), 15, BF
LINE (70, 150)-(80, 350), 15, BF
LINE (20, 160)-(50, 170), 8, BF
CIRCLE (600, 175), 2, 12
LOCATE 5, 10
COLOR 10
PRINT " RAUM 6"
a = 610
b = 175
DO
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 335 THEN b = 330
IF b > 190 AND a > 265 THEN b = 185
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 20 THEN b = 25
IF b < 160 AND a > 265 THEN b = 165
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 210 THEN a = 215
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 620 THEN a = 615
IF a > 260 AND b < 160 THEN a = 255
IF a > 260 AND b > 190 THEN a = 255
END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF a = 615 THEN CALL room5
IF b = 330 THEN CALL room4.2
IF b = 25 THEN GOTO 35
LOOP
35 CALL tuer
   LOCATE 3, 23
   PRINT "  Wie hei·t dieses Scho· ?"
   PRINT SPC(23); "   Bitte klein schreiben "
   PRINT SPC(23); ""
   LOCATE 6, 10
   PRINT "..........."
   LINE (175, 350)-(175, 24), 15
   LOCATE 6, 1
   INPUT " Schlo· "; k$
   IF k$ = "waswei·ich" THEN
      CALL room8
   ELSE
      CLS
      LOCATE 12, 33
      PRINT " Leider falsch "
      PRINT SPC(30); " Zugang verweigert"
      SLEEP 0
      CALL room6.1.1
   END IF



END SUB

SUB room6.2
CLS
SCREEN 9
LINE (200, 0)-(190, 350), 15, BF
LINE (270, 0)-(280, 150), 15, BF
LINE (270, 200)-(280, 350), 15, BF
LINE (0, 150)-(10, 350), 15, BF
LINE (270, 150)-(640, 140), 15, BF
LINE (270, 200)-(640, 210), 15, BF
LINE (0, 150)-(70, 160), 15, BF
LINE (70, 150)-(80, 350), 15, BF
LINE (20, 160)-(50, 170), 8, BF
CIRCLE (35, 315), 2, 12
LOCATE 5, 10
COLOR 10
PRINT " RAUM 6"
a = 35
b = 315
DO
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 330 THEN b = 325
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 170 THEN b = 175
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 20 THEN a = 25
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 60 THEN a = 55
END SELECT
CIRCLE (a, b), 2, 12
   LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
   LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
   LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
   LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF b = 325 THEN CALL room4.1
IF b = 170 AND a > 19 AND a < 51 THEN CALL secret2
LOOP
END SUB

SUB room6.2.2
CLS
SCREEN 9
LINE (200, 0)-(190, 350), 15, BF
LINE (270, 0)-(280, 150), 15, BF
LINE (270, 200)-(280, 350), 15, BF
LINE (0, 150)-(10, 350), 15, BF
LINE (270, 150)-(640, 140), 15, BF
LINE (270, 200)-(640, 210), 15, BF
LINE (0, 150)-(70, 160), 15, BF
LINE (70, 150)-(80, 350), 15, BF
LINE (20, 170)-(50, 160), 8, BF
CIRCLE (35, 180), 2, 12
LOCATE 5, 10
COLOR 10
PRINT " RAUM 6"
a = 35
b = 180
DO
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 330 THEN b = 325
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 170 THEN b = 175
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 20 THEN a = 25
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 60 THEN a = 55
END SELECT
CIRCLE (a, b), 2, 12
   LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
   LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
   LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
   LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF b = 325 THEN CALL room4.1
IF b = 170 AND a > 19 AND a < 51 THEN CALL secret2
LOOP

END SUB

SUB room7
CLS
SCREEN 9
LINE (0, 0)-(640, 10), 15, BF
LINE (640, 0)-(630, 240), 15, BF
LINE (640, 250)-(250, 240), 15, BF
LINE (250, 250)-(260, 350), 15, BF
LINE (260, 350)-(0, 335), 15, BF
LINE (0, 0)-(10, 350), 15, BF
LINE (70, 350)-(140, 335), 0, BF
CIRCLE (105, 310), 2, 12
COLOR 10
LOCATE 21, 50
PRINT " RAUM 7 "
a = 105
b = 310
DO
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 230 AND a > 245 THEN b = 225
IF b > 325 THEN b = 320
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 20 THEN b = 25
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 20 THEN a = 25
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 620 THEN a = 615
IF a > 240 AND b > 230 THEN a = 235
END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF b = 320 AND a > 69 AND a < 141 THEN CALL room5
LOOP

END SUB

SUB room8
26 CLS
SCREEN 9
LINE (560, 270)-(490, 350), 15, BF
LINE (505, 270)-(545, 125), 15, BF
LINE (535, 125)-(10, 150), 15, BF
LINE (1, 150)-(40, 25), 15, BF
LINE (10, 50)-(200, 25), 15, BF
LINE (190, 50)-(230, 0), 15, BF
CIRCLE (525, 330), 2, 12
LOCATE 15, 20
COLOR 10
PRINT " RAUM 8"
a = 525
b = 330
DO
RANDOMIZE TIMER
a% = INT(RND * 1) + 1
COLOR 12
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 340 THEN CALL room6.1.1
IF b > 140 AND b < 155 AND a < 515 THEN b = 135
IF b > 45 AND b < 60 AND a > 30 THEN b = 40
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 0 THEN GOTO 25
IF b < 35 AND b > 5 AND a < 200 THEN b = 40
IF b < 133 AND b > 100 AND a > 30 THEN b = 138
IF b < 280 AND b > 250 AND a < 510 THEN b = 275
IF b < 280 AND b > 250 AND a > 540 AND a < 560 THEN b = 275
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 10 THEN a = 15
IF a < 200 AND b < 35 THEN a = 205
IF a < 515 AND b > 145 AND b < 280 THEN a = 520
IF a < 500 AND b > 270 THEN a = 505
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 220 AND b > 0 AND b < 50 THEN a = 215
IF a > 34 AND b < 130 AND b > 45 THEN a = 29
IF a > 535 AND b < 270 THEN a = 530
IF a > 550 AND b > 269 THEN a = 545
END SELECT
CIRCLE (a, b), 2, 12
   LINE (a + 2, b + 2)-(a + 6, b + 2), 15, BF
   LINE (a - 2, b + 2)-(a - 6, b + 2), 15, BF
   LINE (a + 2, b + 2)-(a - 2, b - 6), 15, BF
   LINE (a - 2, b - 2)-(a + 2, b + 6), 15, BF
LOOP
25 CALL tuer
LOCATE 3, 23
PRINT " Du bist FAST am Ziel. Nach "
PRINT SPC(23); " dieser TÅr ist Schlu·."
LINE (175, 350)-(175, 24), 15
SLEEP 5
CALL tuer
LOCATE 3, 23
PRINT " Nur ein paar Fragen !!"
SLEEP 2
LOCATE 3, 23
INPUT "Nenne alle Primzahlen "; j$
IF j$ = "wei·nich" THEN
   GOTO 27
ELSE GOTO 29
END IF
27 CALL tuer
LOCATE 3, 23
PRINT "Nur noch schnell die Haupt-"
LOCATE 4, 23
INPUT "stadt von Vanuatu :"; a$
IF a$ = "wei·nich" THEN
   GOTO 28
ELSE GOTO 29
END IF
28 CALL ziel
29 CLS
LOCATE 12, 30
PRINT " FALSCH !!, Komm spÑter wieder!! "
SLEEP 0
CALL room8.1

END SUB

SUB room8.1
CLS
SCREEN 9
LINE (560, 270)-(490, 350), 15, BF
LINE (505, 270)-(545, 125), 15, BF
LINE (535, 125)-(10, 150), 15, BF
LINE (1, 150)-(40, 25), 15, BF
LINE (10, 50)-(200, 25), 15, BF
LINE (190, 50)-(230, 0), 15, BF
CIRCLE (210, 30), 2, 12
LOCATE 15, 20
COLOR 10
PRINT " RAUM 8"
a = 210
b = 30
DO
RANDOMIZE TIMER
a% = INT(RND * 1) + 1
COLOR 12
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 340 THEN CALL room6.1.1
IF b > 140 AND b < 155 AND a < 515 THEN b = 135
IF b > 45 AND b < 60 AND a > 30 THEN b = 40
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 0 THEN GOTO 33
IF b < 35 AND b > 5 AND a < 200 THEN b = 40
IF b < 133 AND b > 100 AND a > 30 THEN b = 138
IF b < 280 AND b > 250 AND a < 510 THEN b = 275
IF b < 280 AND b > 250 AND a > 540 AND a < 560 THEN b = 275
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 10 THEN a = 15
IF a < 200 AND b < 35 THEN a = 205
IF a < 515 AND b > 145 AND b < 280 THEN a = 520
IF a < 500 AND b > 270 THEN a = 505
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 220 AND b > 0 AND b < 50 THEN a = 215
IF a > 34 AND b < 130 AND b > 45 THEN a = 29
IF a > 535 AND b < 270 THEN a = 530
IF a > 550 AND b > 269 THEN a = 545
END SELECT
CIRCLE (a, b), 2, 12
   LINE (a + 2, b + 2)-(a + 6, b + 2), 15, BF
   LINE (a - 2, b + 2)-(a - 6, b + 2), 15, BF
   LINE (a + 2, b + 2)-(a - 2, b - 6), 15, BF
   LINE (a - 2, b - 2)-(a + 2, b + 6), 15, BF
LOOP
33 CALL tuer
LOCATE 3, 23
PRINT " Du bist FAST am Ziel. Nach "
PRINT SPC(23); " dieser TÅr ist Schlu·."
LINE (175, 350)-(175, 24), 15
SLEEP 5
CALL tuer
LOCATE 3, 23
PRINT " Nur ein paar Fragen !!"
SLEEP 2
LOCATE 3, 23
INPUT "Nenne alle Primzahlen "; j$
IF j$ = "wei·nich" THEN
   GOTO 30
ELSE GOTO 32
END IF
30 CALL tuer
LOCATE 3, 23
PRINT "Nur noch schnell die Haupt-"
LOCATE 4, 23
INPUT "stadt von Vanuatu :"; a$
IF a$ = "wei·nich" THEN
   GOTO 31
ELSE GOTO 32
END IF
31 CALL ziel
32 CLS
LOCATE 12, 30
PRINT " FALSCH !!, Komm spÑter wieder!! "
SLEEP 0
CALL room8.1

END SUB

SUB room9
CLS
SCREEN 9
LINE (0, 100)-(550, 90), 15, BF
LINE (0, 150)-(480, 160), 15, BF
LINE (480, 150)-(470, 250), 15, BF
LINE (550, 90)-(560, 300), 15, BF
LINE (560, 310)-(0, 300), 15, BF
LINE (0, 250)-(480, 240), 15, BF
COLOR 10
LOCATE 15, 20
PRINT " RAUM 9 "
CIRCLE (30, 125), 2, 12
a = 30
b = 125
DO
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 290 THEN b = 285
IF b > 140 AND b < 200 AND a < 485 THEN b = 135
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 110 THEN b = 115
IF b < 260 AND b > 200 AND a < 485 THEN b = 265
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 540 THEN a = 535
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 490 AND b > 140 AND b < 260 THEN a = 495
IF a < 20 AND b > 240 THEN CALL room3
IF a < 20 AND b < 240 THEN CALL room3.2
END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
LOOP
END SUB

SUB room9.1
CLS
SCREEN 9
LINE (0, 100)-(550, 90), 15, BF
LINE (0, 150)-(480, 160), 15, BF
LINE (480, 150)-(470, 250), 15, BF
LINE (550, 90)-(560, 300), 15, BF
LINE (560, 310)-(0, 300), 15, BF
LINE (0, 250)-(480, 240), 15, BF
COLOR 10
LOCATE 15, 20
PRINT " RAUM 9 "
CIRCLE (30, 275), 2, 12
a = 30
b = 275
DO
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 290 THEN b = 285
IF b > 140 AND b < 200 AND a < 485 THEN b = 135
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 110 THEN b = 115
IF b < 260 AND b > 200 AND a < 485 THEN b = 265
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 540 THEN a = 535
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 490 AND b > 140 AND b < 260 THEN a = 495
IF a < 20 AND b > 240 THEN CALL room3
IF a < 20 AND b < 240 THEN CALL room3.2
END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
LOOP


END SUB

SUB secret1
CLS
SCREEN 9
lippe = 168
LINE (175, 25)-(200, 300), 1, BF
LINE (200, 300)-(425, 275), 1, BF
LINE (425, 275)-(400, 25), 1, BF
LINE (400, 25)-(175, 50), 1, BF
LINE (200, 50)-(175, 25), 0
LINE (400, 50)-(425, 25), 0
LINE (200, 275)-(175, 300), 0
LINE (400, 275)-(425, 300), 0
LINE (200, 50)-(400, 275), 4, BF
CIRCLE (300, 150), 40, 15
LINE (290, 170)-(310, 170), 15
CIRCLE (285, 140), 5, 15
CIRCLE (315, 140), 5, 15
LINE (250, 190)-(350, 275), 9, BF
LINE (310, 190)-(290, 180), 9, BF
COLOR 1
DO UNTIL p = 25
p = p + 1
IF p < 6 THEN
   LOCATE 23, 1
   PRINT " Willkommen im Schlo· Waswei·ich !!! Du hast es gewagt den Schatz zu suchen"
ELSEIF p = 6 THEN
   LINE (0, 330)-(640, 350), 0, BF
ELSEIF p > 6 AND p < 11 THEN
   LOCATE 23, 1
   PRINT " Ich kann dir helfen. Ich, als guter Geist dieses Hauses, kînnte dir einen Weg"
ELSEIF p = 11 THEN
   LINE (0, 330)-(640, 350), 0, BF
ELSEIF p > 11 AND p < 16 THEN
   LOCATE 23, 1
   PRINT " zeigen, der dir die Suche erleichtert. öbrigens kann ich dir ein paar Zugangs -"
ELSEIF p = 16 THEN
   LINE (0, 330)-(640, 350), 0, BF
ELSEIF p > 16 AND p < 23 THEN
   LOCATE 23, 1
   PRINT " codes nennen. RAUM 2 : final ; RAUM 3 : trittein                               "
ELSEIF p = 23 THEN
   LINE (0, 330)-(640, 350), 0, BF
ELSEIF p = 24 THEN
   LOCATE 23, 1
   INPUT " Bist du au·erdem interessiert an einem Geheimgang ? ( j / n ) : "; m$
END IF
IF m$ = "j" THEN GOTO 20
IF m$ = "n" THEN GOTO 21
LINE (290, 166)-(310, 166), 15
LINE (290, 168)-(310, 168), 4
SLEEP 1
LINE (290, 166)-(310, 166), 4
LINE (290, 168)-(310, 168), 15
SLEEP 1
LOOP
20 SLEEP 1
FOR q = 200 TO 400
LINE (q, 50)-(q, 275), 0, BF
NEXT
SLEEP 1
DO UNTIL f = 500
f = f + 1
RANDOMIZE TIMER
h% = INT(RND * 15) + 1
COLOR h%
LOCATE 13, 29
PRINT " Ohh, ein Geheimgang "
LOOP
SLEEP 2
CALL secroom1
21 CALL room1

END SUB

SUB secret2
CLS
SCREEN 9
lippe = 168
LINE (175, 25)-(200, 300), 1, BF
LINE (200, 300)-(425, 275), 1, BF
LINE (425, 275)-(400, 25), 1, BF
LINE (400, 25)-(175, 50), 1, BF
LINE (200, 50)-(175, 25), 0
LINE (400, 50)-(425, 25), 0
LINE (200, 275)-(175, 300), 0
LINE (400, 275)-(425, 300), 0
LINE (200, 50)-(400, 275), 4, BF
CIRCLE (300, 150), 40, 15
LINE (290, 170)-(310, 170), 15
CIRCLE (285, 140), 5, 15
CIRCLE (315, 140), 5, 15
LINE (250, 190)-(350, 275), 9, BF
LINE (310, 190)-(290, 180), 9, BF
COLOR 1
DO UNTIL p = 14
p = p + 1
IF p < 6 THEN
   LOCATE 23, 1
   PRINT " Du schon wieder. Na gut. Wenn du abhaust, geb ich dir den Code fÅr Raum 5.   "
ELSEIF p = 6 THEN
   LINE (0, 330)-(640, 350), 0, BF
ELSEIF p > 6 AND p < 14 THEN
   LOCATE 23, 1
   PRINT " Er lautet richtig. Verstanden !!! VERSTANDEN !!! HAU AB, DU STINKST !!!!!!!!!"
END IF
LINE (290, 166)-(310, 166), 15
LINE (290, 168)-(310, 168), 4
SLEEP 1
LINE (290, 166)-(310, 166), 4
LINE (290, 168)-(310, 168), 15
SLEEP 1
LOOP
SLEEP 1
CALL room6.2.2

END SUB

SUB secret3
CLS
SCREEN 9
lippe = 168
LINE (175, 25)-(200, 300), 1, BF
LINE (200, 300)-(425, 275), 1, BF
LINE (425, 275)-(400, 25), 1, BF
LINE (400, 25)-(175, 50), 1, BF
LINE (200, 50)-(175, 25), 0
LINE (400, 50)-(425, 25), 0
LINE (200, 275)-(175, 300), 0
LINE (400, 275)-(425, 300), 0
LINE (200, 50)-(400, 275), 4, BF
CIRCLE (300, 150), 40, 15
LINE (290, 170)-(310, 170), 15
CIRCLE (285, 140), 5, 15
CIRCLE (315, 140), 5, 15
LINE (250, 190)-(350, 275), 9, BF
LINE (310, 190)-(290, 180), 9, BF
COLOR 1
DO UNTIL p = 14
p = p + 1
IF p < 6 THEN
   LOCATE 23, 1
   PRINT " Ich mach es kurz. FÅr meine Statistenrolle hier bekomm ich eh nichts .       "
ELSEIF p = 6 THEN
   LINE (0, 330)-(640, 350), 0, BF
ELSEIF p > 6 AND p < 14 THEN
   LOCATE 23, 1
   PRINT " Willst du in Raum 6 hinein , gib einfach hundekuchen ein . Gut was ??        "
END IF
LINE (290, 166)-(310, 166), 15
LINE (290, 168)-(310, 168), 4
SLEEP 1
LINE (290, 166)-(310, 166), 4
LINE (290, 168)-(310, 168), 15
SLEEP 1
LOOP
SLEEP 1
CALL room3.3

END SUB

SUB secroom1
CLS
SCREEN 9
LINE (0, 10)-(640, 0), 15, BF
LINE (640, 0)-(630, 60), 15, BF
LINE (640, 60)-(80, 70), 15, BF
LINE (70, 60)-(80, 350), 15, BF
LINE (0, 0)-(10, 350), 15, BF
LINE (0, 350)-(80, 335), 15, BF
LINE (630, 20)-(620, 50), 13, BF
LINE (25, 335)-(65, 325), 4, BF
CIRCLE (44, 300), 2, 12
a = 44
b = 300
GOTO 24
23 CLS
SCREEN 9
LINE (0, 10)-(640, 0), 15, BF
LINE (640, 0)-(630, 60), 15, BF
LINE (640, 60)-(80, 70), 15, BF
LINE (70, 60)-(80, 350), 15, BF
LINE (0, 0)-(10, 350), 15, BF
LINE (0, 350)-(80, 335), 15, BF
LINE (630, 20)-(620, 50), 13, BF
LINE (25, 335)-(65, 325), 4, BF
CIRCLE (600, 35), 2, 12
a = 600
b = 35

24 DO
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
b = b + 5
IF b > 310 THEN b = 305
IF b > 50 AND a > 65 THEN b = 45
CASE IS = CHR$(0) + CHR$(72)
b = b - 5
IF b < 20 THEN b = 25
CASE IS = CHR$(0) + CHR$(75)
a = a - 5
IF a < 20 THEN a = 25
CASE IS = CHR$(0) + CHR$(77)
a = a + 5
IF a > 610 THEN a = 605
IF a > 60 AND b > 65 THEN a = 55
END SELECT
CIRCLE (a, b), 2, 12
  LINE (a + 2, b + 2)-(a + 6, b + 2), 0, BF
  LINE (a - 2, b + 2)-(a - 6, b + 2), 0, BF
  LINE (a + 2, b + 2)-(a - 2, b - 6), 0, BF
  LINE (a - 2, b - 2)-(a + 2, b + 6), 0, BF
IF a = 605 THEN GOTO 22
IF b = 305 THEN CALL room1
LOOP
22 CLS
SCREEN 9
lippe = 168
LINE (175, 25)-(200, 300), 1, BF
LINE (200, 300)-(425, 275), 1, BF
LINE (425, 275)-(400, 25), 1, BF
LINE (400, 25)-(175, 50), 1, BF
LINE (200, 50)-(175, 25), 0
LINE (400, 50)-(425, 25), 0
LINE (200, 275)-(175, 300), 0
LINE (400, 275)-(425, 300), 0
LINE (200, 50)-(400, 275), 12, BF
CIRCLE (300, 150), 40, 0
LINE (290, 170)-(310, 170), 0
CIRCLE (285, 140), 5, 0
CIRCLE (315, 140), 5, 0
LINE (250, 190)-(350, 275), 0, BF
LINE (310, 190)-(290, 180), 0, BF
COLOR 1
DO UNTIL p = 26
p = p + 1
IF p < 6 THEN
   LOCATE 23, 1
   PRINT " Oh, ich habe auf dich gewartet, um dir einen wichtigen Tip zu geben . Er wird"
ELSEIF p = 6 THEN
   LINE (0, 330)-(640, 350), 0, BF
ELSEIF p > 6 AND p < 11 THEN
   LOCATE 23, 1
   PRINT " am Ziel deiner Suche behilflich sein. Egal welche Fragen dir an der letzten TÅr"
ELSEIF p = 11 THEN
   LINE (0, 330)-(640, 350), 0, BF
ELSEIF p > 11 AND p < 16 THEN
   LOCATE 23, 1
   PRINT " gestellt werden, beantworte sie mit wei·nich und dir wird der Zugang genehmigt"
ELSEIF p = 16 THEN
   LINE (0, 330)-(640, 350), 0, BF
ELSEIF p > 16 AND p < 23 THEN
   LOCATE 23, 1
   PRINT " werden. Vergi· das nicht, sonst ist deine Suche vergebens. So, jetzt geh ick   "
ELSEIF p = 23 THEN
   LINE (0, 330)-(640, 350), 0, BF
ELSEIF p > 23 THEN
   LOCATE 23, 1
   PRINT " erst mal kacken !!!                                                          "
END IF
LINE (290, 166)-(310, 166), 0
LINE (290, 168)-(310, 168), 12
SLEEP 1
LINE (290, 166)-(310, 166), 12
LINE (290, 168)-(310, 168), 0
SLEEP 1
LOOP
GOTO 23
END SUB

SUB story
CLS
LINE (0, 250)-(640, 350), 2, BF   'GrÅnflÑche
LINE (225, 150)-(475, 250), 1, BF 'Hauptteil GebÑude
LINE (310, 100)-(375, 150), 1, BF 'Gro·er Turm
LINE (225, 125)-(250, 150), 1, BF '1.Kleiner Turm
LINE (270, 125)-(295, 150), 1, BF '2.Kleiner Turm
LINE (390, 125)-(415, 150), 1, BF '3.Kleiner Turm
LINE (435, 125)-(460, 150), 1, BF '4.Kleiner Turm
LINE (250, 175)-(270, 200), 0, BF 'Linkes Fenster
LINE (425, 175)-(445, 200), 0, BF 'Rechtes Fenster
LINE (315, 175)-(385, 250), 0, BF 'Tor
LINE (325, 100)-(335, 50), 1, BF  'Fahnenmast
flagge$ = "F10 G10"
DRAW "C4 X" + VARPTR$(flagge$)
COLOR 14
PSET (50, 50)
PSET (125, 50)
PSET (75, 100)
PSET (25, 200)
PSET (400, 25)
PSET (525, 50)
PSET (600, 100)
PSET (550, 175)
PSET (125, 175)
PSET (144, 134)
PSET (175, 75)
LOCATE 22, 1
 PRINT " Vor etwa 200 Jahren gab es ein Schlo· namens Waswei·ich. In diesem Schlo·      "
 SLEEP 0
 LINE (0, 250)-(640, 350), 2, BF
 SOUND 500, 1
 LOCATE 22, 1
 PRINT " wohnte ein alter Graf, der es bis heute nicht Åbers Herz brachte sein Heim     "
 SLEEP 0
 LINE (0, 250)-(640, 350), 2, BF
 SOUND 500, 1
 LOCATE 22, 1
 PRINT " zu verlassen. Zwar ist er lÑngst tot, aber er hat sein Schlo· mit Fallen ge-   "
 SLEEP 0
 SOUND 500, 1
 LINE (0, 250)-(640, 350), 2, BF
 LOCATE 22, 1
 PRINT " schÅtzt, die Eindringlinge in die Flucht schlagen sollen. Doch du hast die Auf-"
 SLEEP 0
 SOUND 500, 1
 LINE (0, 250)-(640, 350), 2, BF
 LOCATE 22, 1
 PRINT " Aufgabe das Schlo· zu erkunden und den Schatz, den es dort drinnen gibt, zu ho-"
 SLEEP 0
 SOUND 500, 1
 LINE (0, 250)-(640, 350), 2, BF
 LOCATE 22, 1
 PRINT " len, um die Belohnung zu bekommen, die ein Museum fÅr diesen Schatz zahlt .    "
 SLEEP 0
 LINE (0, 250)-(640, 350), 2, BF
 g = g + 1
CLS
SCREEN 9
ab = 250
ac = 225
ad = 475
ae = 150
bb = 100
bc = ae
bd = 375
be = 310
turmoben = 125
turm1links = 225
turm1rechts = 250
turm2links = 270
turm2rechts = 295
turm3links = 390
turm3rechts = 415
turm4links = 435
turm4rechts = 460
fensteroben = 175
fensterunten = 200
fensterllinks = 250
fensterlrechts = 270
fensterrlinks = 425
fensterrrechts = 445
toroben = 175
torlinks = 310
torrechts = 390
mastoben = 50
mastlinks = 325
mastrechts = 335
LINE (0, ab)-(640, 350), 2, BF   'GrÅnflÑche
LINE (ac, ae)-(ad, ab), 1, BF 'Hauptteil GebÑude
LINE (be, bb)-(bd, ae), 1, BF 'Gro·er Turm
LINE (turm1links, turmoben)-(turm1rechts, ae), 1, BF '1.Kleiner Turm
LINE (turm2links, turmoben)-(turm2rechts, ae), 1, BF '2.Kleiner Turm
LINE (turm3links, turmoben)-(turm3rechts, ae), 1, BF '3.Kleiner Turm
LINE (turm4links, turmoben)-(turm4rechts, ae), 1, BF '4.Kleiner Turm
LINE (fensterllinks, fensteroben)-(fensterlrechts, fensterunten), 0, BF 'Linkes Fenster
LINE (fensterrlinks, fensteroben)-(fensterrrechts, fensterunten), 0, BF 'Rechtes Fenster
LINE (torlinks, toroben)-(torrechts, ab), 0, BF 'Tor
LINE (mastlinks, bb)-(mastrechts, mastoben), 1, BF  'Fahnenmast
SLEEP 2
DO UNTIL h = 900
h = h + 100
CLS
ab = ab + 30
ac = ac - 100
ad = ad + 100
ae = ae - 50
bb = bb - 80
bd = bd + 26
be = be - 26
turmoben = turmoben - 60
turm1links = turm1links - 100
turm1rechts = turm1rechts - 70
turm2links = turm2links - 60
turm2rechts = turm2rechts - 30
turm3links = turm3links + 30
turm3rechts = turm3rechts + 60
turm4links = turm4links + 70
turm4rechts = turm4rechts + 100
fenstenoben = fensteroben - 30
fensterunten = fensterunten + 20
fensterllinks = fensterllinks - 100
fensterlrechts = fensterlrechts - 70
fensterrlinks = fensterrlinks + 70
fensterrrechts = fensterrrechts + 100
toroben = toroben - 30
torlinks = torlinks - 35
torrechts = torrechts + 35
mastoben = mastoben - 80
mastlinks = mastlinks - 4
mastrechts = mastrechts + 4
LINE (0, ab)-(640, 350), 2, BF   'GrÅnflÑche
LINE (ac, ae)-(ad, ab), 1, BF 'Hauptteil GebÑude
LINE (be, bb)-(bd, ae), 1, BF 'Gro·er Turm
LINE (turm1links, turmoben)-(turm1rechts, ae), 1, BF '1.Kleiner Turm
LINE (turm2links, turmoben)-(turm2rechts, ae), 1, BF '2.Kleiner Turm
LINE (turm3links, turmoben)-(turm3rechts, ae), 1, BF '3.Kleiner Turm
LINE (turm4links, turmoben)-(turm4rechts, ae), 1, BF '4.Kleiner Turm
LINE (fensterllinks, fensteroben)-(fensterlrechts, fensterunten), 0, BF 'Linkes Fenster
LINE (fensterrlinks, fensteroben)-(fensterrrechts, fensterunten), 0, BF 'Rechtes Fenster
LINE (torlinks, toroben)-(torrechts, ab), 0, BF 'Tor
LINE (mastlinks, bb)-(mastrechts, mastoben), 1, BF  'Fahnenmast
SOUND h, 6
LOOP
g = 1
CALL room1
END SUB

SUB tuer
CLS
SCREEN 9
LINE (250, 25)-(350, 150), 6, BF
LINE (270, 85)-(290, 90), 0, BF
LINE (350, 150)-(250, 150), 15
LINE (250, 150)-(100, 350), 15
LINE (350, 150)-(500, 350), 15
PRINT " DrÅcken sie die Cursortaste ( nach oben ), um einen Schritt zu machen "
ab = 350
ac = 250
ad = 150
ae = 100
af = 290
ag = 270
ah = 90
ai = 100
aj = 500
ak = 85
DO UNTIL schritt = 3
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(72)
schritt = schritt + 1
ab = ab + 25
ac = ac - 25
ad = ad + 62
ae = ae + 50
af = af - 10
ag = ag - 15
ah = ah + 30
ak = ak + 30
CLS
SCREEN 9
LINE (ac, 25)-(ab, ad), 6, BF
LINE (ag, ak)-(af, ah), 0, BF
LINE (ab, ad)-(ac, ad), 15
LINE (ac, ad)-(ai, 350), 15
LINE (ab, ad)-(aj, 350), 15
END SELECT
LOOP
CLS
SCREEN 9
FOR al = 175 TO 425
LINE (al, 25)-(ab, ad), 6, BF
LINE (ag, ak)-(af, ah), 0, BF
LINE (ab, ad)-(al, ad), 15
LINE (al, ad)-(ai, 350), 15
LINE (ab, ad)-(aj, 350), 15
LINE (ac, 350)-(ac, 24), 15
LINE (ac, 24)-(ab, 24), 15
LINE (ab, 24)-(ab, 350), 15
LINE (al - 50, 25)-(al, 350), 0, BF
NEXT
LINE (ab, 24)-(ab, 350), 15
SLEEP 1

END SUB

SUB undtschuess
CLS
SCREEN 9
FOR y = 1 TO 640
LINE (0, 100)-(y, 150), 1, BF
NEXT
LOCATE 9, 28
COLOR 10
PRINT " Warum gleich aufgeben ??? "
LINE (220, 200)-(220, 280), 10, BF
LINE (220, 200)-(420, 200), 10, BF
LINE (420, 200)-(420, 280), 10, BF
LINE (420, 280)-(220, 280), 10, BF
LOCATE 1, 1
PRINT " ************************************ ENDE ***********************************"
LOCATE 16, 29
COLOR 4
PRINT "    programmiert von"
LOCATE 18, 30
COLOR 7
PRINT "      Kay Lerch     "
SOUND 300, 1
SLEEP 3
END
END SUB

SUB ziel
CLS
SCREEN 9
LINE (0, 0)-(300, 350), 7, BF
LINE (300, 110)-(315, 160), 1, BF
LINE (315, 130)-(320, 140), 8, BF
LINE (550, 275)-(640, 350), 10, BF
LINE (550, 275)-(640, 90), 12, BF
LINE (620, 90)-(590, 80), 14, BF
CIRCLE (605, 40), 50, 15
LINE (600, 65)-(580, 65), 15
LINE (600, 63)-(580, 63), 15
CIRCLE (620, 30), 5, 15
CIRCLE (585, 30), 5, 15
LINE (590, 50)-(600, 40), 15
LINE (590, 50)-(600, 50), 15
LINE (550, 260)-(640, 280), 6, BF
SLEEP 2
DO UNTIL f = 3
f = f + 1
COLOR 10
LOCATE 1, 40
PRINT " Oh, ein geheimnissvoller Knopf "
LINE (600, 64)-(580, 64), 15
LINE (600, 62)-(580, 63), 0, BF
SLEEP 1
LINE (600, 62)-(580, 62), 15
LINE (600, 64)-(580, 64), 0
SLEEP 1
LOOP
hand = 530
finger = 530
DO UNTIL p = 6
p = p + 1
hand = hand - 30
finger = finger - 30
LINE (550, 150)-(hand, 127), 12, BF
LINE (finger, 150)-(finger - 20, 145), 14, BF
LINE (finger, 144)-(finger - 22, 139), 14, BF
LINE (finger, 138)-(finger - 30, 133), 14, BF
LINE (finger, 132)-(finger - 20, 127), 14, BF
SLEEP 1
LOOP
LINE (315, 130)-(320, 140), 0, BF
LINE (315, 130)-(317, 140), 8, BF
SLEEP 2
FOR g = 75 TO 250
LINE (100, 150)-(g, 220), 8, BF
NEXT
LINE (75, 150)-(125, 175), 15
LINE (250, 150)-(200, 175), 15
LINE (75, 220)-(125, 200), 15
LINE (250, 220)-(200, 200), 15
LINE (200, 175)-(125, 175), 15
LINE (125, 175)-(125, 200), 15
LINE (125, 200)-(200, 200), 15
LINE (200, 200)-(200, 175), 15
LINE (75, 150)-(250, 150), 0
LINE (75, 150)-(75, 220), 0
LINE (75, 220)-(250, 220), 0
LINE (250, 220)-(250, 150), 0
SLEEP 1
LOCATE 1, 40
PRINT " Waaaaas ???, Kein Schatz !!!  "
SLEEP 3
CIRCLE (620, 30), 5, 0
CIRCLE (585, 30), 5, 0
CIRCLE (620, 30), 10, 15
CIRCLE (585, 30), 10, 15
SLEEP 1
LOCATE 1, 40
PRINT " Neiiiiiiiiiiiiiiiiiiiiiiiiin !"
SLEEP 1
FOR lippe = 65 TO 100
LINE (600, lippe)-(580, lippe), 0
NEXT
LINE (600, 100)-(600, 65), 15
LINE (580, 100)-(580, 65), 15
LINE (580, 100)-(600, 100), 15
SLEEP 3
CLS
LINE (0, 250)-(640, 350), 2, BF   'GrÅnflÑche
LINE (225, 150)-(475, 250), 1, BF 'Hauptteil GebÑude
LINE (310, 100)-(375, 150), 1, BF 'Gro·er Turm
LINE (225, 125)-(250, 150), 1, BF '1.Kleiner Turm
LINE (270, 125)-(295, 150), 1, BF '2.Kleiner Turm
LINE (390, 125)-(415, 150), 1, BF '3.Kleiner Turm
LINE (435, 125)-(460, 150), 1, BF '4.Kleiner Turm
LINE (250, 175)-(270, 200), 0, BF 'Linkes Fenster
LINE (425, 175)-(445, 200), 0, BF 'Rechtes Fenster
LINE (315, 175)-(385, 250), 0, BF 'Tor
LINE (325, 100)-(335, 50), 1, BF  'Fahnenmast
flagge$ = "F10 G10"
DRAW "C4 X" + VARPTR$(flagge$)
COLOR 14
PSET (50, 50)
PSET (125, 50)
PSET (75, 100)
PSET (25, 200)
PSET (400, 25)
PSET (525, 50)
PSET (600, 100)
PSET (550, 175)
PSET (125, 175)
PSET (144, 134)
PSET (175, 75)
LOCATE 2, 20
PRINT " Neiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiin "
FOR i = 200 TO 300
SOUND i, 1
NEXT
SLEEP 1
FOR k = 1 TO 330
CIRCLE (330, 150), k, 4
NEXT
FOR j = 50 TO 100
SOUND j, 1
NEXT
SLEEP 2
LOCATE 12, 37
PRINT " THE END "
SLEEP 1
CLS
SCREEN 9
COLOR 10, 1
LOCATE 2, 20
PRINT "  Was fÅr ein Pech. Es gab NIE einen Schatz."
PRINT SPC(20); " Du konntest dich davon nie erholen und "
PRINT SPC(20); " verbrachtest dein ganzes Leben in einer"
PRINT SPC(20); " Anstalt. Au·erdem gab es eine Anzeige gegen"
PRINT SPC(20); " dich, da du in deinem Wutanfall im Schlo· ran-"
PRINT SPC(20); " daliert hast. Na ja, bis zum nÑchsten Abenteuer"
SLEEP 0
FOR k = 50 TO 100
SOUND k, 1
NEXT
FOR g = 1 TO 640
CIRCLE (330, 175), g, 4
NEXT
SLEEP 1
END

END SUB

