DECLARE SUB hausarest ()
DECLARE SUB hausarrest ()
DECLARE SUB unpuenktlich ()
DECLARE SUB geschwaenzt ()
DECLARE SUB ende ()
DECLARE SUB schule ()
DECLARE SUB schlafen ()
DECLARE SUB pruegel ()
DECLARE SUB test ()
DECLARE SUB verletzung ()
DECLARE SUB infoleiste ()
DECLARE SUB raus ()
DECLARE SUB staerke ()
DECLARE SUB zuspaet ()
DECLARE SUB bolzen ()
DECLARE SUB fernsehen ()
DECLARE SUB training ()
DECLARE SUB spiel ()
DECLARE SUB zimmer ()
DECLARE SUB menue ()
DECLARE SUB bm98 ()
CLS
SCREEN 0
COLOR 19
PRINT "Achtung"
COLOR 4
LOCATE 3, 1
PRINT "Diese Version ist noch nicht fertsch und dient nur zum Ausprobieren."
LOCATE 5, 1
PRINT "Ihr braucht euch nicht wundern, eventuelle Menues nicht anwÑhlen zu"
LOCATE 7, 1
PRINT "kînnen oder irgendwelche Fehler das Spiel unterbrechen."
LOCATE 10, 70
PRINT "Kay Lerch"
SLEEP 0
moral = 30
fitness = 5
schuss = 20
tempo = 10
erfahrung = 10
passpiel = 15
ausdauer = 5
monat = 1
alter = 13
jahr = 1998
tag = 1
stunde = 7
minute = 0
prozent = 50
wochentag = 1
CLS
SCREEN 7
COLOR 4, 1
LOCATE 11, 14
PRINT " KLP presents "
SLEEP 3
FOR aa = 1 TO 500
COLOR 0, 0
LINE (0, 0)-(aa, 350), 0, BF
NEXT
CLS
SCREEN 9
bm98
LOCATE 18, 20
PRINT " D e r   B o l z m a n a g e r   9 8 "
SLEEP 5
FOR ab = 49 TO 230
SOUND 32000, 1
LINE (0, 0)-(640, ab), 0, BF
NEXT
SLEEP 2
COLOR 15
LOCATE 1, 1
PRINT "Sommerferien": SLEEP 2
PRINT "Du verfolgst seit 2 Tagen die WM": SLEEP 2
PRINT "Die ueberbezalten Opas, die Deutschland vertreten": SLEEP 2
PRINT "haben ihr erstes Vorrundenspiel gegen die Faroerer Inseln": SLEEP 2
COLOR 4: PRINT "57:0 VERLOREN": SLEEP 2

COLOR 15: PRINT "Du schaemst dich so fuer dein Land, und du denkst:": SLEEP 2
PRINT "Wenn es die Opis schaffen, fuer ihr Geboltze Millionen zu kriegen,": SLEEP 2
PRINT "SCHAFF ICH DAS AUCH": SLEEP 2

PRINT "und du faengst an, zu trainieren": SLEEP 2

PRINT " >TASTE< "
SLEEP 0
CLS
PRINT " So oder Ñhnlich beginnt fÅr jeden der Traum vom Fu·baller."
PRINT " Und du kannst es schaffen. Mit viel Einsatz und Mut."
PRINT " Dieses Spiel soll den Aufstieg eines Nachwuchskickers simulieren."
PRINT " Vorrausgesetzt du triffst die richtigen Entscheidungen."
PRINT ""
PRINT SPC(50); " Viel GlÅck "
PRINT ""
PRINT ""
PRINT " >TASTE< "
CLS
COLOR 10
1 LOCATE 1, 1: INPUT " Deine Name (max. 10 Zeichen) : ", name$
IF name$ = "" THEN GOTO 1
2 LOCATE 2, 1: INPUT " Der Name deines Vereins  (max. 20 Zeichen) ", verein$
IF verein$ = "" THEN GOTO 2
323 LOCATE 3, 1: INPUT " Wie schnell soll ein Tag ablaufen ( 1(langsam) - 10(schnell)"; ablauf
IF ablauf > 10 OR ablauf < 1 THEN GOTO 323
LOCATE 12, 34
COLOR 15
PRINT " Auf geht`s "
SLEEP 2
menue

SLEEP 0

SUB bm98
CLS
SCREEN 9
'B
LINE (60, 50)-(140, 225), 1, BF
LINE (80, 75)-(110, 125), 0, BF
LINE (80, 150)-(110, 200), 0, BF
'M
LINE (180, 50)-(340, 125), 1, BF
LINE (180, 50)-(220, 225), 1, BF
LINE (240, 125)-(280, 175), 1, BF
LINE (300, 125)-(340, 225), 1, BF
'9
LINE (380, 50)-(480, 225), 1, BF
LINE (400, 75)-(460, 100), 0, BF
LINE (380, 125)-(440, 200), 0, BF
'8
LINE (500, 50)-(580, 225), 1, BF
LINE (520, 75)-(560, 125), 0, BF
LINE (520, 150)-(560, 200), 0, BF

END SUB

SUB bolzen
SHARED minute, schuss, stunde, wochentag, name$
218
minute = minute + 10
IF wochentag < 6 AND stunde < 14 THEN CLS : PRINT "Bevor du spielst geh in die Schule, Bengel !": SLEEP 0: CALL raus
IF stunde > 19 THEN CLS : PRINT ; name$; " mu· jetzt nach Hause gehen. Is schon janz spÑt !": SLEEP 0: CALL raus
IF minute > 59 THEN stunde = stunde + 1: minute = 0
CLS
SCREEN 9
LOCATE 3, 1
COLOR 7
IF minute < 10 THEN
 PRINT "Uhrzeit : "; stunde; ":0"; minute
ELSEIF minute > 9 THEN
 PRINT "Uhrzeit : "; stunde; ":"; minute
END IF
COLOR 15
LINE (0, 200)-(640, 350), 2, BF
LINE (50, 200)-(75, 60), 8, BF
LINE (50, 60)-(600, 75), 8, BF
LINE (575, 60)-(600, 200), 8, BF
LINE (0, 200)-(640, 200), 15, BF
LINE (30, 200)-(0, 220), 15
LINE (610, 200)-(640, 220), 15
LINE (0, 260)-(640, 260), 15
CIRCLE (325, 320), 20, 1
LINE (500, 20)-(600, 30), 14, B
LINE (501, 21)-(501 + schuss, 29), 4, BF
COLOR 4
LOCATE 1, 64
PRINT "Schu·stÑrke"
COLOR 15
aa = 325
ab = 320
c = 325
d = 320
eingabe$ = "w"
DO
RANDOMIZE TIMER
a% = INT(RND * 250) + 1
B% = INT(RND * 100) + 1
217
LINE (501, 21)-(501 + schuss, 29), 4, BF
LOCATE 1, 1
INPUT "In welche Ecke willst du shooten ? (l, m, r) Ende (e) -> "; eingabe$
219
LINE (0, 200)-(640, 200), 15, BF
LINE (0, 260)-(640, 260), 15
IF eingabe$ = "l" THEN
   GOTO 221
ELSEIF eingabe$ = "m" THEN
   GOTO 222
ELSEIF eingabe$ = "r" THEN
   GOTO 223
