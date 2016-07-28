'*****************************************************************************
'*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*                                                                           *
'*'''''''''''''''''''''''''''''''''KAY LERCH'''''''''''''''''''''''''''''''''*                                 *
'*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*                                                                           *
'*''''''''''''''''''''''''''''''''PRŽSENTIERT''''''''''''''''''''''''''''''''*                                *
'*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*                                                                           *
'*''''''''''''''''''''''''P I N G'''''''-'''''''P O N G''''''''''''''''''''''*                       *
'*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*                                                                           *
'*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*                                                                           *
'*''''''''''''''''''''''''''''''' Start mit F5'''''''''''''''''''''''''''''''*                               *
'*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*                                                                           *
'*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*                                                                           *
'*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*                                                                           *
'*****************************************************************************
DECLARE SUB start ()
DECLARE SUB ende ()
DECLARE SUB battle ()
DECLARE SUB menue ()
DECLARE SUB alone ()
DECLARE SUB spielfeld ()
start

SUB alone
COLOR 15
LINE (0, 300)-(630, 330), 10, B
LOCATE 23, 5
INPUT " Name von Spieler 1 : "; name1$
IF name1$ = "Kay" OR name1$ = "Kay Lerch" THEN
  name1$ = "Meister"
ELSEIF name1$ = "Jan" THEN
  name1$ = "Trottel"
END IF
spieler1 = 0
spieler2 = 0
geschwa = 7
geschwb = 4
leben = 5
level = 1
14 spielfeld
SLEEP 2
a = 350
B = 200
hoehe = 175
modi = 1
DO
IF modi = 1 THEN GOTO 15
IF modi = 2 THEN GOTO 16
IF modi = 3 THEN GOTO 17
IF modi = 4 THEN GOTO 18
15 a = a - geschwa
  B = B + geschwb
  IF B > 300 THEN modi = 2
  IF a < 50 AND B > hoehe - 15 AND B < hoehe + 15 THEN modi = 3: punkte = punkte + 10: SOUND 400, 1: ph = 1
  IF a < 30 THEN GOTO 23
  GOTO 20
16 a = a - geschwa
  B = B - geschwb
  IF B < 70 THEN modi = 1
  IF a < 50 AND B > hoehe - 15 AND B < hoehe + 15 THEN modi = 4: punkte = punkte + 10: SOUND 400, 1: ph = 1
  IF a < 30 THEN GOTO 23
  GOTO 20
17 a = a + geschwa
  B = B + geschwb
  IF B > 300 THEN modi = 4
  IF a > 590 THEN modi = 1
  GOTO 20
18 a = a + geschwa
  B = B - geschwb
  IF B < 70 THEN modi = 3
  IF a > 590 THEN modi = 2
20 a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(72)
  hoehe = hoehe - 8
CASE IS = CHR$(0) + CHR$(80)
  hoehe = hoehe + 8
CASE CHR$(1)
  CALL menue
END SELECT
22 LOCATE 2, 15: PRINT name1$
  LOCATE 3, 15: PRINT " Punkte : "; punkte
  LOCATE 3, 55: PRINT " Leben : "; leben
  LOCATE 1, 1: PRINT " Level : "; level
IF hoehe > 300 THEN hoehe = 300
IF hoehe < 70 THEN hoehe = 70
CIRCLE (a - geschwa, B - geschwb), 8, 0
CIRCLE (a - geschwa, B + geschwb), 8, 0
CIRCLE (a + geschwa, B + geschwb), 8, 0
CIRCLE (a + geschwa, B - geschwb), 8, 0
CIRCLE (a, B), 8, 15
LINE (40, hoehe - 15)-(40, hoehe + 15), 15
LINE (40, 50)-(40, hoehe - 16), 0
LINE (40, 320)-(40, hoehe + 16), 0
IF punkte = 110 THEN
   geschwa = 9
   geschwb = 5
   level = 2
ELSEIF punkte = 300 THEN
   geschwa = 11
   geschwb = 7
   level = 3
