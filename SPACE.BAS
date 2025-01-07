ON ERROR GOTO 3000
10 SCREEN 7
SCREEN 8: CLEAR
15 RESTORE
KEY OFF: BOMB$ = "c14 r1 u1 c4 u4 c14 l1 d1 c4 d3 u1 l1 c14 u2 r1 c4 r2 c14 d3 c0 d2 l1 c9 l1": NX = 150: NY = 315
BOMBE$ = "r1 u1 u4 l1 d1 d3 u1 l1 u2 r1 r2 d3 d2 l1 l1"
CLS : COLOR 1
LOCATE 5, 1
PRINT "      █████████▒░ ████████▒░      █████▒░       █████████▒░  █████████▒░"
PRINT "     ███▒░        ██▒░    █▒░    ██▒░ ██▒░     ██▒░          ██▒"
PRINT "      ███▒░       ██▒░    █▒░   ██▒░   ██▒░   ██▒░           ██▒"
PRINT "       ███▒░      ████████▒░   ██▒░     ██▒░  ██▒░           ██▒"
PRINT "        ███▒░     ██▒░         ███████████▒░  ██▒░           █████████▒░"
PRINT "         ███▒░    ██▒░         ██▒░     ██▒░  ██▒░           ██▒░"
PRINT "          ███▒░   ██▒░         ██▒░     ██▒░  ██▒░           ██▒░"
PRINT "           ███▒░  ██▒░         ██▒░     ██▒░   ██▒░          ██▒░"
PRINT "    █████████▒░   ██▒░         ██▒░     ██▒░    █████████▒░  █████████▒░"
PRINT : PRINT
PRINT "                             │      │     ├─┬─┐"
PRINT "                             │      │     │ │ │"
PRINT "                         └───┘      │     │ │ │": PRINT : PRINT
PRINT "                           NTOULAS      Company ": PRINT
PRINT "                              (c)  1992-94"
200 IN$ = INKEY$
IF IN$ = "" THEN GOTO 200
IF IN$ = CHR$(27) THEN END
SCREEN 7, 0, 1, 0
CIRCLE (40, 30), 10, 1
CIRCLE (45, 60), 5, 1
CIRCLE (300, 20), 2, 1
CIRCLE (280, 50), 20, 6
CIRCLE (230, 20), 4, 6
CIRCLE (220, 70), 10, 5
LINE (210, 60)-(230, 80), 1
LINE (230, 60)-(210, 80), 1
FOR X = 0 TO 50
PSET (RND * 320, RND * 100), 14
PSET (RND * 320, RND * 100), 4
RANDOMIZE TIMER
NEXT X
X = 160: Y = 50: R = 40
CIRCLE (X, Y), R, 2, , , .035
FOR I = 1 TO 5
CIRCLE (X, Y), R, 2, , , I * .1
NEXT I
CIRCLE (X, Y), R, 2, , , .65
CIRCLE (X, Y), R, 2, , , .95
CIRCLE (X, Y), R, 2, , , 1.8
CIRCLE (X, Y), R, 2, , , 4.9
SCREEN , , 1, 1: COLOR 2
SCOD = 12: SCOD2 = 12: SCOD3 = 12: SCOD4 = 12: SCOD5 = 12: liv = 3: LI = 3: LI2 = 2
FOR X = 0 TO 35
LOCATE 13, LI: READ RD$: PRINT RD$: PLAY "e16": IF LI = 12 OR LI = 25 THEN PLAY "c12"
LI = LI + 1
IF INKEY$ <> "" THEN GOTO 550
NEXT X
FOR X = 35 TO 72
LOCATE 15, LI2: READ RD$: PRINT RD$: PLAY "e16": IF LI2 = 12 OR LI2 = 25 THEN PLAY "c12"
IF INKEY$ <> "" THEN GOTO 550
LI2 = LI2 + 1
NEXT X
550 LOCATE 13, 3: PRINT "Σε μερικούς πλανήτες έχουν εισβάλει"
LOCATE 15, 2: PRINT "εξωγήινοι πρέπει να τους εξουδετερώσεις"
DATA "Σ","ε"," ","μ","ε","ρ","ι","κ","ο","ύ","ς"," ","π","λ","α","ν","ί","τ","ε","ς"," ","έ","χ","ο","υ","ν"," ","ε","ι","σ","β","ά","λ","ε","ι"," "
DATA "ε","ξ","ω","γ","ή","ι","ν","ο","ι"," ","π","ρ","έ","π","ε","ι"," ","ν","α"," ","τ","ο","υ","ς"," ","ε","ξ","ο","υ","δ","ε","τ","ε","ρ","ώ","σ","η","ς"
580 PLAY "c4": SOUND 19000, 5: LOCATE 19, 6: INPUT "Πιλότε δώσε τo όνoμά σoυ ", NAM$
IF NAM$ = "" THEN GOTO 580
IF LEN(NAM$) >= 8 THEN LOCATE 23, 12: PRINT "Μέχρι 7 χαρακτήρες": LOCATE 19, 30: PRINT "           ": GOTO 580
SCORE = 0: FIR = 0: FIR2 = 0: FIR3 = 0: FIR4 = 0: FIR5 = 0: PLANIT = 0
PPLAN = 0: CH$ = "": EXRS = 0: SCORE1 = 0
IF PLANIT = 0 THEN DIM d(69)
620 PLANIT = PLANIT + 1: NY = 315: NX = 150
PPLAN = PPLAN - 1
FOR X = 0 TO 69
d(X) = 9
NEXT X
CLS : SCREEN 8, , 1, 0: N = 33: WINDOW SCREEN (0, 0)-(639, 199)
FOR X = 0 TO 100
RANDOMIZE TIMER
PSET (RND * 640, RND * 200), 14
PSET (RND * 640, RND * 200), 4
PSET (RND * 640, RND * 200), 15
NEXT X
SCREEN , , 1, 1
FOR X = 50 TO 590 STEP 4
LINE (320, 20)-(X, 70), 2
NEXT X
COLOR 1: LOCATE 3, 38: PRINT "╔════╗": Z = 10: C = 25: V = 40: B = 55: M = 70: COLOR 7: NL$ = CHR$(1) + " "
COLOR 4: LOCATE 1, 68: PRINT "SCORE"; SCORE: COLOR 7: SAV = 19
WHILE CH$ <> CHR$(27) OR LIF <> 0
COLOR 4: LOCATE 10, Z: PRINT " \ / "
LOCATE 11, Z: PRINT "  O  "
LOCATE 12, Z: PRINT " / \ ": FIR = FIR + 1: IF PLANIT = 1 THEN GOTO 930
LOCATE 10, C: PRINT " \ / "
LOCATE 11, C: PRINT "  O  "
LOCATE 12, C: PRINT " / \ ": FIR2 = FIR2 + 1: IF PLANIT = 2 THEN GOTO 930
LOCATE 10, V: PRINT " \ / "
LOCATE 11, V: PRINT "  O  "
LOCATE 12, V: PRINT " / \ ": FIR3 = FIR3 + 1: IF PLANIT = 3 THEN GOTO 930
LOCATE 10, B: PRINT " \ / "
LOCATE 11, B: PRINT "  O  "
LOCATE 12, B: PRINT " / \ ": FIR4 = FIR4 + 1: IF PLANIT = 4 THEN GOTO 930
LOCATE 10, M: PRINT " \ / "
LOCATE 11, M: PRINT "  O  "
LOCATE 12, M: PRINT " / \ ": FIR5 = FIR5 + 1: IF PLANIT >= 5 THEN GOTO 930
930 IF FIR = 1 THEN H = Z: FIRS = FIR
IF FIR2 = 2 THEN H2 = C: FIRS2 = FIR2
IF FIR3 = 3 THEN H3 = V: FIRS3 = FIR3
IF FIR4 = 4 THEN H4 = B: FIRS4 = FIR4
IF FIR5 = 5 THEN H5 = M: FIRS5 = FIR5
CH$ = INKEY$
IF CH$ = CHR$(27) THEN GOTO 1660
IF CH$ = CHR$(8) THEN GOSUB 2420
IF CH$ = "<" OR CH$ = "," THEN IF N <> 1 THEN N = N - 2: SAV = SAV - 1: NY = NY - 16
IF CH$ = ">" OR CH$ = "." THEN IF N <> 63 THEN N = N + 2: SAV = SAV + 1: NY = NY + 16
IF MID$(CH$, 1, 1) = CHR$(0) THEN CH2$ = MID$(CH$, 2, 1): CH$ = ""
IF CH2$ = CHR$(75) THEN IF N <> 1 THEN N = N - 2: SAV = SAV - 1: NY = NY - 16: CH2$ = ""
IF CH2$ = CHR$(77) THEN IF N <> 63 THEN N = N + 2: SAV = SAV + 1: NY = NY + 16: CH2$ = ""
1020 IF CH$ = "p" OR CH$ = "P" THEN IF INKEY$ = "" THEN GOTO 1020 ELSE GOTO 1030
1030 IF CH$ = CHR$(13) OR CH2$ = CHR$(80) THEN CH2$ = "": GOTO 1040 ELSE GOTO 1110
1040 stp = -4
FOR X = 21 TO d(SAV) + 2 STEP stp
PSET (NY, NX): DRAW BOMB$ + "d1 br16 u2" + BOMB$
PSET (NY, NX): DRAW "c0" + BOMBE$ + "d1 br16 u2" + BOMBE$
NX = NX + 8 * stp
NEXT X
LOCATE d(SAV), N + 7: PRINT "   ": SOUND 1000, 1: SOUND 2000, 1: NX = 150
IF d(SAV) > 2 THEN d(SAV) = d(SAV) - 1: IF d(SAV) < 9 THEN : EXRS = EXRS + 1: SCORE = SCORE + 10: LOCATE 1, 68: PRINT "SCORE"; SCORE
1110 IF Z = 75 THEN Z = 1: LOCATE 10, 75: PRINT "     ": LOCATE 11, 75: PRINT "     ": LOCATE 12, 75: PRINT "     " ELSE Z = Z + 1
IF C = 75 THEN C = 1: LOCATE 10, 75: PRINT "     ": LOCATE 11, 75: PRINT "     ": LOCATE 12, 75: PRINT "     " ELSE C = C + 1
IF V = 75 THEN V = 1: LOCATE 10, 75: PRINT "     ": LOCATE 11, 75: PRINT "     ": LOCATE 12, 75: PRINT "     " ELSE V = V + 1
IF B = 75 THEN B = 1: LOCATE 10, 75: PRINT "     ": LOCATE 11, 75: PRINT "     ": LOCATE 12, 75: PRINT "     " ELSE B = B + 1
IF M = 75 THEN M = 1: LOCATE 10, 75: PRINT "     ": LOCATE 11, 75: PRINT "     ": LOCATE 12, 75: PRINT "     " ELSE M = M + 1
COLOR 14: IF FIRS = 1 THEN LOCATE SCOD, H: PRINT " "
IF FIRS = 1 THEN LOCATE SCOD + 1, H: PRINT CHR$(25)
IF FIRS = 1 THEN SCOD = SCOD + 1
IF SCOD = 22 THEN FIRS = 0: FIR = 0: SCOD = 12: COLOR 4: IF H <> 1 THEN LOCATE 22, H - 1: PRINT "─ν─": LOCATE 22, H - 1: PRINT "   ": SOUND 37, 1
IF FIRS2 = 2 THEN LOCATE SCOD2, H2: PRINT " "
IF FIRS2 = 2 THEN LOCATE SCOD2 + 1, H2: PRINT CHR$(25)
IF FIRS2 = 2 THEN SCOD2 = SCOD2 + 1
IF SCOD2 = 22 THEN FIRS2 = 0: FIR2 = 0: SCOD2 = 12: COLOR 4: IF H2 <> 1 THEN LOCATE 22, H2 - 1: PRINT "─ν─": LOCATE 22, H2 - 1: PRINT "   ": SOUND 37, 1
IF FIRS3 = 3 THEN LOCATE SCOD3, H3: PRINT " "
IF FIRS3 = 3 THEN LOCATE SCOD3 + 1, H3: PRINT CHR$(25)
IF FIRS3 = 3 THEN SCOD3 = SCOD3 + 1
IF SCOD3 = 22 THEN FIRS3 = 0: FIR3 = 0: SCOD3 = 12: COLOR 4: IF H3 <> 1 THEN LOCATE 22, H3 - 1: PRINT "─ν─": LOCATE 22, H3 - 1: PRINT "   ": SOUND 37, 1
IF FIRS4 = 4 THEN LOCATE SCOD4, H4: PRINT " "
IF FIRS4 = 4 THEN LOCATE SCOD4 + 1, H4: PRINT CHR$(25)
IF FIRS4 = 4 THEN SCOD4 = SCOD4 + 1
IF SCOD4 = 22 THEN FIRS4 = 0: FIR4 = 0: SCOD4 = 12: COLOR 4: IF H4 <> 1 THEN LOCATE 22, H4 - 1: PRINT "─ν─": LOCATE 22, H4 - 1: PRINT "   ": SOUND 37, 1
IF FIRS5 = 5 THEN LOCATE SCOD5, H5: PRINT " "
IF FIRS5 = 5 THEN LOCATE SCOD5 + 1, H5: PRINT CHR$(25)
IF FIRS5 = 5 THEN SCOD5 = SCOD5 + 1
IF SCOD5 = 22 THEN FIRS5 = 0: FIR5 = 0: SCOD5 = 12: COLOR 4: IF H5 <> 1 THEN LOCATE 22, H5 - 1: PRINT "─ν─": LOCATE 22, H5 - 1: PRINT "   ": SOUND 37, 1
IF SPACECODE = 1 THEN GOTO 1410
IF SCOD = 21 THEN IF N + 1 < H AND N + 15 > H THEN liv = liv - 1: GOSUB 2380
IF SCOD2 = 21 THEN IF N + 1 < H2 AND N + 15 > H2 THEN liv = liv - 1: GOSUB 2380
IF SCOD3 = 21 THEN IF N + 1 < H3 AND N + 15 > H3 THEN liv = liv - 1: GOSUB 2380
IF SCOD4 = 21 THEN IF N + 1 < H4 AND N + 15 > H4 THEN liv = liv - 1: GOSUB 2380
IF SCOD5 = 21 THEN IF N + 1 < H5 AND N + 15 > H5 THEN liv = liv - 1: GOSUB 2380
1410 COLOR 7
LOCATE 21, N: PRINT "  ╔════╡ ╞════╗  "
LOCATE 22, N: PRINT "       │ │       "
LOCATE 23, N: PRINT "    ╔══╧╦╧══╗    "
IF d(17) = 2 OR d(18) = 2 THEN GOTO 1540
IF d(19) = 2 OR d(20) = 2 THEN GOTO 1540
COLOR 4: IF EXRS = 60 THEN EXRS = 0: liv = liv + 1: SOUND 500, 3: SOUND 600, 6: IF liv > lives THEN lives = liv
IF liv = 1 THEN LOCATE 1, 1: PRINT "LIVES "; NL$; "  "
IF liv = 2 THEN LOCATE 1, 1: PRINT "LIVES "; NL$; NL$; "  "
IF liv = 3 THEN LOCATE 1, 1: PRINT "LIVES "; NL$; NL$; NL$; "   "
IF liv > 3 THEN LOCATE 1, 1: PRINT "LIVES "; NL$; NL$; NL$; liv
IF liv = 0 THEN LOCATE 1, 1: PRINT "LIVES        ": GOTO 1660
WEND
1540 COLOR , 7
FOR N = 0 TO 200
RANDOMIZE TIMER
X = RND * 640: Y = RND * 200
LINE (320, 20)-(X, Y), 4: CIRCLE (X, Y), 2, 2: PSET (X, Y), 2
NEXT N
SCORE = SCORE + 50: EXRS = 0: COLOR , 0
COLOR 4: LOCATE 1, 68: PRINT "SCORE"; SCORE: COLOR 1
LOCATE 15, 29: PRINT "  Παίκτη "; NAM$; " σε ευχαριστούμε "
LOCATE 16, 27: PRINT "  που ελευθέρωσες τον πλανήτη μας "
LOCATE 17, 36: PRINT "  τον PLANIT"; PPLAN
1650 IF INKEY$ <> CHR$(32) THEN GOTO 1650 ELSE GOTO 620
1660 COLOR 8: LOCATE 5, 20
PRINT " ███████░   █████░   ██░   ██░  ███████░": LOCATE 6, 20
PRINT "██░        ██░  ██░  ███░ ███░  ██░     ": LOCATE 7, 20
PRINT "██░  ███░  ███████░  ██░██░██░  ███████░": LOCATE 8, 20
PRINT "███░  ██░  ██░  ██░  ██░   ██░  ██░     ": LOCATE 9, 20
PRINT " ██████░   ██░  ██░  ██░   ██░  ███████░": LOCATE 12, 20
PRINT " █████░  ██░    ██░  ████████░  ████████░": LOCATE 13, 20
PRINT "██░  ██░ ██░    ██░  ██░        ██     █░": LOCATE 14, 20
PRINT "██░  ██░ ██░    ██░  ████████░  ████████░": LOCATE 15, 20
PRINT "██░  ██░  ██░  ██░   ██░        ██░ ██░  ": LOCATE 16, 20
PRINT " █████░     ███░     ████████░  ██░   ██░"
FOR X = 0 TO 2000: NEXT X
CLS : SCREEN 0: WIDTH 40
LOCATE 1, 2: COLOR 1
PRINT "╔════════════════════╗"
FOR X = 2 TO 22
LOCATE X, 2: PRINT "║                    ║"
NEXT X
LOCATE 23, 2
PRINT "╚════════════════════╝"
OPEN "i", #1, "space.sco": COLOR 5: FG = 3
FOR X = 1 TO 10
INPUT #1, A, B$, d$
COLOR 2: LOCATE FG, 3: PRINT A
COLOR 14: LOCATE FG, 10: PRINT B$
COLOR 5: LOCATE FG + 1, 10: PRINT d$
FG = FG + 2
NEXT X
CLOSE
LOCATE 3, 25: COLOR 4: PRINT "Πιλότος  "; NAM$
LOCATE 5, 30: COLOR 14
PRINT "SCORE"
COLOR 2: LOCATE 6, 29: PRINT SCORE: FOR X = 0 TO 500: NEXT X: LOCATE 9, 26
PRINT "Ζωές 1000 *"; lives
LOCATE 10, 30: PRINT lives * 1000
LOCATE 18, 30: COLOR 14: SCORE1 = (lives * 1000)
PRINT "SCORE": COLOR 2
LOCATE 19, 29: PRINT SCORE: FOR X = 0 TO 500: NEXT X
SCORE = SCORE + SCORE1
LOCATE 19, 29: PRINT SCORE
OPEN "i", #1, "space.sco"
OPEN "o", #2, "space.hlp": CR = 1
FOR X = 1 TO 10
INPUT #1, A, B$, C$
IF SCORE > A AND CR = 1 THEN S = SCORE: TYP = 1 ELSE S = A
IF SCORE > A AND CR = 1 THEN N$ = NAM$: TYP = 1 ELSE N$ = B$
IF SCORE > A AND CR = 1 THEN d$ = DATE$: TYP = 1: CR = 0 ELSE d$ = C$
PRINT #2, S; ","; N$; ","; d$: IF TYP = 1 THEN PRINT #2, A; ","; B$; ","; C$: TYP = 0: X = X + 1
NEXT X
CLOSE
KILL "space.sco"
NAME "space.hlp" AS "space.sco"
OPEN "i", #1, "space.sco": COLOR 5: FG = 3
FOR X = 1 TO 10
INPUT #1, A, B$, d$
COLOR 2: LOCATE FG, 3: PRINT A
LOCATE FG, 10: PRINT "       "
COLOR 14: LOCATE FG, 10: PRINT B$
COLOR 5: LOCATE FG + 1, 10: PRINT d$
FG = FG + 2
NEXT X
CLOSE
2320 INK$ = INKEY$
IF INK$ = "" THEN GOTO 2320
IF INK$ = CHR$(32) THEN SCREEN 0: WIDTH 80: CLOSE : ERASE d: GOTO 10
IF INK$ = CHR$(27) THEN SCREEN 0: WIDTH 80: CLOSE : COLOR 7: SYSTEM
GOTO 2320
CLS : COLOR 7: SCREEN 0: WIDTH 80: SYSTEM
END
2380 FOR X = 0 TO 3
SOUND 40, 2: SOUND 37, 1
NEXT X
RETURN
2420 SPACE = 0
WHILE B$ = "" OR B$ = CHR$(10) OR B$ = CHR$(9) OR B$ = CHR$(13)
2430 B$ = INKEY$
IF B$ = "" THEN GOTO 2430
IF B$ = CHR$(10) THEN SPACE = SPACE + 1
IF B$ = CHR$(9) THEN SPACE = SPACE + 1
IF B$ = CHR$(13) THEN SPACE = SPACE + 1
WEND
IF SPACE = 3 THEN SPACECODE = 1 ELSE SPACE = 0
B$ = ""
RETURN
3000 SCREEN 0: WIDTH 80, 25: COLOR 15: BEEP
CLS : PRINT "Βρήκα ένα λάθος παρακάτω από ή στην γραμμή νούμερο "; ERL
IF ERR = 5 THEN PRINT "Δεν έχεις την κατάλληλη κάρτα γραφικών για να παίξεις το παιχνίδι.": END
IF ERR = 53 THEN PRINT "Λείπει το αρχείο SPACE.SCO.": END
PRINT "Υπάρχει κάποιο λάθος στο παιχνίδι και έτσι σταματάει ..."
END