ELSEIF eingabe$ = "e" THEN
   raus
ELSE
   GOTO 217
END IF
221 a = (325 - 70 - a%) * .05

    B = (320 - 90 - B%) * .05
    c = c - a
    d = d - B
    IF d < B% + 90 THEN SLEEP 2: GOTO 218
    LINE (0, 200)-(640, 350), 2, BF
    LINE (0, 200)-(640, 200), 15, BF
    LINE (0, 260)-(640, 260), 15
    LINE (610, 200)-(640, 220), 15
    LINE (0, 260)-(640, 260), 15
   
    CIRCLE (c + a, d + B), 20, 0
    CIRCLE (c, d), 20, 1
    SOUND 32000, 1
    GOTO 219
222 B = (320 - 90 - B%) * .05
    d = d - B
    IF a% < 175 THEN c = c + .1
    IF a% > 174 THEN c = c - .1
    IF d < B% + 90 THEN SLEEP 2: GOTO 218
    LINE (0, 200)-(640, 350), 2, BF
    LINE (0, 200)-(640, 200), 15, BF
    LINE (0, 260)-(640, 260), 15
    LINE (610, 200)-(640, 220), 15
    LINE (0, 260)-(640, 260), 15
    CIRCLE (c + .1, d + B), 20, 0
    CIRCLE (c - .1, d + B), 20, 0
    CIRCLE (c, d), 20, 1
    SOUND 32000, 1
    GOTO 219
223 a = (325 - 70 - a%) * .05
    B = (320 - 90 - B%) * .05
    c = c + a
    d = d - B
    IF d < B% + 90 THEN SLEEP 2: GOTO 218
    LINE (0, 200)-(640, 350), 2, BF
    LINE (0, 200)-(640, 200), 15, BF
    LINE (0, 260)-(640, 260), 15
    LINE (610, 200)-(640, 220), 15
    LINE (0, 260)-(640, 260), 15
    CIRCLE (c - a, d + B), 20, 0
    CIRCLE (c, d), 20, 1
    SOUND 32000, 1
    GOTO 219

LOOP
END SUB

SUB ende
CLS
SCREEN 9
PRINT "TSCHöSS"
SLEEP 2
SYSTEM
END SUB

SUB fernsehen

END SUB

SUB geschwaenzt
SHARED zusp, moral, arrest, anwesend
CLS
SCREEN 9
LINE (100, 20)-(540, 320), 7, B
LOCATE 1, 36
COLOR 4
PRINT "POST"
COLOR 15
LOCATE 4, 15
PRINT "Sehr geehrte Eltern, "
LOCATE 6, 15
PRINT "Leider muss ich ihnen mitteilen, da· ihr Sohn "
LOCATE 7, 15
PRINT "den Unterricht in dieser Woche"; 5 - anwesend; "mal nicht"
LOCATE 8, 15
PRINT "nicht besuchte. Sollte sich dieser Vorfall wieder -"
LOCATE 9, 15
PRINT "holen, bin ich gezwungen ihrem Sohn nîtige"
LOCATE 10, 15
PRINT "zusÑtzliche Hausaufgaben zu geben, um so den ent -"
LOCATE 11, 15
PRINT "gangenen Unterrichtsstoff aufzuarbeiten. Sprechen"
LOCATE 12, 15
PRINT "sie mit ihrem Sohn darÅber."
LOCATE 14, 40
PRINT "Mit freundl. GrÅssen"
LOCATE 16, 40
PRINT "Frau Zkhalizarge"
LOCATE 23, 1
PRINT "--> TASTE"
SLEEP 0
B = 640
d = 350
DO UNTIL a = 320
a = a + 2
B = B - 2
c = c + 1.5
d = d - 1.5
LINE (0, 0)-(a, 350), 8, BF
LINE (640, 0)-(B, 350), 8, BF
LINE (0, 0)-(640, c), 8, BF
LINE (640, 350)-(0, d), 8, BF
SOUND 32000, 1
LOOP
SLEEP 1
LOCATE 2, 1
PRINT "Deine Eltern sind empoert und du darfst bis Mittwoch nicht zum "
PRINT "Training. Logisch, da· das an deine Moral geht. "
LOCATE 5, 1
PRINT "--> TASTE"
SLEEP 0
moral = moral - 2
arrest = 1
CALL menue

END SUB

SUB hausarest
CLS
PRINT "Du hast immer noch HAUSARREST !!!!!!!"
SLEEP 2
CALL menue
END SUB

SUB infoleiste
SHARED tag, monat, jahr, stunde, minute, verein$, name$
LINE (0, 0)-(620, 40), 4, B
LOCATE 2, 3
PRINT name$
LOCATE 2, 15
COLOR 4
PRINT verein$
COLOR 15
LOCATE 2, 35
PRINT "Datum : "; tag; "."; monat; "."; jahr
LOCATE 2, 60
IF minute < 10 THEN PRINT " Zeit : "; stunde; ": 0"; minute
IF minute > 9 THEN PRINT " Zeit : "; stunde; ":"; minute
END SUB