ELSEIF punkte = 500 THEN
   geschwa = 13
   geschwb = 8
END IF
LINE (320, 50)-(320, 320), 15
IF ph = 0 THEN
   SOUND 32000, 1
ELSE
   ph = 0
END IF
LOOP
23 leben = leben - 1
  IF leben = 0 THEN
   LOCATE 12, 33
   PRINT " Spiel wurde beendet "
   SLEEP 2
   CALL menue
  END IF
  GOTO 14
END SUB

SUB battle
COLOR 15
LINE (0, 290)-(630, 340), 10, B
LOCATE 22, 5
INPUT " Name von Spieler 1 : "; name1$
LOCATE 23, 5
INPUT " Name von Spieler 2 : "; name2$
LOCATE 24, 5
INPUT " Bis wann wollt ihr spielen ( Punkte / 1 - 99): "; biswann
DO UNTIL f = 640
f = f + 5
LINE (0, 0)-(f, 350), 0, BF
SOUND 32000, 1
LOOP
spieler1 = 0
spieler2 = 0
10 spielfeld
SLEEP 1
LOCATE 2, 12: PRINT name1$
LOCATE 3, 12: PRINT spieler1
LOCATE 2, 55: PRINT name2$
LOCATE 3, 55: PRINT spieler2
SLEEP 1
a = 350
B = 200
hoehe = 175
G = 175
modi = 1
DO
IF modi = 1 THEN GOTO 1
IF modi = 2 THEN GOTO 2
IF modi = 3 THEN GOTO 3
IF modi = 4 THEN GOTO 4
IF modi = 5 THEN GOTO 41
IF modi = 7 THEN GOTO 42
IF modi = 8 THEN GOTO 43
IF modi = 10 THEN GOTO 44
1 a = a - 8
  B = B + 4
  IF B > 300 THEN modi = 2
  IF a < 50 AND a > 41 AND B > hoehe - 6 AND B < hoehe + 6 THEN modi = 3
  IF a < 50 AND a > 41 AND B > hoehe - 16 AND B < hoehe - 6 THEN modi = 10
  IF a < 50 AND a > 41 AND B > hoehe + 5 AND B < hoehe + 16 THEN modi = 10
  IF a < 42 THEN GOTO 9
  GOTO 5
2 a = a - 8
  B = B - 4
  IF B < 70 THEN modi = 1
  IF a < 50 AND a > 41 AND B > hoehe - 6 AND B < hoehe + 6 THEN modi = 4
  IF a < 50 AND a > 41 AND B > hoehe - 16 AND B < hoehe - 6 THEN modi = 8
  IF a < 50 AND a > 41 AND B > hoehe + 5 AND B < hoehe + 16 THEN modi = 8
  IF a < 42 THEN GOTO 9
  GOTO 5
3 a = a + 8
  B = B + 4
  IF B > 300 THEN modi = 4
  IF a > 590 AND a < 599 AND B > G - 6 AND B < G + 6 THEN modi = 1
  IF a > 590 AND a < 599 AND B > G - 16 AND B < G - 6 THEN modi = 5
  IF a > 590 AND a < 599 AND B > G + 5 AND B < G + 16 THEN modi = 5
  IF a > 598 THEN GOTO 11
  GOTO 5
4 a = a + 8
  B = B - 4
  IF B < 70 THEN modi = 3
  IF a > 590 AND a < 599 AND B > G - 6 AND B < G + 6 THEN modi = 2
  IF a > 590 AND a < 599 AND B > G - 16 AND B < G - 6 THEN modi = 7
  IF a > 590 AND a < 599 AND B > G + 5 AND B < G + 16 THEN modi = 7
  IF a > 598 THEN GOTO 11
  GOTO 5