SUB menue
SHARED name$, verein$, minute, stunde, tag, monat, jahr, moral$, fitness$, schuss$
SHARED tempo$, erfahrung$, passpiel$, ausdauer$, prozent, wochentag, wochentag$
SHARED anwesend, zusp, arrest, ablauf
staerke
CLS
SCREEN 9
farbe = 9
DO
farbe = farbe + 1
IF farbe = 11 THEN farbe = 9
minute = minute + 1
IF minute > 59 THEN minute = 0: stunde = stunde + 1
IF stunde = 24 THEN stunde = 0: tag = tag + 1: wochentag = wochentag + 1
IF wochentag = 8 THEN wochentag = 1: anwesend = 0: zusp = 0
IF stunde = 22 THEN schlafen
IF wochentag = 1 THEN COLOR 14 ELSE COLOR 8
LOCATE 5, 40: PRINT "Mo"
IF wochentag = 2 THEN COLOR 14 ELSE COLOR 8
LOCATE 5, 45: PRINT "Di"
IF wochentag = 3 THEN COLOR 14 ELSE COLOR 8
LOCATE 5, 50: PRINT "Mi"
IF wochentag = 4 THEN COLOR 14 ELSE COLOR 8
LOCATE 5, 55: PRINT "Do"
IF wochentag = 5 THEN COLOR 14 ELSE COLOR 8
LOCATE 5, 60: PRINT "Fr"
IF wochentag = 6 THEN COLOR 14 ELSE COLOR 8
LOCATE 5, 65: PRINT "Sa"
IF wochentag = 7 THEN COLOR 14 ELSE COLOR 8
LOCATE 5, 70: PRINT "So"
IF wochentag = 7 AND anwesend < 5 THEN CALL geschwaenzt
IF wochentag = 7 AND zusp > 1 THEN CALL unpuenktlich
IF tag = 30 THEN tag = 1: monat = monat + 1
IF monat = 12 THEN monat = 1: jahr = jahr + 1: alter = alter + 1
LINE (0, 0)-(620, 40), 4, B
LOCATE 2, 3
PRINT name$
LOCATE 2, 15
COLOR 4
PRINT verein$
COLOR 15
LOCATE 2, 35
PRINT "Datum : "; tag; "."; monat; "."; jahr
LOCATE 2, 60
IF minute < 10 THEN PRINT " Zeit : "; stunde; ": 0"; minute
IF minute > 9 THEN PRINT " Zeit : "; stunde; ":"; minute
LINE (20, 100)-(300, 330), 10, B
LINE (20, 100)-(130, 130), 10, B
LOCATE 9, 5
PRINT "StÑrken"
COLOR 5
LOCATE 11, 5: PRINT " Moral      : "; moral$
LOCATE 13, 5: PRINT " Fitness    : "; fitness$
LOCATE 15, 5: PRINT " Schu·      : "; schuss$
LOCATE 17, 5: PRINT " Tempo      : "; tempo$
LOCATE 19, 5: PRINT " Erfahrung  : "; erfahrung$
LOCATE 21, 5: PRINT " Passpiel   : "; passpiel$
LOCATE 23, 5: PRINT " Ausdauer   : "; ausdauer$
LINE (330, 230)-(550, 330), 7, B
LOCATE 18, 45
COLOR 3
PRINT " Trainigszeiten : "
LOCATE 20, 43: PRINT " Mo.  16.00 - 17.30"
LOCATE 21, 43: PRINT " Mi.  15.30 - 17.00"
LOCATE 22, 43: PRINT " Fr.  18.00 - 20.00"
COLOR 11
LOCATE 5, 1: PRINT "Spieleinsatz zu"; prozent; "% sicher "
LOCATE 7, 43
LINE (330, 100)-(550, 200), farbe, B
PRINT " Was willst du machen ? "
LOCATE 9, 44
COLOR 14
PRINT "1. In die Stadt gehen "
LOCATE 10, 44
PRINT "2. Fernsehen "
LOCATE 11, 44
PRINT "3. Zur Schule gehen"
LOCATE 12, 44
PRINT "4. In dein Zimmer gehen"
LOCATE 13, 44
PRINT "5. Spiel beenden"
LOCATE 14, 44
COLOR 2
a$ = INKEY$
SELECT CASE a$
CASE CHR$(0) + CHR$(80)
 ea = ea + 1
 IF ea = 6 THEN ea = 1
 IF ea = 1 THEN COLOR 14 ELSE COLOR 0
 LOCATE 9, 43
 PRINT ">"
 IF ea = 2 THEN COLOR 14 ELSE COLOR 0
 LOCATE 10, 43
 PRINT ">"
 IF ea = 3 THEN COLOR 14 ELSE COLOR 0
 LOCATE 11, 43
 PRINT ">"
 IF ea = 4 THEN COLOR 14 ELSE COLOR 0
 LOCATE 12, 43
 PRINT ">"
 IF ea = 5 THEN COLOR 14 ELSE COLOR 0
 LOCATE 13, 43
 PRINT ">"
CASE CHR$(0) + CHR$(72)
 ea = ea - 1
 IF ea = 0 THEN ea = 5
 IF ea = 1 THEN COLOR 14 ELSE COLOR 0
 LOCATE 9, 43
 PRINT ">"
 IF ea = 2 THEN COLOR 14 ELSE COLOR 0
 LOCATE 10, 43
 PRINT ">"
 IF ea = 3 THEN COLOR 14 ELSE COLOR 0
 LOCATE 11, 43
 PRINT ">"
 IF ea = 4 THEN COLOR 14 ELSE COLOR 0
 LOCATE 12, 43
 PRINT ">"
 IF ea = 5 THEN COLOR 14 ELSE COLOR 0
 LOCATE 13, 43
 PRINT ">"
 CASE CHR$(13)
  SELECT CASE ea
  CASE 1: CALL raus
  CASE 2: CALL fernsehen
  CASE 3: CALL raus
  CASE 4: CALL zimmer
  CASE 5: CALL ende
 END SELECT
END SELECT

SOUND 32000, 11 - ablauf
LOOP

END SUB

SUB prue

END SUB

SUB pruegel
SHARED moral, prozent, vorfall
IF vorfall > 0 THEN GOTO 4444
CLS
3333
LOCATE 1, 2
PRINT " Im Training stî·t du mit einem deiner Mitspieler zusammen. Dieser ist"
PRINT " so sauer auf dich das er dich schlÑgt. SchlÑgst du zurÅck"
INPUT " (j/n) ", schlag$
IF schlag$ = "j" THEN
   GOTO 1111
ELSEIF schlag$ = "n" THEN
   GOTO 2222
ELSE
   GOTO 3333
END IF
1111  LOCATE 6, 2
PRINT " Du hast deinen Mitspieler die Nase gebrochen. Dein Trainer ist empîrt "
PRINT " und wird dich erst mal auf der Bank schmoren lassen, es sei denn du "
PRINT " besserst dich "
SLEEP 1
SLEEP 4
prozent = 0
moral = moral - 5
CLS
GOTO 4444
2222 LOCATE 6, 2
PRINT " Deine Beherrschung ist erstaunlich. Dein Trainer registriert das. Deine"
PRINT " Chancen auf einen Stammplatz sind mÑchtig gestiegen."
SLEEP 1
SLEEP 4
prozent = prozent + 20
moral = moral + 5
vorfall = vorfall + 1
CLS
4444
CLS
SCREEN 9
LINE (400, 20)-(630, 280), 5, B
LOCATE 3, 52
PRINT " Trainingsverlauf "
LOCATE 5, 52
PRINT "Einlaufen  ( 10 Min. )"
LOCATE 6, 52
PRINT "Dehnung    (  5 Min. )"
LOCATE 7, 52
PRINT "Dribbling  ( 15 Min. )"
LOCATE 8, 52
PRINT "Passpiel   ( 15 Min. )"
LOCATE 9, 52
PRINT "Schu·      ( 15 Min. )"
LOCATE 10, 52
PRINT "Sprint     ( 10 Min. )"
LOCATE 11, 52
PRINT "Taktik     ( 20 Min. )"
LOCATE 12, 52
PRINT "Auslaufen  (  5 Min. )"
LINE (120, 57)-(370, 67), 4, B
LINE (120, 84)-(370, 94), 4, B
LINE (120, 111)-(370, 121), 4, B
LINE (120, 140)-(370, 150), 4, B
LINE (120, 169)-(370, 179), 4, B
LINE (120, 196)-(370, 206), 4, B
LINE (120, 225)-(370, 235), 4, B
LOCATE 5, 1
PRINT " Moral "
LOCATE 7, 1: PRINT " Fitness "
LOCATE 9, 1: PRINT " Schuss "
LOCATE 11, 1: PRINT " Tempo "
LOCATE 13, 1: PRINT " Erfahrung "
LOCATE 15, 1: PRINT " Passpiel "
LOCATE 17, 1: PRINT " Ausdauer "

END SUB

SUB raus
SHARED arrest, wochentag, stunde, minute
IF arrest = 1 AND wochentag < 4 AND stunde > 13 AND minute > 2 THEN hausarest
CLS
SCREEN 9
'platz
LINE (50, 15)-(200, 110), 2, BF
CIRCLE (125, 60), 20, 15
LINE (125, 15)-(125, 110), 15, B
LINE (51, 16)-(199, 109), 15, B
LINE (51, 45)-(70, 75), 15, B
LINE (199, 45)-(180, 75), 15, B
'weg
LINE (200, 50)-(600, 75), 8, BF
LINE (562, 50)-(600, 200), 8, BF
LINE (600, 200)-(462, 175), 8, BF
LINE (462, 175)-(500, 300), 8, BF
LINE (500, 300)-(550, 275), 8, BF
'haus
LINE (550, 250)-(630, 325), 4, BF
LINE (550, 289)-(630, 289), 15, BF
LINE (600, 270)-(610, 280), 0, BF
FOR y = 610 TO 612 STEP 1
CIRCLE (y, 275), 3, 7
NEXT
'weg
LINE (275, 75)-(313, 300), 8, BF
LINE (275, 150)-(200, 175), 8, BF
LINE (275, 275)-(200, 300), 8, BF
'platz2
LINE (200, 125)-(125, 225), 6, BF
LINE (130, 130)-(195, 220), 15, B
LINE (195, 175)-(130, 175), 15, B
CIRCLE (163, 175), 15, 15
'geschÑft
LINE (200, 250)-(100, 325), 7, BF
LINE (150, 250)-(150, 325), 15, BF
FOR xxx = 122 TO 125
CIRCLE (xxx, 275), 5, 0
NEXT
LOCATE 2, 28
COLOR 14
PRINT " <-- Sportplatz "
LOCATE 12, 1
PRINT " Bolzplatz -->"
LOCATE 21, 1
PRINT " Schule  -->"
LOCATE 23, 50
PRINT "Dein Zuhause -->"
SLEEP 0
a = 540
B = 285
DO
a$ = INKEY$
SELECT CASE a$
CASE CHR$(0) + CHR$(80)
 ea = ea + 1
 IF ea = 5 THEN ea = 4
 IF ea = 1 THEN COLOR 4 ELSE COLOR 14
 LOCATE 2, 28
 PRINT " <-- Sportplatz "
 IF ea = 2 THEN COLOR 4 ELSE COLOR 14
 LOCATE 12, 1
 PRINT " Bolzplatz -->"
 IF ea = 3 THEN COLOR 4 ELSE COLOR 14
 LOCATE 21, 1
 PRINT " Schule  -->"
 IF ea = 4 THEN COLOR 4 ELSE COLOR 14
 LOCATE 23, 50
 PRINT "Dein Zuhause -->"
CASE CHR$(0) + CHR$(72)
 ea = ea - 1
 IF ea = 0 THEN ea = 4
 IF ea = 4 THEN ea = 1
 IF ea = 1 THEN COLOR 4 ELSE COLOR 14
 LOCATE 2, 28
 PRINT " <-- Sportplatz "
 IF ea = 2 THEN COLOR 4 ELSE COLOR 14
 LOCATE 12, 1
 PRINT " Bolzplatz -->"
 IF ea = 3 THEN COLOR 4 ELSE COLOR 14
 LOCATE 21, 1
 PRINT " Schule  -->"
 IF ea = 4 THEN COLOR 4 ELSE COLOR 14
 LOCATE 23, 50
 PRINT "Dein Zuhause -->"
 CASE CHR$(13)
  SELECT CASE ea
  CASE 1: CALL training
  CASE 2: CALL bolzen
  CASE 3: CALL schule
  CASE 4: CALL menue
 END SELECT
END SELECT



LOOP

END SUB

SUB schlafen
SHARED tag, stunde, minute, wochentag
CLS
SCREEN 9
uhr = 22
a = 320
B = 30
c = 1
LOCATE 2, 1
COLOR 5
PRINT "Schlafzeit"
LOCATE 3, 40
PRINT "12"
LOCATE 25, 40
PRINT "6"
LOCATE 13, 14
PRINT "9"
LOCATE 13, 68
PRINT "3"
CIRCLE (320, 175), 200, 12
DO UNTIL B = 11
 COLOR 14
 LOCATE 13, 40
 PRINT uhr
 a = 320
 B = 30
 DO UNTIL B > 170
 a = a + 4
 B = B + 2.9
 LINE (320, 175)-(a, B), c
 COLOR 14
 LOCATE 13, 40
 PRINT uhr

 SOUND 32000, 1
 LOOP
 DO UNTIL a = 320
 a = a - 4
 B = B + 2.9
 LINE (320, 175)-(a, B), c
 COLOR 14
 LOCATE 13, 40
 PRINT uhr

 SOUND 32000, 1
 LOOP
 DO UNTIL B < 176
 a = a - 4
 B = B - 2.9
 LINE (320, 175)-(a, B), c
 COLOR 14
 LOCATE 13, 40
 PRINT uhr

 SOUND 32000, 1
 LOOP
 DO UNTIL a = 320
 a = a + 4
 B = B - 2.9
 LINE (320, 175)-(a, B), c
 COLOR 14
 LOCATE 13, 40
 PRINT uhr

 SOUND 32000, 1
 LOOP
uhr = uhr + 1
IF uhr = 24 THEN uhr = 0
IF uhr = 8 THEN SLEEP 3: tag = tag + 1: stunde = 7: minute = 1: wochentag = wochentag + 1:  CALL menue
c = c + 1
LOOP

END SUB

SUB schule
SHARED stunde, minute, moral, wochentag, anwesend, zusp, arrest
IF stunde > 7 AND minute > 10 AND stunde < 14 AND minute < 59 THEN
   CLS
   SCREEN 9
   PRINT "Unterricht beginnt um 8 Uhr und es ist jetzt"; stunde; ":"; minute; "Uhr."
   PRINT "Dein Lehrer ist sauer und wird deine Eltern benachrichtigen."
   SLEEP 0
   moral = moral - 2
   zusp = zusp + 1
   GOTO 21111
ELSEIF wochentag > 5 THEN
   CLS
   PRINT "Heute ist keine Schule oder willst du auch am Wochenende unterrichtet "
   PRINT "werden. STREBER !!!!"
   SLEEP 0
ELSEIF wochentag < 6 AND stunde > 13 THEN
   CLS
   PRINT "Du Schule ist vorbei. Solltest du heute nicht da gewesen sein, wÅrde "
   PRINT "ich mir ernsthafte Sorgen machen."
   SLEEP 0
   CALL raus
ELSE
   GOTO 21111
END IF
21111 CLS
anwesend = anwesend + 1
SCREEN 9
LOCATE 2, 35
COLOR 4
PRINT "Schulzeit"
COLOR 15
LOCATE 8, 25
PRINT "a + b = c"
LOCATE 10, 25
PRINT "1 + 3 = 4"
LINE (175, 75)-(350, 175), 6, B
LINE (250, 175)-(200, 275), 3
LINE (200, 275)-(225, 275), 3
LINE (225, 275)-(275, 175), 3
LINE (268, 190)-(315, 275), 3
LINE (315, 275)-(340, 275), 3
LINE (340, 275)-(285, 175), 3
LOCATE 24, 63
PRINT "6"
LOCATE 16, 62
PRINT "12"
LOCATE 19, 56
PRINT "9"
LOCATE 19, 71
PRINT "3"
CIRCLE (500, 265), 50, 12
a = 500
B = 229
c = 2
uhr = stunde
DO UNTIL uhr = 14
 LOCATE 14, 65
 PRINT uhr; "Uhr"
 DO UNTIL a = 550
 a = a + 2
 B = B + 1.45
 LINE (500, 265)-(a, B), c
 SOUND 32000, 2
 LOOP
 DO UNTIL B > 300
 a = a - 2
 B = B + 1.45
 LINE (500, 265)-(a, B), c
 SOUND 32000, 2
 LOOP
 DO UNTIL a = 450
 a = a - 2
 B = B - 1.45
 LINE (500, 265)-(a, B), c
 SOUND 32000, 2
 LOOP
 DO UNTIL B < 229
 a = a + 2
 B = B - 1.45
 LINE (500, 265)-(a, B), c
 SOUND 32000, 2
 LOOP