41 a = a - 8
  B = B + 2
  IF B > 300 THEN modi = 7
  IF a < 50 AND a > 41 AND B > hoehe - 6 AND B < hoehe + 6 THEN modi = 10
  IF a < 50 AND a > 41 AND B > hoehe - 16 AND B < hoehe - 6 THEN modi = 3
  IF a < 50 AND a > 41 AND B > hoehe + 5 AND B < hoehe + 16 THEN modi = 3
  IF a < 42 THEN GOTO 9
  GOTO 5
42 a = a - 8
  B = B - 2
  IF B < 70 THEN modi = 5
  IF a < 50 AND a > 41 AND B > hoehe - 6 AND B < hoehe + 6 THEN modi = 8
  IF a < 50 AND a > 41 AND B > hoehe - 16 AND B < hoehe - 6 THEN modi = 4
  IF a < 50 AND a > 41 AND B > hoehe + 5 AND B < hoehe + 16 THEN modi = 4
  IF a < 42 THEN GOTO 9
  GOTO 5
43 a = a + 8
   B = B - 2
  IF B < 70 THEN modi = 10
  IF a > 590 AND a < 599 AND B > G - 6 AND B < G + 6 THEN modi = 7
  IF a > 590 AND a < 599 AND B > G - 16 AND B < G - 6 THEN modi = 2
  IF a > 590 AND a < 599 AND B > G + 5 AND B < G + 16 THEN modi = 2
  IF a > 598 THEN GOTO 11
  GOTO 5
44 a = a + 8
  B = B + 2
  IF B > 300 THEN modi = 8
  IF a > 590 AND a < 599 AND B > G - 6 AND B < G + 6 THEN modi = 5
  IF a > 590 AND a < 599 AND B > G - 16 AND B < G - 6 THEN modi = 1
  IF a > 590 AND a < 599 AND B > G + 5 AND B < G + 16 THEN modi = 1
  IF a < 598 THEN GOTO 11
5 IF modi = 1 OR modi = 2 OR modi = 5 OR modi = 7 THEN GOTO 6
  IF modi = 3 OR modi = 4 OR modi = 8 OR modi = 10 THEN GOTO 7
6 a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(72)
  hoehe = hoehe - 8
CASE IS = CHR$(0) + CHR$(80)
  hoehe = hoehe + 8
CASE IS = CHR$(0) + CHR$(1)
  CALL menue
END SELECT
GOTO 8
7 a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(59)
  G = G + 8
CASE IS = CHR$(0) + CHR$(60)
  G = G - 8
CASE IS = CHR$(0) + CHR$(1)
END SELECT
8 LOCATE 2, 12: PRINT name1$
  LOCATE 3, 12: PRINT spieler1
  LOCATE 2, 55: PRINT name2$
  LOCATE 3, 55: PRINT spieler2
IF hoehe > 300 THEN hoehe = 300
IF hoehe < 70 THEN hoehe = 70
IF G > 300 THEN G = 300
IF G < 70 THEN G = 70
CIRCLE (a - 8, B - 4), 8, 0
CIRCLE (a - 8, B + 4), 8, 0
CIRCLE (a + 8, B + 4), 8, 0
CIRCLE (a + 8, B - 4), 8, 0
CIRCLE (a - 8, B - 2), 8, 0
CIRCLE (a - 8, B + 2), 8, 0
CIRCLE (a + 8, B + 2), 8, 0
CIRCLE (a + 8, B - 2), 8, 0
CIRCLE (a, B), 8, 15
LINE (40, hoehe - 15)-(40, hoehe + 15), 15
LINE (40, 50)-(40, hoehe - 16), 0
LINE (40, 320)-(40, hoehe + 16), 0
LINE (600, G - 15)-(600, G + 15), 15
LINE (600, 50)-(600, G - 16), 0
LINE (600, 320)-(600, G + 16), 0
LINE (320, 50)-(320, 320), 15
SOUND 32000, 1
LOOP
9 spieler2 = spieler2 + 1
  IF spieler2 = biswann THEN
   LOCATE 12, 33
   PRINT name2$; " hat gewonnen "
   SLEEP 2
   CALL menue
  END IF
  GOTO 10