c = c + 1
uhr = uhr + 1
LOOP
stunde = 14
minute = 1
raus
END SUB

SUB shop

END SUB

SUB spiel

END SUB

SUB staerke
SHARED moral, fitness, schuss, tempo, erfahrung, passpiel, ausdauer
SHARED moral$, fitness$, schuss$, tempo$, erfahrung$, passpiel$, ausdauer$
IF moral < 10 THEN moral$ = "sehr schwach"
IF moral > 9 AND moral < 20 THEN moral$ = "schwach"
IF moral > 19 AND moral < 30 THEN moral$ = "mittel"
IF moral > 29 AND moral < 40 THEN moral$ = "gut"
IF moral > 39 AND moral < 50 THEN moral$ = "sehr gut"
IF moral > 49 THEN moral$ = "weltklasse"
IF moral > 99 THEN moral = 99
IF fitness < 10 THEN fitness$ = "sehr schwach"
IF fitness > 9 AND fitness < 20 THEN fitness$ = "schwach"
IF fitness > 19 AND fitness < 30 THEN fitness$ = "mittel"
IF fitness > 29 AND fitness < 40 THEN fitness$ = "gut"
IF fitness > 39 AND fitness < 50 THEN fitness$ = "sehr gut"
IF fitness > 49 THEN fitness$ = "weltklasse"
IF fitness > 99 THEN fitness = 99
IF schuss < 10 THEN schuss$ = "sehr schwach"
IF schuss > 9 AND schuss < 20 THEN schuss$ = "schwach"
IF schuss > 19 AND schuss < 30 THEN schuss$ = "mittel"
IF schuss > 29 AND schuss < 40 THEN schuss$ = "gut"
IF schuss > 39 AND schuss < 50 THEN schuss$ = "sehr gut"
IF schuss > 49 THEN schuss$ = "weltklasse"
IF fitness > 99 THEN fitness = 99
IF tempo < 10 THEN tempo$ = "sehr schwach"
IF tempo > 9 AND tempo < 20 THEN tempo$ = "schwach"
IF tempo > 19 AND tempo < 30 THEN tempo$ = "mittel"
IF tempo > 29 AND tempo < 40 THEN tempo$ = "gut"
IF tempo > 39 AND tempo < 50 THEN tempo$ = "sehr gut"
IF tempo > 49 THEN tempo$ = "weltklasse"
IF tempo > 99 THEN tempo = 99
IF erfahrung < 10 THEN erfahrung$ = "sehr schwach"
IF erfahrung > 9 AND erfahrung < 20 THEN erfahrung$ = "schwach"
IF erfahrung > 19 AND erfahrung < 30 THEN erfahrung$ = "mittel"
IF erfahrung > 29 AND erfahrung < 40 THEN erfahrung$ = "gut"
IF erfahrung > 39 AND erfahrung < 50 THEN erfahrung$ = "sehr gut"
IF erfahrung > 49 THEN erfahrung$ = "weltklasse"
IF erfahrung > 99 THEN erfahrung = 99
IF passpiel < 10 THEN passpiel$ = "sehr schwach"
IF passpiel > 9 AND passpiel < 20 THEN passpiel$ = "schwach"
IF passpiel > 19 AND passpiel < 30 THEN passpiel$ = "mittel"
IF passpiel > 29 AND passpiel < 40 THEN passpiel$ = "gut"
IF passpiel > 39 AND passpiel < 50 THEN passpiel$ = "sehr gut"
IF passpiel > 49 THEN passpiel$ = "weltklasse"
IF passpiel > 99 THEN passpiel = 99
IF ausdauer < 10 THEN ausdauer$ = "sehr schwach"
IF ausdauer > 9 AND ausdauer < 20 THEN ausdauer$ = "schwach"
IF ausdauer > 19 AND ausdauer < 30 THEN ausdauer$ = "mittel"
IF ausdauer > 29 AND ausdauer < 40 THEN ausdauer$ = "gut"
IF ausdauer > 39 AND ausdauer < 50 THEN ausdauer$ = "sehr gut"
IF ausdauer > 49 THEN ausdauer$ = "weltklasse"
IF passpiel > 99 THEN passpiel = 99
END SUB

SUB test
SHARED prozent, moral, schuss, fitness, stunde, minute
CLS
SCREEN 9
LINE (50, 200)-(75, 60), 8, BF
LINE (50, 60)-(600, 75), 8, BF
LINE (575, 60)-(600, 200), 8, BF
CIRCLE (320, 103), 15, 14
LINE (318, 115)-(322, 120), 14, BF
LINE (300, 120)-(340, 160), 7, BF
LINE (300, 120)-(270, 130), 7, BF
LINE (340, 120)-(370, 130), 7, BF
LINE (300, 160)-(318, 175), 8, BF
LINE (322, 160)-(340, 175), 8, BF
LINE (300, 160)-(340, 165), 8, BF
LINE (337, 175)-(324, 190), 7, B
LINE (315, 175)-(303, 190), 7, B
LINE (295, 190)-(315, 200), 8, BF
LINE (345, 190)-(324, 200), 8, BF
CIRCLE (325, 320), 20, 1
LOCATE 17, 1
PRINT " Dein Trainer hat dich vom Training befreit und mîchte statt dessen deine"
PRINT " TorschÅsse prÅfen. Du hast 10 SchÅsse. Dein Trainer verlangt 6 davon zu ver -"
PRINT " senken."
SLEEP 0
ab = 320
ac = 325
ad = 300
schuss = 0
tor = 0
LINE (0, 210)-(640, 350), 0, BF
GOTO 20
DO
GOTO 26
20 LOCATE 1, 1
INPUT " In welche Ecke mîchtest du schie·en ( l / m / r ) ? ", ecke$
RANDOMIZE TIMER
a% = INT(RND * 3) + 1
26 IF ecke$ = "l" THEN
   GOTO 21
ELSEIF ecke$ = "m" THEN
   GOTO 22
ELSEIF ecke$ = "r" THEN
   GOTO 23
ELSE
   GOTO 20
END IF
21 ac = ac - 7.5
   ab = ab - 5
   CIRCLE (ac + 7.5, ab + 5), 20, 0
   CIRCLE (ac, ab), 20, 1
   IF ab = 170 THEN GOTO 24
   GOTO 25
22 ab = ab - 5
   CIRCLE (325, ab + 5), 20, 0
   CIRCLE (325, ab), 20, 1
   IF ab = 170 THEN GOTO 24
   GOTO 25
23 ac = ac + 7.5
   ab = ab - 5
   CIRCLE (ac - 7.5, ab + 5), 20, 0
   CIRCLE (ac, ab), 20, 1
   IF ab = 170 THEN GOTO 24
   GOTO 25
25
LOCATE 20, 1
PRINT schuss
IF a% = 2 THEN GOTO 27
IF a% = 1 THEN
ad = ad - 6.5
CIRCLE (ad + 26.5, 103), 15, 0
LINE (ad + 24.5, 115)-(ad + 28.5, 120), 0, BF
LINE (ad + 6.5, 120)-(ad + 46.5, 160), 0, BF
LINE (ad + 6.5, 120)-(ad - 23.5, 130), 0, BF
LINE (ad + 46.5, 120)-(ad + 76.5, 130), 0, BF
LINE (ad + 6.5, 160)-(ad + 24.5, 175), 0, BF
LINE (ad + 28.5, 160)-(ad + 46.5, 175), 0, BF
LINE (ad + 6.5, 160)-(ad + 46.5, 165), 0, BF
LINE (ad + 43.5, 175)-(ad + 30.5, 190), 0, B
LINE (ad + 21.5, 175)-(ad + 9.5, 190), 0, B
LINE (ad + 1.5, 190)-(ad + 21.5, 200), 0, BF
LINE (ad + 51.5, 190)-(ad + 30.5, 200), 0, BF
ELSEIF a% = 3 THEN
ad = ad + 6.5
CIRCLE (ad + 13.5, 103), 15, 0
LINE (ad + 11.5, 115)-(ad + 15.5, 120), 0, BF
LINE (ad - 6.5, 120)-(ad + 33.5, 160), 0, BF
LINE (ad - 6.5, 120)-(ad - 36.5, 130), 0, BF
LINE (ad + 33.5, 120)-(ad + 63.5, 130), 0, BF
LINE (ad - 6.5, 160)-(ad + 11.5, 175), 0, BF
LINE (ad + 15.5, 160)-(ad + 33.5, 175), 0, BF
LINE (ad - 6.5, 160)-(ad + 33.5, 165), 0, BF
LINE (ad + 30.5, 175)-(ad + 17.5, 190), 0, B
LINE (ad + 8.5, 175)-(ad - 3.5, 190), 0, B
LINE (ad - 11.5, 190)-(ad + 8.5, 200), 0, BF
LINE (ad + 38.5, 190)-(ad + 17.5, 200), 0, BF
END IF
27 CIRCLE (ad + 20, 103), 15, 14
LINE (ad + 18, 115)-(ad + 22, 120), 14, BF
LINE (ad, 120)-(ad + 40, 160), 7, BF
LINE (ad, 120)-(ad - 30, 130), 7, BF
LINE (ad + 40, 120)-(ad + 70, 130), 7, BF
LINE (ad, 160)-(ad + 18, 175), 8, BF
LINE (ad + 22, 160)-(ad + 40, 175), 8, BF
LINE (ad, 160)-(ad + 40, 165), 8, BF
LINE (ad + 37, 175)-(ad + 24, 190), 7, B
LINE (ad + 15, 175)-(ad + 3, 190), 7, B
LINE (ad - 5, 190)-(ad + 15, 200), 8, BF
LINE (ad + 45, 190)-(ad + 24, 200), 8, BF
GOTO 30
24
   LOCATE 20, 1
   PRINT schuss
   SLEEP 2
   CLS
   SCREEN 9
   LINE (50, 200)-(75, 60), 8, BF
   LINE (50, 60)-(600, 75), 8, BF
   LINE (575, 60)-(600, 200), 8, BF
   CIRCLE (320, 103), 15, 14
   LINE (318, 115)-(322, 120), 14, BF
   LINE (300, 120)-(340, 160), 7, BF
   LINE (300, 120)-(270, 130), 7, BF
   LINE (340, 120)-(370, 130), 7, BF
   LINE (300, 160)-(318, 175), 8, BF
   LINE (322, 160)-(340, 175), 8, BF
   LINE (300, 160)-(340, 165), 8, BF
   LINE (337, 175)-(324, 190), 7, B
   LINE (315, 175)-(303, 190), 7, B
   LINE (295, 190)-(315, 200), 8, BF
   LINE (345, 190)-(324, 200), 8, BF
   schuss = schuss + 1
   CIRCLE (325, 320), 20, 1
   IF a% = 1 AND ecke$ = "m" OR a% = 1 AND ecke$ = "r" THEN tor = tor + 1
   IF a% = 1 AND ecke$ = "l" THEN tor = tor + 0
   IF a% = 2 AND ecke$ = "l" OR a% = 2 AND ecke$ = "r" THEN tor = tor + 1
   IF a% = 2 AND ecke$ = "m" THEN tor = tor + 0
   IF a% = 3 AND ecke$ = "l" OR a% = 3 AND ecke$ = "m" THEN tor = tor + 1
   IF a% = 3 AND ecke$ = "r" THEN tor = tor + 0
   PRINT "Von"; schuss; "SchÅssen"; tor; "verwandelt."
   SLEEP 2
ab = 320
ac = 325
ad = 300
   IF schuss = 10 THEN
    GOTO 29
   ELSE
    GOTO 30
   END IF

GOTO 20
29 IF tor < 6 THEN prozent = prozent - 20: moral = moral - 1: GOTO 31
   IF tor > 5 THEN prozent = prozent + 20: moral = moral + 1: GOTO 32
30 SOUND 32000, 1
LOOP
31 COLOR 4
   PRINT "Du hast es nicht geschafft."
   PRINT "Du Chancen auf deinen Spieleinsatz am Samstag fallen."
   GOTO 33
32 COLOR 10
   PRINT "Du hast deinen Trainer beeindruckt."
   PRINT "Deinen Chancen auf`n Stammplatz steigen gewaltig."
33 schuss = schuss + 2
   fitness = fitness + 1
   IF wochentag = 1 THEN stunde = 17: minute = 30
   IF wochentag = 3 THEN stunde = 17: minute = 1
   IF wochentag = 5 THEN stunde = 20: minute = 1
   CALL menue
END SUB

SUB training
staerke
SHARED tag, stunde, minute, moral, fitness, schuss, tempo, erfahrung, passpiel, ausdauer
SHARED moral$, fitness$, schuss$, tempo$, erfahrung$, passpiel$, ausdauer$, prozent
SHARED vorfall, wochentag, zusp
IF zusp > 0 THEN GOTO 4
IF tag = 2 OR tag = 4 OR tag = 6 OR tag = 7 THEN
7  CLS
   COLOR 10
   LINE (180, 150)-(470, 170), 4, B
   LOCATE 12, 30
   PRINT "Heute ist kein Training"
   SLEEP 4
   CALL raus
ELSEIF tag = 1 AND stunde < 15 OR tag = 3 AND stunde < 15 OR tag = 5 AND stunde < 17 THEN
   CLS
   COLOR 10
   LINE (180, 150)-(470, 170), 4, B
   LOCATE 12, 30
   PRINT "Training beginnt erst spÑter"
   SLEEP 4
   CALL raus
ELSEIF tag = 1 AND stunde > 15 AND stunde < 17 OR tag = 3 AND stunde > 15 AND stunde < 17 OR tag = 5 AND stunde > 17 AND stunde < 21 AND minute < 1 THEN
   CLS
   CALL zuspaet