11 spieler1 = spieler1 + 1
  IF spieler1 = biswann THEN
   LOCATE 12, 33
   PRINT name1$; " hat gewonnen "
   SLEEP 2
   CALL menue
  END IF
  GOTO 10

END SUB

SUB ende
CLS
LOCATE 10, 22
COLOR 10
PRINT " Wirklich schon aufh”ren! Flasche ! "
SLEEP 0
SYSTEM
END SUB

SUB menue
13 CLS
LINE (50, 20)-(300, 120), 12, B
COLOR 15
LOCATE 4, 10
PRINT " 1, SINGLE GAME "
LOCATE 6, 10
PRINT " 2, BATTLE GAME "
LOCATE 8, 10
PRINT " 3, END "
LOCATE 12, 32
PRINT " STEUERUNG "
LOCATE 14, 8
LINE (50, 150)-(600, 260), 8, B
COLOR 8
PRINT "Spieler 1:      nach oben :         Cursor nach oben"
LOCATE 15, 24
PRINT "nach unten :        Cursor nach unten"
LOCATE 17, 8
PRINT "Spieler 2:      nach oben :         F2"
LOCATE 18, 24
PRINT "nach unten :        F1"
ea = 1
DO
IF ea = 1 THEN COLOR 4: LOCATE 4, 10: PRINT " 1, SINGLE GAME"
a$ = INKEY$
SELECT CASE a$
CASE IS = CHR$(0) + CHR$(80)
ea = ea + 1
IF ea > 3 THEN ea = 3
IF ea = 1 THEN COLOR 4 ELSE COLOR 15
   LOCATE 4, 10: PRINT " 1, SINGLE GAME"
IF ea = 2 THEN COLOR 4 ELSE COLOR 15
   LOCATE 6, 10: PRINT " 2, BATTLE GAME"
IF ea = 3 THEN COLOR 4 ELSE COLOR 15
   LOCATE 8, 10: PRINT " 3, END"
CASE IS = CHR$(0) + CHR$(72)
ea = ea - 1
IF ea = 0 THEN ea = 1
IF ea = 1 THEN COLOR 4 ELSE COLOR 15
   LOCATE 4, 10: PRINT " 1, SINGLE GAME"
IF ea = 2 THEN COLOR 4 ELSE COLOR 15
   LOCATE 6, 10: PRINT " 2, BATTLE GAME"
IF ea = 3 THEN COLOR 4 ELSE COLOR 15
   LOCATE 8, 10: PRINT " 3, END"
 CASE CHR$(13)
  SELECT CASE ea
  CASE 1: alone
  CASE 2: battle
  CASE 3: ende
  END SELECT
END SELECT
LOOP
IF auswahl$ = "1" THEN
  CALL alone
ELSEIF auswahl$ = "2" THEN
  CALL battle
ELSEIF auswahl$ = "3" THEN
  CALL ende
ELSE
  GOTO 13
END IF
END SUB

SUB spielfeld
CLS
SCREEN 9
LINE (0, 350)-(640, 320), 4, BF
SOUND 32000, 4
LINE (640, 350)-(620, 0), 4, BF
SOUND 32000, 4
LINE (0, 0)-(640, 50), 2, BF
SOUND 32000, 4
LINE (0, 50)-(20, 350), 4, BF
SOUND 32000, 4
LINE (320, 50)-(320, 320), 15
SOUND 32000, 4
LINE (40, 160)-(40, 190), 15
END SUB

SUB start
CLS
SCREEN 9
a = 640
B = 350
DO UNTIL k = 5000
k = k + 1
RANDOMIZE TIMER
a% = INT(RND * 640) + 1
B% = INT(RND * 350) + 1
c% = INT(RND * 15) + 1
CIRCLE (a%, B%), 10, c%
LOOP
COLOR 15, 1
LOCATE 10, 33
PRINT " KLP presents "
LOCATE 14, 34
PRINT " PING PONG "
SLEEP 2
CALL menue
END SUB