ELSEIF tag = 1 AND stunde > 16 AND minute > 29 OR tag = 3 AND stunde > 16 OR tag = 5 AND stunde > 19 THEN
   CLS
   PRINT "Das Training ist bereits beendet. Solltest du heute nicht da gewesen sein"
   PRINT "wÅrde ich mir echt Sorgen machen."
   SLEEP 0
   CALL raus
ELSE GOTO 4
END IF
4
CLS
SCREEN 9
COLOR 10
spielfeld$ = "NR320G150R470U150"
DRAW "C10 X" + VARPTR$(spielfeld$)
kreidelinien$ = "BL80F50L200E50BR50BD30L3"
DRAW "C15 X" + VARPTR$(kreidelinien$)
tor$ = "BR3BU30BL45U30R90D30R2U32L94D32E10NU20R70NU20F10BL233U20"
DRAW "C8 X" + VARPTR$(tor$)
fahne$ = "G4F4"
DRAW "C4 X" + VARPTR$(fahne$)
LOCATE 2, 3
PRINT " Das Training beginnt gleich !"
i = 20
DO UNTIL i > 200
RANDOMIZE TIMER
a% = INT(RND * 4) + 1
i = i + a%
LINE (19, 40)-(201, 60), 4, BF
LINE (20, 41)-(i, 59), 14, BF
SOUND 32000, 1
LOOP
CLS
SCREEN 9
LINE (400, 20)-(630, 280), 5, B
LOCATE 3, 52
PRINT " Trainingsverlauf "
LOCATE 5, 52
PRINT "Einlaufen  ( 10 Min. )"
LOCATE 6, 52
PRINT "Dehnung    (  5 Min. )"
LOCATE 7, 52
PRINT "Dribbling  ( 15 Min. )"
LOCATE 8, 52
PRINT "Passpiel   ( 15 Min. )"
LOCATE 9, 52
PRINT "Schu·      ( 15 Min. )"
LOCATE 10, 52
PRINT "Sprint     ( 10 Min. )"
LOCATE 11, 52
PRINT "Taktik     ( 20 Min. )"
LOCATE 12, 52
PRINT "Auslaufen  (  5 Min. )"
LINE (120, 57)-(370, 67), 4, B
LINE (120, 84)-(370, 94), 4, B
LINE (120, 111)-(370, 121), 4, B
LINE (120, 140)-(370, 150), 4, B
LINE (120, 169)-(370, 179), 4, B
LINE (120, 196)-(370, 206), 4, B
LINE (120, 225)-(370, 235), 4, B
LOCATE 5, 1
PRINT " Moral "
LOCATE 7, 1: PRINT " Fitness "
LOCATE 9, 1: PRINT " Schuss "
LOCATE 11, 1: PRINT " Tempo "
LOCATE 13, 1: PRINT " Erfahrung "
LOCATE 15, 1: PRINT " Passpiel "
LOCATE 17, 1: PRINT " Ausdauer "
hour = 0
minute = 0
DO UNTIL hour = 1 AND minute = 35
minute = minute + 1
IF minute = 60 THEN minute = 0: hour = 1
LOCATE 1, 2
COLOR 15
PRINT hour; ":"; minute
LINE (5, 0)-(70, 20), 2, B
LINE (120, 57)-(320, 67), 4, B: LINE (121, 58)-(moral * 2 + 121, 66), 14, BF
LINE (120, 84)-(320, 94), 4, B: LINE (121, 85)-(fitness * 2 + 121, 93), 14, BF
LINE (120, 111)-(320, 121), 4, B: LINE (121, 112)-(schuss * 2 + 121, 120), 14, BF
LINE (120, 140)-(320, 150), 4, B: LINE (121, 141)-(tempo * 2 + 121, 149), 14, BF
LINE (120, 169)-(320, 179), 4, B: LINE (121, 170)-(erfahrung * 2 + 121, 178), 14, BF
LINE (120, 196)-(320, 206), 4, B: LINE (121, 197)-(passpiel * 2 + 121, 205), 14, BF
LINE (120, 225)-(320, 235), 4, B: LINE (121, 226)-(ausdauer * 2 + 121, 234), 14, BF
IF minute < 11 AND hour = 0 THEN COLOR 4: ausdauer = ausdauer + .3 ELSE COLOR 15
LOCATE 5, 52
PRINT "Einlaufen"
IF minute > 10 AND minute < 16 AND hour = 0 THEN COLOR 4: fitness = fitness + .2 ELSE COLOR 15
LOCATE 6, 52
PRINT "Dehnung"
IF minute > 15 AND minute < 31 AND hour = 0 THEN COLOR 4: fitness = fitness + .2 ELSE COLOR 15
LOCATE 7, 52
PRINT "Dribbling"
IF minute > 30 AND minute < 46 AND hour = 0 THEN COLOR 4: passpiel = passpiel + .2 ELSE COLOR 15
LOCATE 8, 52
PRINT "Passpiel"
IF minute > 45 AND hour = 0 THEN COLOR 4: schuss = schuss + .3 ELSE COLOR 15
LOCATE 9, 52
PRINT "Schu·"
IF minute < 11 AND hour = 1 THEN COLOR 4: tempo = tempo + .2 ELSE COLOR 15
LOCATE 10, 52
PRINT "Sprint"
IF minute > 10 AND minute < 31 AND hour = 1 THEN COLOR 4: erfahrung = erfahrung + .2 ELSE COLOR 15
LOCATE 11, 52
PRINT "Taktik"
IF minute > 30 AND minute < 51 AND hour = 1 THEN COLOR 4: ausdauer = ausdauer + .3 ELSE COLOR 15
LOCATE 12, 52
PRINT "Auslaufen"
SOUND 32000, 12
RANDOMIZE TIMER
vorfall% = INT(RND * 500) + 1
IF vorfall% = 22 THEN verletzung
IF vorfall% = 23 THEN pruegel


LOOP
prozent = prozent + ausdauer
IF wochentag = 1 THEN stunde = 17: minute = 30
IF wochentag = 3 THEN stunde = 17: minute = 1
IF wochentag = 5 THEN stunde = 20: minute = 1
zusp = 0
raus
END SUB

SUB unpuenktlich
SHARED arrest
CLS
SCREEN 9
LINE (100, 20)-(540, 320), 7, B
LOCATE 1, 36
COLOR 4
PRINT "POST"
COLOR 15
LOCATE 4, 15
PRINT "Sehr geehrte Eltern, "
LOCATE 6, 15
PRINT "Leider muss ich ihnen mitteilen, da· ihr Sohn "
LOCATE 7, 15
PRINT "in dieser Woche"; zusp; "mal zu spÑt zum Unterricht"
LOCATE 8, 15
PRINT "kam. Sollte sich dieser Vorfall wiederholen, bin ich"
LOCATE 9, 15
PRINT "gezwungen ihrem Sohn nîtige zusÑtzliche Hausaufgaben"
LOCATE 10, 15
PRINT "zu geben, um so den entgangenen Unterrichtsstoff auf -"
LOCATE 11, 15
PRINT "zuarbeiten. Sprechen sie mit ihrem Sohn darÅber."
LOCATE 13, 40
PRINT "Mit freundl. GrÅssen"
LOCATE 15, 40
PRINT "Frau Zkhalizarge"
LOCATE 23, 1
PRINT "--> TASTE"
SLEEP 0
B = 640
d = 350
DO UNTIL a = 320
a = a + 2
B = B - 2
c = c + 1.5
d = d - 1.5
LINE (0, 0)-(a, 350), 8, BF
LINE (640, 0)-(B, 350), 8, BF
LINE (0, 0)-(640, c), 8, BF
LINE (640, 350)-(0, d), 8, BF
SOUND 32000, 1
LOOP
SLEEP 1
LOCATE 2, 1
PRINT "Deine Eltern sind empoert und du darfst bis Mittwoch nicht zum "
PRINT "Training. Logisch, da· das an deine Moral geht. "
LOCATE 5, 1
PRINT "--> TASTE"
SLEEP 0
moral = moral - 2
arrest = 1
CALL menue

END SUB

SUB verletzung
SHARED moral, fitness, ausdauer, vorfall
IF vorfall > 0 THEN GOTO 5555
CLS
LOCATE 1, 2
PRINT " Du hast dir mitten im Training das Bein verdreht. Deine Moral ist im Arsch"
PRINT " und deine Form sinkt. Das hei·t noch mehr ackern. "
SLEEP 0
moral = moral - 7
fitness = fitness - 7
ausdauer = ausdauer - 3
vorfall = vorfall + 1
5555
CLS
SCREEN 9
LINE (400, 20)-(630, 280), 5, B
LOCATE 3, 52
PRINT " Trainingsverlauf "
LOCATE 5, 52
PRINT "Einlaufen  ( 10 Min. )"
LOCATE 6, 52
PRINT "Dehnung    (  5 Min. )"
LOCATE 7, 52
PRINT "Dribbling  ( 15 Min. )"
LOCATE 8, 52
PRINT "Passpiel   ( 15 Min. )"
LOCATE 9, 52
PRINT "Schu·      ( 15 Min. )"
LOCATE 10, 52
PRINT "Sprint     ( 10 Min. )"
LOCATE 11, 52
PRINT "Taktik     ( 20 Min. )"
LOCATE 12, 52
PRINT "Auslaufen  (  5 Min. )"
LINE (120, 57)-(370, 67), 4, B
LINE (120, 84)-(370, 94), 4, B
LINE (120, 111)-(370, 121), 4, B
LINE (120, 140)-(370, 150), 4, B
LINE (120, 169)-(370, 179), 4, B
LINE (120, 196)-(370, 206), 4, B
LINE (120, 225)-(370, 235), 4, B
LOCATE 5, 1
PRINT " Moral "
LOCATE 7, 1: PRINT " Fitness "
LOCATE 9, 1: PRINT " Schuss "
LOCATE 11, 1: PRINT " Tempo "
LOCATE 13, 1: PRINT " Erfahrung "
LOCATE 15, 1: PRINT " Passpiel "
LOCATE 17, 1: PRINT " Ausdauer "

END SUB

SUB zimmer

END SUB

SUB zuspaet
SHARED stunde, minute, tag, monat, jahr, moral, schuss, fitness, tempo, erfahrung, passpiel, ausdauer
SHARED prozent, zusp
CLS
SCREEN 9
LINE (180, 150)-(470, 170), 4, B
LOCATE 12, 30
PRINT "Auwei, du bist zu spÑt !!!"
SLEEP 0
CLS
SCREEN 9
COLOR 10
spielfeld$ = "NR320G150R470U150"
DRAW "C10 X" + VARPTR$(spielfeld$)
kreidelinien$ = "BL80F50L200E50BR50BD30L3"
DRAW "C15 X" + VARPTR$(kreidelinien$)
tor$ = "BR3BU30BL45U30R90D30R2U32L94D32E10NU20R70NU20F10BL233U20"
DRAW "C8 X" + VARPTR$(tor$)
fahne$ = "G4F4"
DRAW "C4 X" + VARPTR$(fahne$)
COLOR 4
LOCATE 1, 1
IF minute > 9 THEN PRINT " Zeit : "; stunde; ":"; minute; "   Datum : "; tag; "."; monat; "."; jahr
IF minute < 10 THEN PRINT " Zeit : "; stunde; ": 0"; minute; "   Datum :"; tag; "."; monat; "."; jahr
3 LOCATE 2, 1
PRINT "Deine Ausrede, bitte ( dein Trainer ist ECHT sauer )!!! :"
LOCATE 4, 1
COLOR 15
PRINT " 1, Ich, Ich ... Ñh .., mein Bus kam zu spÑt. "
PRINT " 2, éh, meine Uhr ging falsch. "
PRINT " 3, Waaas ??? Ich bin zu spÑt ??? "
PRINT " 4, Tut mir leid, Ich ... Ñh ... kann nichts dafÅr. "
PRINT " 5, Leck mich. Denkst wohl ick halt mich an deine Regeln ! "
LOCATE 10, 1
INPUT ; eingabe$
IF eingabe$ = "" THEN GOTO 3
IF eingabe$ = "1" THEN
    LOCATE 12, 1
    COLOR 15
    PRINT " Hier fÑhrt kein Bus. FÅr LÅgen"
    PRINT " hat dein Trainer nicht Åbrig. "
    PRINT " Das Training kannst du vergessen"
    PRINT " und fÅr deinen Einsatz im Punkt -"
    PRINT " spiel sieht es sehr schlecht aus "
    PRINT "           >TASTE<"
    prozent = prozent - 25
    moral = moral - 1
    fitness = fitness - 1
    schuss = schuss - 1
    passpiel = passpiel - 1

    SLEEP 0
ELSEIF eingabe$ = "2" THEN
    PRINT " Und das soll ich dir glauben ?"
    PRINT " Frecher Bengel ! FÅr solche Aus -"
    PRINT " reden sollte man erschossen wer -"
    PRINT " den. Du darfst nach Hause gehen und"
    PRINT " nochmal Åber das nachdenken, was du"
    PRINT " gesagt hast. TschÅss !!!"
    PRINT "           >TASTE<"
    SLEEP 0
    prozent = prozent - 1
    schuss = schuss - 1
    fitness = fitness - 1
    passpiel = passpiel - 1
    moral = moral - 1
ELSEIF eingabe$ = "3" THEN
    PRINT " Jawohl, und dafÅr wirst du schnell"
    PRINT " nach Hause gehen und nÑchstes Mal"
    PRINT " pÅnktlich erscheinen. "
    PRINT "           >TASTE<"
    SLEEP 0
    prozent = prozent - 1
    moral = moral - 1
    schuss = schuss - 1
    fitness = fitness - 1
    passpiel = passpiel - 1
ELSEIF eingabe$ = "4" THEN
    PRINT " Wer dann ? Beim nÑchsten Mal drÅcke"
    PRINT " ich kein Auge mehr zu. "
    PRINT "           >TASTE<"
    SLEEP 0
    moral = moral - 1
    prozent = prozent - 10
    zusp = zusp + 1
    CALL training
    
ELSEIF eingabe$ = "5" THEN
    PRINT " Ich glaub mich ..., was zum Teufel .."
    PRINT " Wie, ... Wie drÅckst du dich aus ."
    PRINT " DU BIST RAUS, RAUS, RAUS !!!!!!!!!!!!"
    PRINT " Und la· dich hier nie wieder blicken."
    PRINT "            >TASTE<"
    SLEEP 0
    prozent = 0
    moral = moral - 5
END IF
raus


END SUB

